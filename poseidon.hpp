#ifndef POSEIDON_HPP
#define POSEIDON_HPP

#include <ap_int.h>
#include <hls_stream.h>
#include <ap_axi_sdata.h>

// BLS12-381 Scalar Field Prime
#define PRIME_HEX "0x73eda753299d7d483339d80809a1d80553bda402fffe5bfeffffffff00000001"
typedef ap_uint<256> field_t;

static const int STATE_SIZE = 24;
static const int FULL_ROUNDS = 8;
static const int PARTIAL_ROUNDS = 60;
static const int TOTAL_ROUNDS = FULL_ROUNDS + PARTIAL_ROUNDS;

// AXI Stream word (matching your reference WORD_BW)
struct axis_word {
    ap_uint<256> data;
    ap_uint<1> last;
    ap_uint<32> keep; // 256 bits = 32 bytes
};

// Top-level function
void poseidon_top(
    hls::stream<axis_word>& in_stream,
    hls::stream<axis_word>& out_stream,
    field_t round_constants[TOTAL_ROUNDS * STATE_SIZE],
    field_t mds_matrix[STATE_SIZE][STATE_SIZE]
);

#endif