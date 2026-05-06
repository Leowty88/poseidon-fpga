# This script segment is generated automatically by AutoPilot

set name poseidon_top_mul_256ns_255ns_511_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


set name poseidon_top_urem_511ns_256ns_255_515_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 514 ALLOW_PRAGMA 1
}


set name poseidon_top_urem_512ns_256ns_256_516_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 515 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler poseidon_top_icmp_255ns_255ns_1_2_1 BINDTYPE {op} TYPE {icmp} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler poseidon_top_icmp_255ns_255ns_1_2_1_sub BINDTYPE {op} TYPE {icmp} IMPL {auto} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler poseidon_top_add_255ns_255ns_255_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler poseidon_top_add_256ns_256ns_256_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler poseidon_top_icmp_256ns_256ns_1_2_1 BINDTYPE {op} TYPE {icmp} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler poseidon_top_icmp_256ns_256ns_1_2_1_sub BINDTYPE {op} TYPE {icmp} IMPL {auto} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler poseidon_top_add_256ns_256s_256_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name gmem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 256 vector } m_axi_gmem_WSTRB { O 32 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 256 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RFIFONUM { I 9 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name sext_ln50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln50 \
    op interface \
    ports { sext_ln50 { I 59 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name zext_ln15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15 \
    op interface \
    ports { zext_ln15 { I 255 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name zext_ln15_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_3 \
    op interface \
    ports { zext_ln15_3 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name zext_ln15_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_4 \
    op interface \
    ports { zext_ln15_4 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name zext_ln15_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_5 \
    op interface \
    ports { zext_ln15_5 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name zext_ln15_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_6 \
    op interface \
    ports { zext_ln15_6 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name zext_ln15_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_7 \
    op interface \
    ports { zext_ln15_7 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name zext_ln15_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_8 \
    op interface \
    ports { zext_ln15_8 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name zext_ln15_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_9 \
    op interface \
    ports { zext_ln15_9 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name zext_ln15_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_10 \
    op interface \
    ports { zext_ln15_10 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name zext_ln15_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_11 \
    op interface \
    ports { zext_ln15_11 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name zext_ln15_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_12 \
    op interface \
    ports { zext_ln15_12 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name zext_ln15_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_13 \
    op interface \
    ports { zext_ln15_13 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name zext_ln15_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_14 \
    op interface \
    ports { zext_ln15_14 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name zext_ln15_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_15 \
    op interface \
    ports { zext_ln15_15 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name zext_ln15_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_16 \
    op interface \
    ports { zext_ln15_16 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name zext_ln15_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_17 \
    op interface \
    ports { zext_ln15_17 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name zext_ln15_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_18 \
    op interface \
    ports { zext_ln15_18 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name zext_ln15_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_19 \
    op interface \
    ports { zext_ln15_19 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name zext_ln15_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_20 \
    op interface \
    ports { zext_ln15_20 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name zext_ln15_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_21 \
    op interface \
    ports { zext_ln15_21 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name zext_ln15_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_22 \
    op interface \
    ports { zext_ln15_22 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name zext_ln15_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_23 \
    op interface \
    ports { zext_ln15_23 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name zext_ln15_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_24 \
    op interface \
    ports { zext_ln15_24 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name zext_ln15_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln15_25 \
    op interface \
    ports { zext_ln15_25 { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name next_state_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_23_out \
    op interface \
    ports { next_state_23_out { O 256 vector } next_state_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name next_state_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_22_out \
    op interface \
    ports { next_state_22_out { O 256 vector } next_state_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name next_state_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_21_out \
    op interface \
    ports { next_state_21_out { O 256 vector } next_state_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name next_state_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_20_out \
    op interface \
    ports { next_state_20_out { O 256 vector } next_state_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name next_state_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_19_out \
    op interface \
    ports { next_state_19_out { O 256 vector } next_state_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name next_state_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_18_out \
    op interface \
    ports { next_state_18_out { O 256 vector } next_state_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name next_state_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_17_out \
    op interface \
    ports { next_state_17_out { O 256 vector } next_state_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name next_state_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_16_out \
    op interface \
    ports { next_state_16_out { O 256 vector } next_state_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name next_state_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_15_out \
    op interface \
    ports { next_state_15_out { O 256 vector } next_state_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name next_state_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_14_out \
    op interface \
    ports { next_state_14_out { O 256 vector } next_state_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name next_state_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_13_out \
    op interface \
    ports { next_state_13_out { O 256 vector } next_state_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name next_state_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_12_out \
    op interface \
    ports { next_state_12_out { O 256 vector } next_state_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name next_state_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_11_out \
    op interface \
    ports { next_state_11_out { O 256 vector } next_state_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name next_state_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_10_out \
    op interface \
    ports { next_state_10_out { O 256 vector } next_state_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name next_state_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_9_out \
    op interface \
    ports { next_state_9_out { O 256 vector } next_state_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name next_state_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_8_out \
    op interface \
    ports { next_state_8_out { O 256 vector } next_state_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name next_state_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_7_out \
    op interface \
    ports { next_state_7_out { O 256 vector } next_state_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name next_state_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_6_out \
    op interface \
    ports { next_state_6_out { O 256 vector } next_state_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name next_state_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_5_out \
    op interface \
    ports { next_state_5_out { O 256 vector } next_state_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name next_state_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_4_out \
    op interface \
    ports { next_state_4_out { O 256 vector } next_state_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name next_state_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_3_out \
    op interface \
    ports { next_state_3_out { O 256 vector } next_state_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name next_state_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_2_out \
    op interface \
    ports { next_state_2_out { O 256 vector } next_state_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name next_state_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_1_out \
    op interface \
    ports { next_state_1_out { O 256 vector } next_state_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name next_state_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_next_state_out \
    op interface \
    ports { next_state_out { O 256 vector } next_state_out_ap_vld { O 1 bit } } \
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


