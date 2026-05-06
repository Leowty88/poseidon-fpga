set SynModuleInfo {
  {SRCNAME poseidon_top_Pipeline_VITIS_LOOP_42_1 MODELNAME poseidon_top_Pipeline_VITIS_LOOP_42_1 RTLNAME poseidon_top_poseidon_top_Pipeline_VITIS_LOOP_42_1
    SUBMODULES {
      {MODELNAME poseidon_top_flow_control_loop_pipe_sequential_init RTLNAME poseidon_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME poseidon_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sbox_quintic MODELNAME sbox_quintic RTLNAME poseidon_top_sbox_quintic
    SUBMODULES {
      {MODELNAME poseidon_top_mul_256ns_256ns_511_5_1 RTLNAME poseidon_top_mul_256ns_256ns_511_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME poseidon_top_mul_256ns_256ns_512_5_1 RTLNAME poseidon_top_mul_256ns_256ns_512_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME poseidon_top_mul_510s_510s_510_5_1 RTLNAME poseidon_top_mul_510s_510s_510_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME poseidon_top_urem_512ns_256ns_510_516_seq_1 RTLNAME poseidon_top_urem_512ns_256ns_510_516_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 515 ALLOW_PRAGMA 1}
      {MODELNAME poseidon_top_urem_510ns_256ns_510_514_seq_1 RTLNAME poseidon_top_urem_510ns_256ns_510_514_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 513 ALLOW_PRAGMA 1}
      {MODELNAME poseidon_top_urem_511ns_256ns_255_515_seq_1 RTLNAME poseidon_top_urem_511ns_256ns_255_515_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 514 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME poseidon_top_Pipeline_mds_row MODELNAME poseidon_top_Pipeline_mds_row RTLNAME poseidon_top_poseidon_top_Pipeline_mds_row
    SUBMODULES {
      {MODELNAME poseidon_top_mul_256ns_255ns_511_5_1 RTLNAME poseidon_top_mul_256ns_255ns_511_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME poseidon_top_urem_511ns_256ns_255_515_1 RTLNAME poseidon_top_urem_511ns_256ns_255_515_1 BINDTYPE op TYPE urem IMPL auto LATENCY 514 ALLOW_PRAGMA 1}
      {MODELNAME poseidon_top_urem_512ns_256ns_256_516_1 RTLNAME poseidon_top_urem_512ns_256ns_256_516_1 BINDTYPE op TYPE urem IMPL auto LATENCY 515 ALLOW_PRAGMA 1}
      {MODELNAME poseidon_top_icmp_255ns_255ns_1_2_1 RTLNAME poseidon_top_icmp_255ns_255ns_1_2_1 BINDTYPE op TYPE icmp IMPL auto}
      {MODELNAME poseidon_top_icmp_255ns_255ns_1_2_1_sub RTLNAME poseidon_top_icmp_255ns_255ns_1_2_1_sub BINDTYPE op TYPE icmp IMPL auto LATENCY 1}
      {MODELNAME poseidon_top_add_255ns_255ns_255_2_1 RTLNAME poseidon_top_add_255ns_255ns_255_2_1 BINDTYPE op TYPE add IMPL fabric LATENCY 1}
      {MODELNAME poseidon_top_add_256ns_256ns_256_2_1 RTLNAME poseidon_top_add_256ns_256ns_256_2_1 BINDTYPE op TYPE add IMPL fabric LATENCY 1}
      {MODELNAME poseidon_top_icmp_256ns_256ns_1_2_1 RTLNAME poseidon_top_icmp_256ns_256ns_1_2_1 BINDTYPE op TYPE icmp IMPL auto}
      {MODELNAME poseidon_top_icmp_256ns_256ns_1_2_1_sub RTLNAME poseidon_top_icmp_256ns_256ns_1_2_1_sub BINDTYPE op TYPE icmp IMPL auto LATENCY 1}
      {MODELNAME poseidon_top_add_256ns_256s_256_2_1 RTLNAME poseidon_top_add_256ns_256s_256_2_1 BINDTYPE op TYPE add IMPL fabric LATENCY 1}
    }
  }
  {SRCNAME poseidon_top_Pipeline_VITIS_LOOP_92_3 MODELNAME poseidon_top_Pipeline_VITIS_LOOP_92_3 RTLNAME poseidon_top_poseidon_top_Pipeline_VITIS_LOOP_92_3
    SUBMODULES {
      {MODELNAME poseidon_top_sparsemux_49_5_256_1_1 RTLNAME poseidon_top_sparsemux_49_5_256_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME poseidon_top MODELNAME poseidon_top RTLNAME poseidon_top IS_TOP 1
    SUBMODULES {
      {MODELNAME poseidon_top_gmem_m_axi RTLNAME poseidon_top_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME poseidon_top_control_s_axi RTLNAME poseidon_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME poseidon_top_regslice_both RTLNAME poseidon_top_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME poseidon_top_regslice_both_U}
    }
  }
}
