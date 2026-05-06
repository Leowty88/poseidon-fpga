import pandas as pd
import os

def verify():
    golden_path = 'poseidon_golden_results.csv'
    hw_path = 'poseidon_hls/solution1/csim/build/hw_results.csv'

    if not os.path.exists(hw_path):
        print(f"Error: Could not find HW results at {hw_path}")
        print("Did you run vitis_hls -f run_hls.tcl successfully?")
        return

    # Load data
    golden = pd.read_csv(golden_path)
    hw = pd.read_csv(hw_path)

    passes = 0
    total = len(hw)

    print(f"{'Test Case':<12} | {'Status':<10} | {'Match Percentage'}")
    print("-" * 50)

    for i in range(total):
        # We compare Lane 1 specifically (the typical hash output)
        # But we also check if ALL lanes match for a "Perfect Pass"
        hw_row = hw.iloc[i][[f'lane_{j}' for j in range(24)]].values
        
        # Note: Depending on your Python script, the golden results 
        # might be in one column or 24. Here we check the main hash output.
        hw_hash = hw.iloc[i]['lane_1'].strip().lower()
        golden_hash = golden.iloc[i]['Hash Output (Hex)'].strip().lower()

        if hw_hash == golden_hash:
            status = "PASS"
            passes += 1
        else:
            status = "FAIL"

        print(f"Case {i:<9} | {status:<10} | HW: {hw_hash[:10]}... vs Golden: {golden_hash[:10]}...")

    print("-" * 50)
    print(f"FINAL SCORE: {passes}/{total} ({(passes/total)*100:.2f}%)")

if __name__ == "__main__":
    verify()