#include "poseidon.hpp"

// Modular addition: (a + b) % P
field_t mod_add(field_t a, field_t b) {
    static const field_t P = field_t(PRIME_HEX);
    field_t sum = a + b;
    if (sum >= P) sum -= P;
    return sum;
}

// Modular multiplication: (a * b) % P
// Note: 256-bit multiplication in HLS generates large DSP trees.
field_t mod_mul(field_t a, field_t b) {
    static const field_t P = field_t(PRIME_HEX);
    ap_uint<512> mul = (ap_uint<512>)a * b;
    return (field_t)(mul % P);
}

// S-Box Quintic: x^5 % P
field_t sbox_quintic(field_t x) {
    field_t x2 = mod_mul(x, x);
    field_t x4 = mod_mul(x2, x2);
    return mod_mul(x4, x);
}

void poseidon_top(
    hls::stream<axis_word>& in_stream,
    hls::stream<axis_word>& out_stream,
    field_t round_constants[TOTAL_ROUNDS * STATE_SIZE],
    field_t mds_matrix[STATE_SIZE][STATE_SIZE]
) {
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream
    #pragma HLS INTERFACE s_axilite port=return
    #pragma HLS INTERFACE m_axi port=round_constants offset=slave
    #pragma HLS INTERFACE m_axi port=mds_matrix offset=slave

    field_t state[STATE_SIZE];
    #pragma HLS ARRAY_PARTITION variable=state complete

    // 1. Absorb Phase (Read from AXI Stream)
    for (int i = 0; i < STATE_SIZE; i++) {
        #pragma HLS PIPELINE II=1
        axis_word val = in_stream.read();
        state[i] = val.data;
    }

    // 2. Permutation Phase
    int rc_idx = 0;
    permutation_loop: for (int r = 0; r < TOTAL_ROUNDS; r++) {
        
        // --- Round Constant Addition ---
        rc_add: for (int i = 0; i < STATE_SIZE; i++) {
            #pragma HLS UNROLL
            state[i] = mod_add(state[i], round_constants[rc_idx++]);
        }

        // --- S-Box Layer ---
        sbox_layer: for (int i = 0; i < STATE_SIZE; i++) {
            #pragma HLS UNROLL
            // Full rounds: all lanes; Partial rounds: lane 0 only
            if (r < (FULL_ROUNDS/2) || r >= (FULL_ROUNDS/2 + PARTIAL_ROUNDS)) {
                state[i] = sbox_quintic(state[i]);
            } else if (i == 0) {
                state[i] = sbox_quintic(state[i]);
            }
        }

        // --- MDS Mixing (Matrix Multiplication) ---
        field_t next_state[STATE_SIZE];
        #pragma HLS ARRAY_PARTITION variable=next_state complete
        
        mds_row: for (int i = 0; i < STATE_SIZE; i++) {
            #pragma HLS PIPELINE II=1  // This allows one row to be processed per clock
            field_t acc = 0;
            mds_col: for (int j = 0; j < STATE_SIZE; j++) {
                #pragma HLS UNROLL     // This parallelizes one row (24 multipliers)
                field_t prod = mod_mul(state[j], mds_matrix[i][j]);
                acc = mod_add(acc, prod);
            }
            next_state[i] = acc;
        }

        // Update state for next round
        for (int i = 0; i < STATE_SIZE; i++) {
            #pragma HLS UNROLL
            state[i] = next_state[i];
        }
    }

    // 3. Squeeze Phase (Write to AXI Stream)
    for (int i = 0; i < STATE_SIZE; i++) {
        #pragma HLS PIPELINE II=1
        axis_word out_val;
        out_val.data = state[i];
        out_val.last = (i == STATE_SIZE - 1);
        out_val.keep = 0xFFFFFFFF;
        out_stream.write(out_val);
    }
}