import csv

# BLS12-381 Scalar Field Prime
PRIME = 0x73eda753299d7d483339d80809a1d80553bda402fffe5bfeffffffff00000001
STATE_SIZE = 24

def sbox(x):
    return pow(x, 5, PRIME)

def mds_multiply(state, mds_matrix):
    new_state = [0] * STATE_SIZE
    for i in range(STATE_SIZE):
        acc = 0
        for j in range(STATE_SIZE):
            acc = (acc + mds_matrix[i][j] * state[j]) % PRIME
        new_state[i] = acc
    return new_state

def poseidon_permute(initial_state, mds_matrix, round_constants):
    """The core Poseidon permutation logic (8 Full, 60 Partial)."""
    state = list(initial_state)
    R_F, R_P = 8, 60
    half_Rf = R_F // 2
    rc_offset = 0

    # Total rounds = R_F + R_P
    for r in range(R_F + R_P):
        # 1. Add Round Constants
        for i in range(STATE_SIZE):
            state[i] = (state[i] + round_constants[rc_offset]) % PRIME
            rc_offset += 1
        
        # 2. S-Box Layer
        if r < half_Rf or r >= (half_Rf + R_P):
            # Full rounds: S-box on all elements
            for i in range(STATE_SIZE):
                state[i] = sbox(state[i])
        else:
            # Partial rounds: S-box on first element only
            state[0] = sbox(state[0])
        
        # 3. MDS Layer
        state = mds_multiply(state, mds_matrix)
        
    return state

def load_constants(filename):
    rc = []
    mds = []
    mode = None
    with open(filename, 'r') as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#"): continue
            if "[ROUND_CONSTANTS]" in line: mode = "RC"; continue
            if "[MDS_MATRIX]" in line: mode = "MDS"; continue
            
            if mode == "RC":
                rc.append(int(line, 16))
            elif mode == "MDS":
                mds.append([int(x, 16) for x in line.split()])
    return rc, mds

def load_test_cases(filename):
    cases = []
    with open(filename, 'r') as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#"): continue
            cases.append([int(x, 16) for x in line.split()])
    return cases

def main():
    print("--- Poseidon Golden Model Evaluation ---")
    
    # 1. Load data
    try:
        round_constants, mds_matrix = load_constants("poseidon_constants.txt")
        test_cases = load_test_cases("test_cases.txt")
    except FileNotFoundError as e:
        print(f"Error: {e}. Please ensure the constant and test case files exist.")
        return

    results = []

    # 2. Iterate through test cases
    print(f"Processing {len(test_cases)} test cases...")
    for idx, initial_state in enumerate(test_cases):
        # Run permutation
        final_state = poseidon_permute(initial_state, mds_matrix, round_constants)
        
        # For comparison, we save the first element (the 'hash' result) 
        # and the full final state for hardware vector verification.
        results.append({
            "test_case_id": idx + 1,
            "hash_output": hex(final_state[1]), # Standard Neptune output index
            "full_state": [hex(x) for x in final_state]
        })

    # 3. Save to CSV
    csv_filename = "poseidon_golden_results.csv"
    with open(csv_filename, 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(["Test Case ID", "Hash Output (Hex)", "Full Final State (JSON-style)"])
        for res in results:
            writer.writerow([res["test_case_id"], res["hash_output"], res["full_state"]])

    print(f"Success! Results saved to {csv_filename}")

if __name__ == "__main__":
    main()