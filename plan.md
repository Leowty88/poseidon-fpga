# Poseidon FPGA 

## ECE 9463 Hardware design - Spring 2026

## Project Team

- Brendan Sweezy
- Leo Wang


## IP defention 

This IP implements the Poseidon hash function (used in zero-knowledge proofs). This design will support a 24-lane internal state where each lane stores one field element (256-bit), and will support absorb, permutation, and squeeze operations for hashing the input data into a fixed-size output. The core arithmetic of this IP will be Poseidon's round structure, which applies round constant addition, an x^5 S-box, and an MDS matrix mixing step over the 24-lane state. It will be well-suited for FPGA implementation because Poseidon is built from repetitive modular addition and multiplication with minimal control complexity.  


## IP architecture 

The IP is centered around a single 24-lane state register that holds the full Poseidon state throughout the execution. The input data is first loaded into the 24-lane state register. After that, a controller drives the datapath through each Poseidon round by indicating when to add constants, perform S-box computation, and execute the MDS mixing. The S-box supports both full rounds and partial rounds, while the shared arithmetic units handle the modular operations used throughout the design. After all rounds are complete, the squeeze logic reads the result from the state and outputs the final hash.  

### Interface details add-on

The PS will communicate with the Poseidon IP through an AXI4-Lite control/status interface and AXI4-Stream ports for input and output data. The AXI4-Lite interface will provide control registers such as start, mode selection (absorb, permute, squeeze), input length, and status flags including busy and done. Input field elements will be sent into the IP over AXI4-Stream using 256-bit data words, and output hash values will be returned over AXI4-Stream after the permutation and squeeze phases complete.

Inside the IP, the controller will exchange control signals with the datapath including the current round number, lane index, operation select (round constant addition, S-box, or MDS mixing), and write-enable signals for the state register. The state register supplies the selected 256-bit lane values to the arithmetic units, and the arithmetic units return modular results back to the state register once each operation is complete.

Because the arithmetic resources are shared, the controller will use a fixed schedule so the design does not become a bottleneck. In full rounds, the controller will step through all 24 lanes and reuse the same modular arithmetic pipeline across lanes. In partial rounds, only the required lane will pass through the S-box while the other lanes continue through the remaining round operations. This time-multiplexed scheduling keeps the shared arithmetic units active without requiring a fully duplicated 24-lane implementation.
