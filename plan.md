# Poseidon FPGA 

## ECE 9463 Hardware design - Spring 2026

## Project Team

- Brendan Sweezy
- Leo Wang


## IP defention 

This IP implements the Poseidon hash function (used in zero-knowledge proofs). This design will support a 24-lane internal state where each lane stores one field element (256-bit), and will support absorb, permutation, and squeeze operations for hashing the input data into a fixed-size output. The core arithmetic of this IP will be Poseidon's round structure, which applies round constant addition, an x^5 S-box, and an MDS matrix mixing step over the 24-lane state. It will be well-suited for FPGA implementation because Poseidon is built from repetitive modular addition and multiplication with minimal control complexity.  


## IP architecture 

The IP is centered around a single 24-lane state register that holds the full Poseidon state throughout the execution. The input data is first loaded into the 24-lane state register. After that, a controller drives the datapath through each Poseidon round by indicating when to add constants, perform S-box computation, and execute the MDS mixing. The S-box supports both full rounds and partial rounds, while the shared arithmetic units handle the modular operations used throughout the design. After all rounds are complete, the squeeze logic reads the result from the state and outputs the final hash.  

### Additional interface and module detail

The design will separate the datapath into several explicit modules: an AXI interface block, a controller, a 24-lane state register file, a round-constant addition block, an S-box block, an MDS mixing block, shared modular arithmetic units, and squeeze/output logic. This partition makes the flow of data and control across the Poseidon round easier to describe and implement.

The PS-to-IP connection will use AXI4-Lite for control/status and AXI4-Stream for input and output data transfer. The AXI4-Lite interface will carry control information such as start, reset, operation mode, input length, and status information such as busy and done. The AXI4-Stream input interface will carry 256-bit field elements from the PS into the IP during absorb, and the AXI4-Stream output interface will carry 256-bit hash results back to the PS during squeeze.

Between internal modules, the controller will provide control signals including round index, lane select, operation select, and state write enable. The state register file will send the selected lane data to the round-constant, S-box, and MDS blocks, and the shared modular arithmetic units will return reduced results back into the state register file. This makes both the PS-to-IP and module-to-module interfaces more explicit while keeping the arithmetic hardware shared across rounds.
