# Poseidon FPGA 

## ECE 9463 Hardware design - Spring 2026

## Project Team

- Brendan Sweezy
- Leo Wang


## IP defention 

This IP implements the Poseidon hash function (used in zero-knowledge proofs). This design will support a 24-lane internal state where each lane stores one field element (256-bit), and will support absorb, permutation, and squeeze operations for hashing the input data into a fixed-size output. The core arithmetic of this IP will be Poseidon's round structure, which applies round constant addition, an x^5 S-box, and an MDS matrix mixing step over the 24-lane state. It will be well-suited for FPGA implementation because Poseidon is built from repetitive modular addition and multiplication with minimal control complexity.  


## IP architecture 

The IP is centered around a single 24-lane state register that holds the full Poseidon state throughout the execution. The input data is first loaded into the 24-lane state register. After that, a controller drives the datapath through each Poseidon round by indicating when to add constants, perform S-box computation, and execute the MDS mixing. The S-box supports both full rounds and partial rounds, while the shared arithmetic units handle the modular operations used throughout the design. After all rounds are complete, the squeeze logic reads the result from the state and outputs the final hash.  

The IP will expose an AXI4-Lite slave interface to the PS for control and status registers such as start, reset, mode, input length, and done. Input data will be transferred using AXI4-Stream through an AXI DMA, and output hash values will be returned through an AXI4-Stream output. Internally, the design is partitioned into an input absorb module, a 24-lane state register, a round controller FSM, a round constant ROM, an S-box unit, a modular arithmetic unit, an MDS mixing unit, and a squeeze/output module. The controller drives the sequencing of rounds and sends enable signals to the datapath modules, while the datapath reads and writes the shared state register each cycle. AMD IP such as AXI DMA, AXI FIFO, and Block Memory Generator may be used to simplify data movement and constant storage.
