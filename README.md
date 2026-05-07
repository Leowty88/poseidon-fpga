# Poseidon FPGA HLS Accelerator

## Project Overview

This repository implements a Poseidon hash/permutation accelerator using Vitis HLS. Poseidon is a sponge-based hash function commonly used in zero-knowledge proof systems because its arithmetic structure is friendly to finite-field computation.

The design operates on a 24-lane internal state. Each lane stores one 256-bit field element. The accelerator reads input data from an AXI4-Stream interface, loads the values into the internal state, applies the Poseidon round function, and writes the final state back through an AXI4-Stream output interface.

The current implementation should be viewed as a functional HLS prototype. It correctly implements the Poseidon math and verifies against a software golden model, but the first synthesis result shows that the design is not yet resource-efficient enough for the target FPGA without further optimization.

---

## Team

- Leo Wang
- Brendan Sweezy

Course: ECE 9463 Hardware Design, Spring 2026

---

## Repository Contents

| File / Directory | Description |
|---|---|
| `poseidon.hpp` | Main type definitions, field width, Poseidon parameters, AXI-stream word definition, and top-level function declaration |
| `poseidon.cpp` | HLS implementation of the Poseidon accelerator |
| `poseidon_tb.cpp` | C++ HLS testbench that drives AXI streams and writes hardware results |
| `golden_model.py` | Python software golden model used to generate expected Poseidon outputs |
| `verify_results.py` | Compares HLS/hardware output CSV against the golden output CSV |
| `generate_constants.py` | Generates Poseidon constants and test data |
| `data/` | Input constants and test cases used by the HLS testbench |
| `run_hls.tcl` | Vitis HLS script for running C simulation and C synthesis |
| `hw_results.csv` | Output results produced by the HLS testbench |
| `poseidon_golden_results.csv` | Expected output results from the Python golden model |
| `poseidon_hls/solution1/syn/report/csynth.rpt` | Vitis HLS synthesis report |
| `plan.md` | Original project planning document |

---

## 1. IP Definition

This IP implements the Poseidon permutation over a 24-lane state of 256-bit field elements.

The main computation consists of:

1. **Absorb phase**
   - Read 24 input words from the AXI4-Stream input.
   - Each input word is treated as one 256-bit field element.
   - These 24 words initialize the internal Poseidon state.

2. **Permutation phase**
   - Apply Poseidon rounds to the internal state.
   - Each round includes:
     - Round constant addition
     - Quintic S-box, `x^5`
     - MDS matrix mixing

3. **Squeeze/output phase**
   - Write the final 24-lane state to the AXI4-Stream output.
   - The verification script treats lane 1 as the primary hash output and also checks the full 24-lane final state.

The finite-field arithmetic is performed over the BLS12-381 scalar field prime:

```text
0x73eda753299d7d483339d80809a1d80553bda402fffe5bfeffffffff00000001
