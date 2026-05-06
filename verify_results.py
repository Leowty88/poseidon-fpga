import pandas as pd
import os
import ast

def clean_hex(val):
    """Normalizes hex strings: handles '0x0x', leading zeros, and case."""
    if not isinstance(val, str):
        return val
    # Remove double prefix and normalize to standard 0x lowercase
    clean_val = val.replace('0x0x', '0x').lower()
    try:
        # Converting to int and back to hex(int) is the safest way 
        # to ignore leading zeros and formatting quirks
        return hex(int(clean_val, 16))
    except (ValueError, TypeError):
        return clean_val

def verify():
    # File paths - updated to look in your current directory based on your upload
    golden_path = 'poseidon_golden_results.csv'
    hw_path = 'hw_results.csv' # Changed from the subfolder path to current dir

    if not os.path.exists(hw_path):
        print(f"Error: Could not find HW results at {hw_path}")
        return
    if not os.path.exists(golden_path):
        print(f"Error: Could not find Golden results at {golden_path}")
        return

    # Load data
    golden = pd.read_csv(golden_path)
    hw = pd.read_csv(hw_path)

    passes = 0
    total = min(len(hw), len(golden))

    print(f"{'Test Case':<10} | {'Hash Match':<10} | {'Full State':<10}")
    print("-" * 40)

    for i in range(total):
        hw_row_data = hw.iloc[i]
        golden_row_data = golden.iloc[i]

        # 1. Compare the primary Hash Output (Lane 1)
        hw_hash = clean_hex(hw_row_data['lane_1'])
        golden_hash = clean_hex(golden_row_data['Hash Output (Hex)'])
        hash_match = (hw_hash == golden_hash)

        # 2. Compare the Full Internal State (All 24 lanes)
        # Parse the JSON-style list from the golden CSV
        golden_state_list = ast.literal_eval(golden_row_data['Full Final State (JSON-style)'])
        golden_state = [clean_hex(s) for s in golden_state_list]
        
        # Get all 24 lanes from HW row
        hw_state = [clean_hex(hw_row_data[f'lane_{j}']) for j in range(24)]
        
        state_match = (hw_state == golden_state)

        if hash_match:
            passes += 1
            status_hash = "PASS"
        else:
            status_hash = "FAIL"

        status_state = "PASS" if state_match else "FAIL"
        
        print(f"Case {i:<5}      | {status_hash:<10} | {status_state:<10}")

    print("-" * 40)
    score_pct = (passes / total) * 100
    print(f"FINAL SCORE: {passes}/{total} ({score_pct:.2f}%)")
    
    if score_pct == 100:
        print("\nSUCCESS: All hardware results match the golden model!")

if __name__ == "__main__":
    verify()