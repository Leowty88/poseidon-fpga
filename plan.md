# Poseidon FPGA 

## ECE 9463 Hardware design - Spring 2026

## Project Team

- Brendan Sweezy
- Leo Wang


## IP defention 

This IP implements the Poseidon hash function (used in zero-knowledge proofs). This design will support a 24-lane internal state where each lane stores one field element (256-bit), and will support absorb, permutation, and squeeze operations for hashing the input data into a fixed-size output. The core arithmetic of this IP will be Poseidon's round structure, which applies round constant addition, an x^5 S-box, and an MDS matrix mixing step over the 24-lane state. It will be well-suited for FPGA implementation because Poseidon is built from repetitive modular addition and multiplication with minimal control complexity.  


## IP architecture 

The IP is centered around a single 24-lane state register that holds the full Poseidon state throughout the execution. The input data is first loaded into the 24-lane state register. After that, a controller drives the datapath through each Poseidon round by indicating when to add constants, perform S-box computation, and execute the MDS mixing. The S-box supports both full rounds and partial rounds, while the shared arithmetic units handle the modular operations used throughout the design. After all rounds are complete, the squeeze logic reads the result from the state and outputs the final hash.  

### Architecture refinement add-on

The architecture will be divided into clearer sub-modules: a PS interface block, a controller, a 24-lane state register file, a round-constant addition block, an S-box block, an MDS mixing block, shared modular arithmetic units, and squeeze/output logic. The controller will coordinate these blocks by sending the current round index, lane select, operation select, and write-enable signals, while each datapath block returns valid/done signals when its operation completes.

The PS/IP connection will use AXI4-Lite for control and status and AXI4-Stream for data movement. The AXI4-Lite interface will carry control information such as start, reset, mode selection, and input length, and it will return status information such as busy, done, and error flags. The AXI4-Stream input will carry 256-bit field elements from the PS into the accelerator during absorb, and the AXI4-Stream output will carry 256-bit hash words back to the PS during squeeze.

Inside the IP, the state register file will provide lane data to the round-constant, S-box, and MDS blocks, and the shared modular arithmetic units will perform the required modular additions and multiplications before writing results back into the state. This makes the module boundaries and data exchange more explicit while still allowing arithmetic resources to be reused across rounds.

Some supporting interface or memory functions may also reuse existing AMD IP blocks where helpful, such as standard AXI infrastructure or on-chip memory components, while the Poseidon-specific arithmetic and control logic will remain custom.
