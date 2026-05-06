# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 1 \
    name in_stream \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { in_stream_TVALID { I 1 bit } in_stream_TDATA { I 512 vector } in_stream_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name arrayidx11_23_promoted103_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_23_promoted103_out \
    op interface \
    ports { arrayidx11_23_promoted103_out { O 256 vector } arrayidx11_23_promoted103_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name arrayidx11_22_promoted101_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_22_promoted101_out \
    op interface \
    ports { arrayidx11_22_promoted101_out { O 256 vector } arrayidx11_22_promoted101_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name arrayidx11_21_promoted99_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_21_promoted99_out \
    op interface \
    ports { arrayidx11_21_promoted99_out { O 256 vector } arrayidx11_21_promoted99_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name arrayidx11_20_promoted97_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_20_promoted97_out \
    op interface \
    ports { arrayidx11_20_promoted97_out { O 256 vector } arrayidx11_20_promoted97_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name arrayidx11_19_promoted95_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_19_promoted95_out \
    op interface \
    ports { arrayidx11_19_promoted95_out { O 256 vector } arrayidx11_19_promoted95_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name arrayidx11_18_promoted93_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_18_promoted93_out \
    op interface \
    ports { arrayidx11_18_promoted93_out { O 256 vector } arrayidx11_18_promoted93_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name arrayidx11_17_promoted91_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_17_promoted91_out \
    op interface \
    ports { arrayidx11_17_promoted91_out { O 256 vector } arrayidx11_17_promoted91_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name arrayidx11_16_promoted89_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_16_promoted89_out \
    op interface \
    ports { arrayidx11_16_promoted89_out { O 256 vector } arrayidx11_16_promoted89_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name arrayidx11_15_promoted87_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_15_promoted87_out \
    op interface \
    ports { arrayidx11_15_promoted87_out { O 256 vector } arrayidx11_15_promoted87_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name arrayidx11_14_promoted85_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_14_promoted85_out \
    op interface \
    ports { arrayidx11_14_promoted85_out { O 256 vector } arrayidx11_14_promoted85_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name arrayidx11_13_promoted83_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_13_promoted83_out \
    op interface \
    ports { arrayidx11_13_promoted83_out { O 256 vector } arrayidx11_13_promoted83_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name arrayidx11_12_promoted81_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_12_promoted81_out \
    op interface \
    ports { arrayidx11_12_promoted81_out { O 256 vector } arrayidx11_12_promoted81_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name arrayidx11_11_promoted79_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_11_promoted79_out \
    op interface \
    ports { arrayidx11_11_promoted79_out { O 256 vector } arrayidx11_11_promoted79_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name arrayidx11_10_promoted77_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_10_promoted77_out \
    op interface \
    ports { arrayidx11_10_promoted77_out { O 256 vector } arrayidx11_10_promoted77_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name arrayidx11_9_promoted75_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_9_promoted75_out \
    op interface \
    ports { arrayidx11_9_promoted75_out { O 256 vector } arrayidx11_9_promoted75_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name arrayidx11_8_promoted73_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_8_promoted73_out \
    op interface \
    ports { arrayidx11_8_promoted73_out { O 256 vector } arrayidx11_8_promoted73_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name arrayidx11_7_promoted71_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_7_promoted71_out \
    op interface \
    ports { arrayidx11_7_promoted71_out { O 256 vector } arrayidx11_7_promoted71_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name arrayidx11_6_promoted69_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_6_promoted69_out \
    op interface \
    ports { arrayidx11_6_promoted69_out { O 256 vector } arrayidx11_6_promoted69_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name arrayidx11_5_promoted67_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_5_promoted67_out \
    op interface \
    ports { arrayidx11_5_promoted67_out { O 256 vector } arrayidx11_5_promoted67_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name arrayidx11_4_promoted65_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_4_promoted65_out \
    op interface \
    ports { arrayidx11_4_promoted65_out { O 256 vector } arrayidx11_4_promoted65_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name arrayidx11_3_promoted63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_3_promoted63_out \
    op interface \
    ports { arrayidx11_3_promoted63_out { O 256 vector } arrayidx11_3_promoted63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name arrayidx11_2_promoted61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_2_promoted61_out \
    op interface \
    ports { arrayidx11_2_promoted61_out { O 256 vector } arrayidx11_2_promoted61_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name arrayidx11_1_promoted59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx11_1_promoted59_out \
    op interface \
    ports { arrayidx11_1_promoted59_out { O 256 vector } arrayidx11_1_promoted59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name arrayidx82_promoted57_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arrayidx82_promoted57_out \
    op interface \
    ports { arrayidx82_promoted57_out { O 256 vector } arrayidx82_promoted57_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName poseidon_top_flow_control_loop_pipe_sequential_init_U
set CompName poseidon_top_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix poseidon_top_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


