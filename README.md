## Grader Notes / Files to Inspect

The main files to inspect are:

## Repository Contents

| File / Directory | Description |
|---|---|
| `poseidon.hpp` | Main type definitions, Poseidon parameters, AXI-stream word structure, and top-level function declaration |
| `poseidon.cpp` | HLS implementation of the Poseidon accelerator |
| `poseidon_tb.cpp` | C++ HLS testbench that drives AXI-stream input/output and writes hardware results |
| `golden_model.py` | Python golden model used to generate expected Poseidon results |
| `verify_results.py` | Python script that compares HLS output against the golden-model output |
| `generate_constants.py` | Script for generating Poseidon constants and/or test data |
| `data/` | Input constants and test cases for the HLS testbench |
| `run_hls.tcl` | Vitis HLS script for running C simulation and C synthesis |
| `hw_results.csv` | HLS C simulation output results |
| `poseidon_golden_results.csv` | Expected results from the Python golden model |
| `verification_output.txt` | Human-readable verification result showing all 20 test cases passing |
| `reports/csynth.rpt` | Vitis HLS C synthesis report |
| `plan.md` | Project planning and architecture notes |

This repository documents the IP interface, mathematical operations, dataflow, HLS architecture, verification methodology, synthesis results, and known limitations of the current implementation.

# Poseidon FPGA HLS Accelerator

## Project Overview

This project implements a Poseidon hash/permutation accelerator using Vitis HLS. Poseidon is a finite-field, sponge-based hash function commonly used in zero-knowledge proof systems. The design operates on a 24-lane internal state, where each lane is one 256-bit field element.

The accelerator reads a fixed-size input packet from an AXI4-Stream interface, loads the values into the 24-lane state, applies the Poseidon permutation, and writes the final state back through an AXI4-Stream output interface.

This implementation is a functional HLS prototype. It implements the core Poseidon operations and provides a C simulation / C synthesis flow. The current synthesis result shows that the design is functionally structured but not yet resource-efficient enough for the selected FPGA without further optimization.

---

## Slideshow

https://docs.google.com/presentation/d/1XDmXZic-o1c5l8FSwdZ2HijTtrAEK2o5sHdaej3uogw/edit?usp=sharing 

## Repository Contents

| File / Directory | Description |
|---|---|
| `poseidon.hpp` | Main type definitions, Poseidon parameters, AXI-stream word structure, and top-level function declaration |
| `poseidon.cpp` | HLS implementation of the Poseidon accelerator |
| `poseidon_tb.cpp` | C++ HLS testbench that drives AXI-stream input/output and writes hardware results |
| `golden_model.py` | Python golden model used to generate expected Poseidon results |
| `verify_results.py` | Python script that compares HLS output against the golden-model output |
| `generate_constants.py` | Script for generating Poseidon constants and/or test data |
| `data/` | Input constants and test cases for the HLS testbench |
| `run_hls.tcl` | Vitis HLS script for running C simulation and C synthesis |
| `hw_results.csv` | HLS C simulation output results |
| `poseidon_golden_results.csv` | Expected results from the Python golden model |
| `reports/csynth.rpt` | Vitis HLS C synthesis report |
| `plan.md` | Project planning and architecture notes |

---

## 1. IP Definition

The IP implements the Poseidon permutation over a 24-lane state of 256-bit field elements.

The computation has three high-level phases:

1. **Absorb phase**
   - Read 24 input words from the AXI4-Stream input.
   - Each input word is interpreted as one 256-bit field element.
   - These 24 words initialize the internal Poseidon state.

2. **Permutation phase**
   - Run the Poseidon round function for all full and partial rounds.
   - Each round performs round constant addition, an `x^5` S-box, and MDS matrix mixing.

3. **Squeeze/output phase**
   - Write the final 24-lane state to the AXI4-Stream output.
   - The full output packet contains all 24 final state lanes.

The design uses the BLS12-381 scalar-field prime:

```text
0x73eda753299d7d483339d80809a1d80553bda402fffe5bfeffffffff00000001
```

Each field element is represented in HLS as:

```cpp
typedef ap_uint<256> field_t;
```

The main Poseidon parameters are:

| Parameter | Value | Meaning |
|---|---:|---|
| `STATE_SIZE` | 24 | Number of 256-bit lanes in the Poseidon state |
| `FULL_ROUNDS` | 8 | Number of full rounds |
| `PARTIAL_ROUNDS` | 60 | Number of partial rounds |
| `TOTAL_ROUNDS` | 68 | Total number of Poseidon rounds |

---

## 2. Mathematical Operations

### Modular Addition

The modular addition operation is:

```text
(a + b) mod P
```

where `P` is the BLS12-381 scalar-field prime.

In the HLS design, this is used for round constant addition and MDS accumulation.

### Modular Multiplication

The modular multiplication operation is:

```text
(a * b) mod P
```

Since each input is 256 bits, the intermediate multiplication result is 512 bits wide:

```cpp
ap_uint<512> mul = (ap_uint<512>)a * b;
return (field_t)(mul % P);
```

This is simple and correct, but it is expensive in FPGA hardware because it creates large multiplier and modular-reduction logic.

### Quintic S-Box

Poseidon uses a quintic S-box:

```text
x^5 mod P
```

The implementation computes this as:

```text
x2 = x * x
x4 = x2 * x2
x5 = x4 * x
```

This requires three modular multiplications per S-box evaluation.

### MDS Matrix Mixing

The MDS layer performs a 24 x 24 matrix-vector multiplication over the field:

```text
next_state[i] = sum(state[j] * MDS[i][j]) mod P
```

This step mixes all state lanes together and provides diffusion across the full Poseidon state.

---

## 3. Top-Level Function

The HLS top-level function is:

```cpp
void poseidon_top(
    hls::stream<axis_word>& in_stream,
    hls::stream<axis_word>& out_stream,
    field_t round_constants[TOTAL_ROUNDS * STATE_SIZE],
    field_t mds_matrix[STATE_SIZE][STATE_SIZE]
);
```

The design uses:

| Interface | Purpose |
|---|---|
| AXI4-Stream input | Streams input field elements into the accelerator |
| AXI4-Stream output | Streams the final state/hash result out of the accelerator |
| AXI-Lite control | Provides standard HLS start/done/idle/ready control |
| AXI master memory | Supplies round constants and the MDS matrix in the current implementation |

---

## 4. Exact AXI4-Stream Protocol

The AXI-stream word type is:

```cpp
struct axis_word {
    ap_uint<256> data;
    ap_uint<1>   last;
    ap_uint<32>  keep;
};
```

### Input Stream Format

One input transaction represents one Poseidon input state.

```text
One Poseidon input transaction = 24 AXI4-Stream words
One AXI4-Stream word = one 256-bit field element
```

Input packet layout:

| Word Index | Meaning |
|---:|---|
| 0 | Initial state lane 0 |
| 1 | Initial state lane 1 |
| 2 | Initial state lane 2 |
| ... | ... |
| 23 | Initial state lane 23 |

The design always reads exactly 24 input words:

```cpp
for (int i = 0; i < STATE_SIZE; i++) {
    axis_word val = in_stream.read();
    state[i] = val.data;
}
```

### Meaning of Input `data`

`data` contains the 256-bit field element for the corresponding state lane.

### Meaning of Input `keep`

`keep` is 32 bits because each stream word contains 32 bytes:

```text
256 bits = 32 bytes
```

For a full 256-bit valid word, `keep` should be:

```text
0xFFFFFFFF
```

This means all 32 bytes of the 256-bit word are valid.

### Meaning of Input `last`

The current design does **not** use input `last` to determine message length. The packet length is fixed at 24 words because `STATE_SIZE = 24`.

A clean testbench or driver may still set `last = 1` on input word 23, but the accelerator does not rely on it for control.

### Output Stream Format

One output transaction contains the final 24-lane state after the Poseidon permutation.

```text
One Poseidon output transaction = 24 AXI4-Stream words
One AXI4-Stream word = one 256-bit final state lane
```

Output packet layout:

| Word Index | Meaning |
|---:|---|
| 0 | Final state lane 0 |
| 1 | Final state lane 1 / primary hash output used by verification script |
| 2 | Final state lane 2 |
| ... | ... |
| 23 | Final state lane 23 |

The design writes all 24 final state lanes:

```cpp
for (int i = 0; i < STATE_SIZE; i++) {
    axis_word out_val;
    out_val.data = state[i];
    out_val.last = (i == STATE_SIZE - 1);
    out_val.keep = 0xFFFFFFFF;
    out_stream.write(out_val);
}
```

### Meaning of Output `data`

`data` contains one 256-bit final state lane.

### Meaning of Output `keep`

The output `keep` signal is always set to:

```text
0xFFFFFFFF
```

This indicates that all 32 bytes of the 256-bit output word are valid.

### Meaning of Output `last`

The output `last` signal is asserted on the final output word only:

```text
out_val.last = 1 only when i == 23
```

This marks the end of the 24-word output packet.

---

## 5. Architecture

The accelerator can be viewed as four main blocks:

```text
AXI4-Stream Input
        |
        v
+----------------------+
| Input Loader          |
| Reads 24 x 256-bit    |
| input words           |
+----------+-----------+
           |
           v
+----------------------+
| 24-Lane State Register|
| 24 x 256-bit lanes    |
+----------+-----------+
           |
           v
+----------------------+
| Poseidon Round Core   |
| - Add round constants |
| - Apply x^5 S-box     |
| - Apply MDS mixing    |
+----------+-----------+
           |
           v
+----------------------+
| Output Writer         |
| Writes 24 final lanes |
+----------+-----------+
           |
           v
AXI4-Stream Output
```

### Input Loader

The input loader reads 24 AXI-stream words and stores them into the state array.

The absorb loop is pipelined with:

```cpp
#pragma HLS PIPELINE II=1
```

This allows the input phase to accept one input word per cycle when the stream is ready.

### State Register

The internal state is:

```cpp
field_t state[STATE_SIZE];
```

The state array is fully partitioned:

```cpp
#pragma HLS ARRAY_PARTITION variable=state complete
```

This allows all 24 lanes to be accessed in parallel. This is useful for the round function but increases resource usage when combined with unrolled arithmetic.

### Poseidon Round Core

The round core runs `TOTAL_ROUNDS = 68` rounds.

Each round performs:

1. **Round constant addition**
   - Adds one round constant to each lane.

2. **S-box layer**
   - During full rounds, applies `x^5` to all 24 lanes.
   - During partial rounds, applies `x^5` only to lane 0.

3. **MDS mixing**
   - Performs a 24 x 24 matrix-vector multiplication over the field.

### Output Writer

The output writer sends all 24 final state lanes to the AXI4-Stream output and asserts `last` on the final output word.

---

## 6. HLS Optimization Structure

The current implementation uses several HLS pragmas to expose parallelism:

| HLS Directive | Location | Purpose |
|---|---|---|
| `PIPELINE II=1` | Absorb loop | Read one input word per cycle |
| `ARRAY_PARTITION complete` | `state` array | Allow parallel access to all 24 state lanes |
| `UNROLL` | Round constant loop | Add round constants to all lanes in parallel |
| `UNROLL` | S-box loop | Apply S-box operations in parallel during full rounds |
| `ARRAY_PARTITION complete` | `next_state` array | Allow parallel MDS output updates |
| `PIPELINE II=1` | MDS row loop | Attempt to process MDS rows efficiently |
| `UNROLL` | MDS column loop | Parallelize the 24 multiplications in each MDS row |
| `PIPELINE II=1` | Output loop | Write one output word per cycle |

These directives show a high-parallelism HLS design style. The advantage is that the code exposes a lot of concurrency to the HLS tool. The downside is that unrolling 256-bit modular arithmetic is extremely expensive.

---

## 7. Design Efficiency Discussion

The current implementation favors parallelism over resource sharing.

This is useful as a first HLS prototype because it makes the architecture straightforward:

- State lanes are available in parallel.
- Round constant addition is parallelized.
- Full-round S-box operations are unrolled.
- MDS row computation is heavily parallelized.

However, this creates a very large hardware design because modular multiplication is expensive. Each 256-bit modular multiplication creates a 512-bit intermediate product and modular reduction logic. Since the S-box uses three modular multiplications and the MDS layer performs many field multiplications, fully or aggressively unrolling these loops causes HLS to instantiate many large arithmetic units.

A more practical FPGA implementation would likely use a resource-sharing architecture:

- Use one or a small number of shared modular multipliers.
- Pipeline the modular multiplier.
- Partially unroll the MDS matrix multiply instead of fully unrolling it.
- Store round constants and the MDS matrix in on-chip ROM/BRAM.
- Replace `% P` with a more hardware-efficient modular reduction method.

The tradeoff is:

| Design Choice | Benefit | Cost |
|---|---|---|
| Full unrolling | More parallelism, lower theoretical latency | Very high DSP/LUT/FF usage |
| Partial unrolling | Balanced performance and area | Higher latency than full unroll |
| Shared arithmetic units | Much lower resource usage | More cycles per hash |
| On-chip constants | Less external memory traffic | Uses BRAM/LUTROM resources |

The current design demonstrates correctness and HLS structure, but future versions should reduce unrolling and share arithmetic resources to fit on the target FPGA.

---

## 8. HLS Synthesis Results

The design was synthesized in Vitis HLS.

| Item | Value |
|---|---|
| Tool | Vitis HLS |
| Target part | `xc7z020clg484-1` |
| Target clock | 10 ns |
| Top function | `poseidon_top` |

Current C synthesis summary:

| Metric | Result |
|---|---:|
| Target clock period | 10 ns |
| Timing slack | -1.94 ns |
| Estimated latency | 293,274 cycles |
| Estimated latency time | 2.933 ms |
| Top-level interval | 293,275 cycles |
| BRAM usage | 30 / 280, about 10% |
| DSP usage | 21,495 / 220, about 9,770% |
| FF usage | 564,658 / 106,400, about 530% |
| LUT usage | 311,726 / 53,200, about 585% |

### Interpretation

The design successfully completes HLS C synthesis, but it does not fit within the selected FPGA resource budget. DSP, FF, and LUT usage are far above the available resources.

The main reason is the high degree of unrolling applied to expensive 256-bit modular arithmetic. The MDS and S-box computations create many large modular multipliers. This shows that the design is a useful functional prototype, but the architecture needs additional optimization before it can be considered a practical FPGA implementation.

---

## 9. Verification Methodology

The project uses a golden-model comparison flow.

```text
Python golden model
        |
        v
poseidon_golden_results.csv

HLS C++ testbench
        |
        v
hw_results.csv

Comparison script
        |
        v
PASS/FAIL result per test case
```

### HLS Testbench

The C++ HLS testbench is:

```text
poseidon_tb.cpp
```

The testbench:

1. Reads Poseidon constants from the `data/` directory.
2. Reads input test cases from the `data/` directory.
3. Pushes 24 input words into the AXI-stream input.
4. Calls `poseidon_top()`.
5. Reads 24 output words from the AXI-stream output.
6. Writes the result to `hw_results.csv`.

### Golden Model

The Python golden model is:

```text
golden_model.py
```

It produces:

```text
poseidon_golden_results.csv
```

This file contains the expected Poseidon output and final state.

### Result Comparison

The comparison script is:

```text
verify_results.py
```

It compares:

```text
hw_results.csv
```

against:

```text
poseidon_golden_results.csv
```

The script checks:

1. The primary hash output, using final state lane 1.
2. The full 24-lane final state.

A successful run should print a table like:

```text
Test Case  | Hash Match | Full State
----------------------------------------
Case 0     | PASS       | PASS
Case 1     | PASS       | PASS
...
----------------------------------------
FINAL SCORE: N/N (100.00%)

SUCCESS: All hardware results match the golden model!
```

Poseidon HLS Verification Summary

Golden file: poseidon_golden_results.csv
Hardware/HLS file: hw_results.csv

Number of test cases checked: 20
Hash output checked: lane 1
Full final state checked: all 24 lanes

Result:
PASS - all hardware/HLS outputs matched the Python golden model.

The committed CSV result files are non-empty:
- `hw_results.csv`: HLS testbench output
- `poseidon_golden_results.csv`: Python golden model output

---

## 10. How to Reproduce the Results

### Step 1: Clone the repository

```bash
git clone https://github.com/Leowty88/poseidon-fpga.git
cd poseidon-fpga
```

### Step 2: Generate constants and test data, if needed

```bash
python3 generate_constants.py
```

This should generate/update the files in the `data/` directory.

### Step 3: Generate golden-model results

```bash
python3 golden_model.py
```

This should generate/update:

```text
poseidon_golden_results.csv
```

### Step 4: Run HLS C simulation and C synthesis

```bash
vitis_hls -f run_hls.tcl
```

The HLS script performs the following actions:

```tcl
open_project -reset poseidon_hls
set_top poseidon_top
add_files poseidon.cpp
add_files -tb poseidon_tb.cpp
open_solution -reset "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
csim_design -argv "$data_dir"
csynth_design
```

The C simulation should generate/update:

```text
hw_results.csv
```

The C synthesis report is located at:

```text
reports/csynth.rpt
```

### Step 5: Verify HLS results against the golden model

```bash
python3 verify_results.py
```

Expected successful result:

```text
SUCCESS: All hardware results match the golden model!
```

---

## 11. Current Status

### Completed

- Implemented 24-lane Poseidon state.
- Implemented 256-bit field element representation.
- Implemented modular addition.
- Implemented modular multiplication.
- Implemented quintic `x^5` S-box.
- Implemented round constant addition.
- Implemented MDS matrix mixing.
- Implemented AXI4-Stream input and output.
- Implemented AXI-Lite control interface.
- Implemented HLS C++ testbench.
- Implemented Python golden-model flow.
- Implemented result comparison script.
- Ran Vitis HLS C simulation and C synthesis.

### Limitations / Future Work

- The committed result CSV files should be non-empty and should show the tested output vectors.
- Add RTL co-simulation with `cosim_design`.
- Move round constants and the MDS matrix from AXI master memory into on-chip ROM/BRAM.
- Reduce full unrolling of expensive modular arithmetic.
- Use a shared or partially shared modular multiplier datapath.
- Replace `% P` modular reduction with a hardware-optimized reduction algorithm.
- Package the accelerator as a reusable Vivado/Vitis IP.
- Test the design in a full FPGA block design or on-board deployment.

---

## 12. Future Optimization Plan

The most important next step is to reduce area while preserving correctness.

### 1. Move Constants On-Chip

The round constants and MDS matrix are fixed for a chosen Poseidon parameter set. Instead of passing them as external AXI master memory arguments, a future version should store them as:

```cpp
static const field_t ROUND_CONSTANTS[...];
static const field_t MDS_MATRIX[...][...];
```

or map them to ROM/BRAM.

This would reduce external memory traffic and make memory access more predictable.

### 2. Share Modular Multipliers

The current design unrolls loops that contain modular multiplications. A future version should use fewer modular multipliers and reuse them over multiple cycles.

This would increase latency but greatly reduce DSP/LUT/FF usage.

### 3. Partially Unroll MDS

Instead of computing many MDS products in parallel, the MDS layer could be partially unrolled. For example, the design could compute 2, 4, or 8 products per cycle instead of 24.

This would provide a better area/performance tradeoff.

### 4. Optimize Modular Reduction

The current implementation uses:

```cpp
mul % P
```

This is easy to write but expensive for HLS. A specialized modular reduction method for the field prime would likely reduce area and improve timing.

### 5. Add RTL Co-Simulation

The current flow runs C simulation and C synthesis. A stronger verification flow would add:

```tcl
cosim_design
```

to verify that the generated RTL matches the C-level behavior.

---

## 13. Conclusion

This project successfully implements the core Poseidon permutation in Vitis HLS and connects it to AXI4-Stream input/output interfaces. The design includes modular addition, modular multiplication, the `x^5` S-box, round constant addition, and MDS matrix mixing over a 24-lane 256-bit field state.

The current implementation demonstrates the full functional datapath and provides an end-to-end HLS workflow with C simulation, C synthesis, golden-model generation, and result comparison. The synthesis results show that the current high-parallelism design is too resource-heavy for the selected FPGA, mainly because full unrolling of 256-bit modular arithmetic creates very large hardware.

Overall, this design is a correct and useful functional prototype. The main future work is to make the architecture more hardware-efficient by sharing arithmetic units, reducing unrolling, moving constants on-chip, and improving modular reduction.
