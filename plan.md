# Poseidon FPGA 

## ECE 9463 Hardware design 

## Spring 2026


## IP defention 

This IP implements the Poseidon hash function (Used in zero knowlege proofs). 
This design will support a 24 lane internal state where each lane stores one field element (256 bit), and will support absorb, permutation, and squeeze for hashing the input data into a fixed sized output. 
The core arthmetic of this IP will be Poseidon's round stucture which applies round constant additon, an x^5 S-box and an MDS matrix mixing step over the 24 lane sate. It will be suited for FPGA implemnetation beacuse poseidon is build form repetitive modular addtion and mutiplication with minimal control complexity. 

## IP architecture 

The IP is centered around a single 24 lane sate register that holds the full Poseidon state thorougout the execution. 
The input data is first loaded into the 24 lane state register. After that, a controller drives the datapath through each Posiden round by telling it when to add constants, S-box computation and perform the MDS mixing. |
The S-box supports both full rounds and partial rounds, while the shared arthmetic units handles the modular operations used thoughtout the deisgn. 
After all rounds are complete, the squeeze logic reads the result from the state and outputs the final hash. 
