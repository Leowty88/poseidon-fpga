import random

def generate_poseidon_constants(state_size=24, full_rounds=8, partial_rounds=60):
    """
    Generates dummy random constants for Poseidon.
    PRIME used: BLS12-381 Scalar Field.
    """
    PRIME = 0x73eda753299d7d483339d80809a1d80553bda402fffe5bfeffffffff00000001
    
    # 1. Round Constants (one for every state element, every round)
    num_constants = (full_rounds + partial_rounds) * state_size
    round_constants = [random.randint(0, PRIME - 1) for _ in range(num_constants)]
    
    # 2. MDS Matrix (state_size x state_size)
    mds_matrix = []
    for _ in range(state_size):
        row = [random.randint(0, PRIME - 1) for _ in range(state_size)]
        mds_matrix.append(row)
        
    return round_constants, mds_matrix

def save_constants_to_file(filename, rc, mds):
    with open(filename, 'w') as f:
        f.write("# Poseidon Hash Constants\n\n")
        
        f.write("[ROUND_CONSTANTS]\n")
        for val in rc:
            f.write(f"{hex(val)}\n")
            
        f.write("\n[MDS_MATRIX]\n")
        for row in mds:
            f.write(" ".join([hex(x) for x in row]) + "\n")

# Run generation
rc, mds = generate_poseidon_constants()
save_constants_to_file("poseidon_constants.txt", rc, mds)