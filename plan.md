# Poseidon FPGA 

## ECE 9463 Hardware Design - Spring 2026

## Project Team

- Brendan Sweezy
- Leo Wang


## IP definition

This IP implements the Poseidon hash function used in zero-knowledge proof systems. The design supports a 24-lane internal state, where each lane stores one 256-bit field element, and performs absorb, permutation, and squeeze operations to hash input data into a fixed-size output. The core arithmetic follows Poseidon’s round structure: round constant addition, an x^5 S-box, and MDS matrix mixing over the 24-lane state. This is well-suited for FPGA acceleration because the algorithm is dominated by repetitive modular addition and multiplication with relatively simple control flow.


## IP architecture

The accelerator will be integrated as a custom PL IP connected to the PS. The PS will control the core through an **AXI4-Lite memory-mapped interface**, while message data and hash outputs will move through **AXI4-Stream interfaces** connected to an **AMD AXI DMA** engine. This avoids making the PS push 256-bit words one register at a time and gives a cleaner high-throughput data path.

The top-level interfaces are:

- **AXI4-Lite slave control interface (PS ↔ Poseidon IP)**  
  Used for configuration and status. Main registers include:
  - `CTRL`: start, reset, mode select
  - `MSG_LEN`: number of field elements / blocks to absorb
  - `OUT_LEN`: number of output elements to squeeze
  - `STATUS`: busy, done, error
  - `IRQ_EN / IRQ_STATUS`: optional interrupt support

- **AXI4-Stream input interface (DMA/PS → Poseidon IP)**  
  Carries input field elements into the absorb logic using standard stream handshake signals:
  - `s_axis_tdata`
  - `s_axis_tvalid`
  - `s_axis_tready`
  - `s_axis_tlast`

- **AXI4-Stream output interface (Poseidon IP → DMA/PS)**  
  Returns squeezed hash words using:
  - `m_axis_tdata`
  - `m_axis_tvalid`
  - `m_axis_tready`
  - `m_axis_tlast`

Internally, the IP is divided into the following submodules:

1. **Input / Absorb Module**  
   Receives 256-bit field elements from the AXI4-Stream input and writes them into the 24-lane state register according to the Poseidon absorb schedule. It sends `load_en`, `lane_idx`, and `lane_data` signals to the state register.

2. **24-Lane State Register File**  
   Stores the full Poseidon state (24 lanes × 256 bits). It provides read ports for the current round computation and write ports for updated lane values. The controller selects which lane is read or written each cycle.

3. **Round Controller / Scheduler**  
   A finite-state machine that sequences the computation through absorb, full rounds, partial rounds, MDS mixing, and squeeze. It generates control signals such as:
   - `round_idx`
   - `lane_idx`
   - `rc_en` for round constant addition
   - `sbox_en`
   - `mds_en`
   - `state_we`
   - `done`

4. **Round Constant Unit**  
   Stores or generates Poseidon round constants. For each active round/lane, it outputs the constant value to the adder datapath.

5. **S-Box Unit**  
   Implements the nonlinearity \(x^5\) over the field. This is computed as \(x^2\), \(x^4\), then \(x^5 = x \cdot x^4\), so it mainly uses modular multipliers. During full rounds, all 24 lanes pass through the S-box; during partial rounds, only the designated lane is processed.

6. **MDS Mix Unit**  
   Performs the matrix-vector multiplication for the MDS layer. It reads the current state, multiplies by the fixed MDS coefficients, and accumulates the results for each output lane before writing the mixed state back.

7. **Squeeze / Output Module**  
   Reads the final state values selected for the hash output and sends them through the AXI4-Stream output interface to the DMA and then back to PS memory.

### Resource sharing and scheduling

To reduce area, the design will use a **shared arithmetic datapath** rather than dedicating a full multiplier/adder to every lane. The controller schedules the arithmetic units across lanes. For example, during a full round, the scheduler iterates through the 24 lanes and applies the S-box lane-by-lane; during a partial round, only one lane uses the S-box, so the cost is much lower. For the MDS step, the controller performs a structured matrix-vector multiply with partial sums stored in temporary registers.

To prevent the shared units from becoming a bottleneck, the arithmetic datapath will be **pipelined** and reused every cycle. The state register file and temporary accumulation registers allow one result to be written back while the next multiplication/addition is already in progress. This keeps utilization high without requiring a fully parallel 24-lane implementation.

### Use of existing AMD IP

The system will reuse existing AMD infrastructure IP where appropriate, especially:
- **AXI DMA** for moving input/output blocks between PS memory and the streaming accelerator
- **AXI Interconnect / SmartConnect** for connecting the PS, DMA, and custom IP
- **AXI4-Lite control interface templates** for software-visible configuration and status registers

This keeps the custom logic focused on the Poseidon datapath instead of rebuilding standard communication components.
