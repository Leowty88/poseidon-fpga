set moduleName poseidon_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {poseidon_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 256 regular {axi_master 0}  }
	{ in_stream int 512 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ out_stream int 512 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ round_constants int 64 regular {axi_slave 0}  }
	{ mds_matrix int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "round_constants","offset": { "type": "dynamic","port_name": "round_constants","bundle": "control"},"direction": "READONLY"},{"cName": "mds_matrix","offset": { "type": "dynamic","port_name": "mds_matrix","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "in_stream", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "round_constants", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "mds_matrix", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 71
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ in_stream_TDATA sc_in sc_lv 512 signal 1 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 1 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 1 } 
	{ out_stream_TDATA sc_out sc_lv 512 signal 2 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 2 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"poseidon_top","role":"start","value":"0","valid_bit":"0"},{"name":"poseidon_top","role":"continue","value":"0","valid_bit":"4"},{"name":"poseidon_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"round_constants","role":"data","value":"16"},{"name":"mds_matrix","role":"data","value":"28"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"poseidon_top","role":"start","value":"0","valid_bit":"0"},{"name":"poseidon_top","role":"done","value":"0","valid_bit":"1"},{"name":"poseidon_top","role":"idle","value":"0","valid_bit":"2"},{"name":"poseidon_top","role":"ready","value":"0","valid_bit":"3"},{"name":"poseidon_top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "in_stream", "role": "TDATA" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream", "role": "TVALID" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream", "role": "TREADY" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "out_stream", "role": "TDATA" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream", "role": "TVALID" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "6", "13", "20", "27", "34", "41", "48", "55", "62", "69", "76", "83", "90", "97", "104", "111", "118", "125", "132", "139", "146", "153", "160", "167", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341"],
		"CDFG" : "poseidon_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "187194", "EstimateLatencyMax" : "293274",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "grp_poseidon_top_Pipeline_mds_row_fu_959", "Port" : "gmem", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "in_stream", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_poseidon_top_Pipeline_VITIS_LOOP_42_1_fu_784", "Port" : "in_stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_stream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_poseidon_top_Pipeline_VITIS_LOOP_92_3_fu_814", "Port" : "out_stream", "Inst_start_state" : "5", "Inst_end_state" : "45"}]},
			{"Name" : "round_constants", "Type" : "None", "Direction" : "I"},
			{"Name" : "mds_matrix", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "permutation_loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "46", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state44"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state45"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_VITIS_LOOP_42_1_fu_784", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "poseidon_top_Pipeline_VITIS_LOOP_42_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_stream", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arrayidx11_23_promoted103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_22_promoted101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_21_promoted99_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_20_promoted97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_19_promoted95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_18_promoted93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_17_promoted91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_16_promoted89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_15_promoted87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_14_promoted85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_13_promoted83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_12_promoted81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_11_promoted79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_10_promoted77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_9_promoted75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_8_promoted73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_7_promoted71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_6_promoted69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_5_promoted67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_4_promoted65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_3_promoted63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_2_promoted61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx11_1_promoted59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx82_promoted57_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_42_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_VITIS_LOOP_42_1_fu_784.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_VITIS_LOOP_92_3_fu_814", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "poseidon_top_Pipeline_VITIS_LOOP_92_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_0_0_01942", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_144", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_246", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_348", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_450", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_552", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_654", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_756", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_858", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_960", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_1062", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_1164", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_1266", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_1368", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_1470", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_1572", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_1674", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_1776", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_1878", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_1980", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_2082", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_2184", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_2286", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_011_2388", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_stream", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_VITIS_LOOP_92_3_fu_814.sparsemux_49_5_256_1_1_U194", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_VITIS_LOOP_92_3_fu_814.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_844", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_844.mul_256ns_256ns_511_5_1_U26", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_844.mul_256ns_256ns_512_5_1_U27", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_844.mul_510s_510s_510_5_1_U28", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_844.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_844.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_844.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "6"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_849", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18", "19"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_849.mul_256ns_256ns_511_5_1_U26", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_849.mul_256ns_256ns_512_5_1_U27", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_849.mul_510s_510s_510_5_1_U28", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_849.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_849.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "13"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_849.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "13"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_854", "Parent" : "0", "Child" : ["21", "22", "23", "24", "25", "26"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_854.mul_256ns_256ns_511_5_1_U26", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_854.mul_256ns_256ns_512_5_1_U27", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_854.mul_510s_510s_510_5_1_U28", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_854.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "20"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_854.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "20"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_854.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "20"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_859", "Parent" : "0", "Child" : ["28", "29", "30", "31", "32", "33"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_859.mul_256ns_256ns_511_5_1_U26", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_859.mul_256ns_256ns_512_5_1_U27", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_859.mul_510s_510s_510_5_1_U28", "Parent" : "27"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_859.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "27"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_859.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "27"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_859.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "27"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_864", "Parent" : "0", "Child" : ["35", "36", "37", "38", "39", "40"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_864.mul_256ns_256ns_511_5_1_U26", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_864.mul_256ns_256ns_512_5_1_U27", "Parent" : "34"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_864.mul_510s_510s_510_5_1_U28", "Parent" : "34"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_864.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "34"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_864.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "34"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_864.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "34"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_869", "Parent" : "0", "Child" : ["42", "43", "44", "45", "46", "47"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_869.mul_256ns_256ns_511_5_1_U26", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_869.mul_256ns_256ns_512_5_1_U27", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_869.mul_510s_510s_510_5_1_U28", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_869.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "41"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_869.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "41"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_869.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "41"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_874", "Parent" : "0", "Child" : ["49", "50", "51", "52", "53", "54"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_874.mul_256ns_256ns_511_5_1_U26", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_874.mul_256ns_256ns_512_5_1_U27", "Parent" : "48"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_874.mul_510s_510s_510_5_1_U28", "Parent" : "48"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_874.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "48"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_874.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "48"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_874.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "48"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_879", "Parent" : "0", "Child" : ["56", "57", "58", "59", "60", "61"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_879.mul_256ns_256ns_511_5_1_U26", "Parent" : "55"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_879.mul_256ns_256ns_512_5_1_U27", "Parent" : "55"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_879.mul_510s_510s_510_5_1_U28", "Parent" : "55"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_879.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "55"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_879.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "55"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_879.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "55"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_884", "Parent" : "0", "Child" : ["63", "64", "65", "66", "67", "68"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_884.mul_256ns_256ns_511_5_1_U26", "Parent" : "62"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_884.mul_256ns_256ns_512_5_1_U27", "Parent" : "62"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_884.mul_510s_510s_510_5_1_U28", "Parent" : "62"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_884.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "62"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_884.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "62"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_884.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "62"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_889", "Parent" : "0", "Child" : ["70", "71", "72", "73", "74", "75"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_889.mul_256ns_256ns_511_5_1_U26", "Parent" : "69"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_889.mul_256ns_256ns_512_5_1_U27", "Parent" : "69"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_889.mul_510s_510s_510_5_1_U28", "Parent" : "69"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_889.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "69"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_889.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "69"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_889.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "69"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_894", "Parent" : "0", "Child" : ["77", "78", "79", "80", "81", "82"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_894.mul_256ns_256ns_511_5_1_U26", "Parent" : "76"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_894.mul_256ns_256ns_512_5_1_U27", "Parent" : "76"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_894.mul_510s_510s_510_5_1_U28", "Parent" : "76"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_894.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "76"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_894.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "76"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_894.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "76"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_899", "Parent" : "0", "Child" : ["84", "85", "86", "87", "88", "89"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_899.mul_256ns_256ns_511_5_1_U26", "Parent" : "83"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_899.mul_256ns_256ns_512_5_1_U27", "Parent" : "83"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_899.mul_510s_510s_510_5_1_U28", "Parent" : "83"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_899.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "83"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_899.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "83"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_899.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "83"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_904", "Parent" : "0", "Child" : ["91", "92", "93", "94", "95", "96"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_904.mul_256ns_256ns_511_5_1_U26", "Parent" : "90"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_904.mul_256ns_256ns_512_5_1_U27", "Parent" : "90"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_904.mul_510s_510s_510_5_1_U28", "Parent" : "90"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_904.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "90"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_904.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "90"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_904.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "90"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_909", "Parent" : "0", "Child" : ["98", "99", "100", "101", "102", "103"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_909.mul_256ns_256ns_511_5_1_U26", "Parent" : "97"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_909.mul_256ns_256ns_512_5_1_U27", "Parent" : "97"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_909.mul_510s_510s_510_5_1_U28", "Parent" : "97"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_909.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "97"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_909.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "97"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_909.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "97"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_914", "Parent" : "0", "Child" : ["105", "106", "107", "108", "109", "110"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_914.mul_256ns_256ns_511_5_1_U26", "Parent" : "104"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_914.mul_256ns_256ns_512_5_1_U27", "Parent" : "104"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_914.mul_510s_510s_510_5_1_U28", "Parent" : "104"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_914.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "104"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_914.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "104"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_914.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "104"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_919", "Parent" : "0", "Child" : ["112", "113", "114", "115", "116", "117"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_919.mul_256ns_256ns_511_5_1_U26", "Parent" : "111"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_919.mul_256ns_256ns_512_5_1_U27", "Parent" : "111"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_919.mul_510s_510s_510_5_1_U28", "Parent" : "111"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_919.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "111"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_919.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "111"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_919.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "111"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_924", "Parent" : "0", "Child" : ["119", "120", "121", "122", "123", "124"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_924.mul_256ns_256ns_511_5_1_U26", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_924.mul_256ns_256ns_512_5_1_U27", "Parent" : "118"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_924.mul_510s_510s_510_5_1_U28", "Parent" : "118"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_924.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "118"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_924.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "118"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_924.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "118"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_929", "Parent" : "0", "Child" : ["126", "127", "128", "129", "130", "131"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_929.mul_256ns_256ns_511_5_1_U26", "Parent" : "125"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_929.mul_256ns_256ns_512_5_1_U27", "Parent" : "125"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_929.mul_510s_510s_510_5_1_U28", "Parent" : "125"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_929.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "125"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_929.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "125"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_929.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "125"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_934", "Parent" : "0", "Child" : ["133", "134", "135", "136", "137", "138"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_934.mul_256ns_256ns_511_5_1_U26", "Parent" : "132"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_934.mul_256ns_256ns_512_5_1_U27", "Parent" : "132"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_934.mul_510s_510s_510_5_1_U28", "Parent" : "132"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_934.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "132"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_934.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "132"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_934.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "132"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_939", "Parent" : "0", "Child" : ["140", "141", "142", "143", "144", "145"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_939.mul_256ns_256ns_511_5_1_U26", "Parent" : "139"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_939.mul_256ns_256ns_512_5_1_U27", "Parent" : "139"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_939.mul_510s_510s_510_5_1_U28", "Parent" : "139"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_939.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "139"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_939.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "139"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_939.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "139"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_944", "Parent" : "0", "Child" : ["147", "148", "149", "150", "151", "152"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_944.mul_256ns_256ns_511_5_1_U26", "Parent" : "146"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_944.mul_256ns_256ns_512_5_1_U27", "Parent" : "146"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_944.mul_510s_510s_510_5_1_U28", "Parent" : "146"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_944.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "146"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_944.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "146"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_944.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "146"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_949", "Parent" : "0", "Child" : ["154", "155", "156", "157", "158", "159"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_949.mul_256ns_256ns_511_5_1_U26", "Parent" : "153"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_949.mul_256ns_256ns_512_5_1_U27", "Parent" : "153"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_949.mul_510s_510s_510_5_1_U28", "Parent" : "153"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_949.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "153"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_949.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "153"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_949.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "153"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_954", "Parent" : "0", "Child" : ["161", "162", "163", "164", "165", "166"],
		"CDFG" : "sbox_quintic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1559", "EstimateLatencyMax" : "1559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_954.mul_256ns_256ns_511_5_1_U26", "Parent" : "160"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_954.mul_256ns_256ns_512_5_1_U27", "Parent" : "160"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_954.mul_510s_510s_510_5_1_U28", "Parent" : "160"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_954.urem_512ns_256ns_510_516_seq_1_U29", "Parent" : "160"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_954.urem_510ns_256ns_510_514_seq_1_U30", "Parent" : "160"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sbox_quintic_fu_954.urem_511ns_256ns_255_515_seq_1_U31", "Parent" : "160"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959", "Parent" : "0", "Child" : ["168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265"],
		"CDFG" : "poseidon_top_Pipeline_mds_row",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1154", "EstimateLatencyMax" : "1154",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln50", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln15_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "next_state_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "next_state_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "mds_row", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "24", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter25", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter25", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.mul_256ns_255ns_511_5_1_U39", "Parent" : "167"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.mul_256ns_256ns_512_5_1_U40", "Parent" : "167"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_511ns_256ns_255_515_1_U41", "Parent" : "167"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U42", "Parent" : "167"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U43", "Parent" : "167"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U44", "Parent" : "167"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U45", "Parent" : "167"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U46", "Parent" : "167"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U47", "Parent" : "167"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U48", "Parent" : "167"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U49", "Parent" : "167"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U50", "Parent" : "167"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U51", "Parent" : "167"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U52", "Parent" : "167"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U53", "Parent" : "167"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U54", "Parent" : "167"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U55", "Parent" : "167"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U56", "Parent" : "167"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U57", "Parent" : "167"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U58", "Parent" : "167"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U59", "Parent" : "167"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U60", "Parent" : "167"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U61", "Parent" : "167"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U62", "Parent" : "167"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U63", "Parent" : "167"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.urem_512ns_256ns_256_516_1_U64", "Parent" : "167"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_255ns_255ns_1_2_1_U65", "Parent" : "167"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_255ns_255ns_255_2_1_U66", "Parent" : "167"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U67", "Parent" : "167"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U68", "Parent" : "167"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U69", "Parent" : "167"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U70", "Parent" : "167"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U71", "Parent" : "167"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U72", "Parent" : "167"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U73", "Parent" : "167"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U74", "Parent" : "167"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U75", "Parent" : "167"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U76", "Parent" : "167"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U77", "Parent" : "167"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U78", "Parent" : "167"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U79", "Parent" : "167"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U80", "Parent" : "167"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U81", "Parent" : "167"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U82", "Parent" : "167"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U83", "Parent" : "167"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U84", "Parent" : "167"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U85", "Parent" : "167"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U86", "Parent" : "167"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U87", "Parent" : "167"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U88", "Parent" : "167"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U89", "Parent" : "167"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U90", "Parent" : "167"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U91", "Parent" : "167"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U92", "Parent" : "167"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U93", "Parent" : "167"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U94", "Parent" : "167"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U95", "Parent" : "167"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U96", "Parent" : "167"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U97", "Parent" : "167"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U98", "Parent" : "167"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U99", "Parent" : "167"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U100", "Parent" : "167"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U101", "Parent" : "167"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U102", "Parent" : "167"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U103", "Parent" : "167"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U104", "Parent" : "167"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U105", "Parent" : "167"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U106", "Parent" : "167"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U107", "Parent" : "167"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U108", "Parent" : "167"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U109", "Parent" : "167"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U110", "Parent" : "167"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U111", "Parent" : "167"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U112", "Parent" : "167"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U113", "Parent" : "167"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U114", "Parent" : "167"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U115", "Parent" : "167"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U116", "Parent" : "167"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U117", "Parent" : "167"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U118", "Parent" : "167"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U119", "Parent" : "167"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U120", "Parent" : "167"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U121", "Parent" : "167"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U122", "Parent" : "167"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U123", "Parent" : "167"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U124", "Parent" : "167"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U125", "Parent" : "167"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U126", "Parent" : "167"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U127", "Parent" : "167"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U128", "Parent" : "167"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U129", "Parent" : "167"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U130", "Parent" : "167"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U131", "Parent" : "167"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U132", "Parent" : "167"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256ns_256_2_1_U133", "Parent" : "167"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.icmp_256ns_256ns_1_2_1_U134", "Parent" : "167"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.add_256ns_256s_256_2_1_U135", "Parent" : "167"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poseidon_top_Pipeline_mds_row_fu_959.flow_control_loop_pipe_sequential_init_U", "Parent" : "167"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U221", "Parent" : "0"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U222", "Parent" : "0"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U223", "Parent" : "0"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U224", "Parent" : "0"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U225", "Parent" : "0"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U226", "Parent" : "0"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U227", "Parent" : "0"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U228", "Parent" : "0"},
	{"ID" : "276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U229", "Parent" : "0"},
	{"ID" : "277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U230", "Parent" : "0"},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U231", "Parent" : "0"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U232", "Parent" : "0"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U233", "Parent" : "0"},
	{"ID" : "281", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U234", "Parent" : "0"},
	{"ID" : "282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U235", "Parent" : "0"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U236", "Parent" : "0"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U237", "Parent" : "0"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U238", "Parent" : "0"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U239", "Parent" : "0"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U240", "Parent" : "0"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U241", "Parent" : "0"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U242", "Parent" : "0"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U243", "Parent" : "0"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U244", "Parent" : "0"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U245", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U246", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U247", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U248", "Parent" : "0"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U249", "Parent" : "0"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U250", "Parent" : "0"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U251", "Parent" : "0"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U252", "Parent" : "0"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U253", "Parent" : "0"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U254", "Parent" : "0"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U255", "Parent" : "0"},
	{"ID" : "303", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U256", "Parent" : "0"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U257", "Parent" : "0"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256ns_256_2_1_U258", "Parent" : "0"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U259", "Parent" : "0"},
	{"ID" : "307", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U260", "Parent" : "0"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U261", "Parent" : "0"},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U262", "Parent" : "0"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U263", "Parent" : "0"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U264", "Parent" : "0"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U265", "Parent" : "0"},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U266", "Parent" : "0"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U267", "Parent" : "0"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U268", "Parent" : "0"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U269", "Parent" : "0"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U270", "Parent" : "0"},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U271", "Parent" : "0"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U272", "Parent" : "0"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U273", "Parent" : "0"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U274", "Parent" : "0"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U275", "Parent" : "0"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U276", "Parent" : "0"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U277", "Parent" : "0"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U278", "Parent" : "0"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U279", "Parent" : "0"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U280", "Parent" : "0"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U281", "Parent" : "0"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U282", "Parent" : "0"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U283", "Parent" : "0"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U284", "Parent" : "0"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U285", "Parent" : "0"},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U286", "Parent" : "0"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U287", "Parent" : "0"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U288", "Parent" : "0"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U289", "Parent" : "0"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U290", "Parent" : "0"},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_256ns_256ns_1_2_1_U291", "Parent" : "0"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_256ns_256s_256_2_1_U292", "Parent" : "0"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_U", "Parent" : "0"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	poseidon_top {
		gmem {Type I LastRead 36 FirstWrite -1}
		in_stream {Type I LastRead 0 FirstWrite -1}
		out_stream {Type O LastRead -1 FirstWrite 1}
		round_constants {Type I LastRead 0 FirstWrite -1}
		mds_matrix {Type I LastRead 0 FirstWrite -1}}
	poseidon_top_Pipeline_VITIS_LOOP_42_1 {
		in_stream {Type I LastRead 0 FirstWrite -1}
		arrayidx11_23_promoted103_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_22_promoted101_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_21_promoted99_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_20_promoted97_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_19_promoted95_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_18_promoted93_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_17_promoted91_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_16_promoted89_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_15_promoted87_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_14_promoted85_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_13_promoted83_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_12_promoted81_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_11_promoted79_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_10_promoted77_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_9_promoted75_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_8_promoted73_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_7_promoted71_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_6_promoted69_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_5_promoted67_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_4_promoted65_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_3_promoted63_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_2_promoted61_out {Type O LastRead -1 FirstWrite 0}
		arrayidx11_1_promoted59_out {Type O LastRead -1 FirstWrite 0}
		arrayidx82_promoted57_out {Type O LastRead -1 FirstWrite 0}}
	poseidon_top_Pipeline_VITIS_LOOP_92_3 {
		p_0_0_01942 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_144 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_246 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_348 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_450 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_552 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_654 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_756 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_858 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_960 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_1062 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_1164 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_1266 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_1368 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_1470 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_1572 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_1674 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_1776 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_1878 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_1980 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_2082 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_2184 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_2286 {Type I LastRead 0 FirstWrite -1}
		p_0_0_011_2388 {Type I LastRead 0 FirstWrite -1}
		out_stream {Type O LastRead -1 FirstWrite 1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	sbox_quintic {
		x_val {Type I LastRead 0 FirstWrite -1}}
	poseidon_top_Pipeline_mds_row {
		gmem {Type I LastRead 32 FirstWrite -1}
		sext_ln50 {Type I LastRead 0 FirstWrite -1}
		zext_ln15 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_8 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_9 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_11 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_12 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_13 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_14 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_15 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_16 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_17 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_18 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_19 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_20 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_21 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_22 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_23 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_24 {Type I LastRead 0 FirstWrite -1}
		zext_ln15_25 {Type I LastRead 0 FirstWrite -1}
		next_state_23_out {Type O LastRead -1 FirstWrite 0}
		next_state_22_out {Type O LastRead -1 FirstWrite 0}
		next_state_21_out {Type O LastRead -1 FirstWrite 0}
		next_state_20_out {Type O LastRead -1 FirstWrite 0}
		next_state_19_out {Type O LastRead -1 FirstWrite 0}
		next_state_18_out {Type O LastRead -1 FirstWrite 0}
		next_state_17_out {Type O LastRead -1 FirstWrite 0}
		next_state_16_out {Type O LastRead -1 FirstWrite 0}
		next_state_15_out {Type O LastRead -1 FirstWrite 0}
		next_state_14_out {Type O LastRead -1 FirstWrite 0}
		next_state_13_out {Type O LastRead -1 FirstWrite 0}
		next_state_12_out {Type O LastRead -1 FirstWrite 0}
		next_state_11_out {Type O LastRead -1 FirstWrite 0}
		next_state_10_out {Type O LastRead -1 FirstWrite 0}
		next_state_9_out {Type O LastRead -1 FirstWrite 0}
		next_state_8_out {Type O LastRead -1 FirstWrite 0}
		next_state_7_out {Type O LastRead -1 FirstWrite 0}
		next_state_6_out {Type O LastRead -1 FirstWrite 0}
		next_state_5_out {Type O LastRead -1 FirstWrite 0}
		next_state_4_out {Type O LastRead -1 FirstWrite 0}
		next_state_3_out {Type O LastRead -1 FirstWrite 0}
		next_state_2_out {Type O LastRead -1 FirstWrite 0}
		next_state_1_out {Type O LastRead -1 FirstWrite 0}
		next_state_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "187194", "Max" : "293274"}
	, {"Name" : "Interval", "Min" : "187195", "Max" : "293275"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 256 }  { m_axi_gmem_WSTRB STRB 1 32 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 256 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	in_stream { axis {  { in_stream_TDATA in_data 0 512 }  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 } } }
	out_stream { axis {  { out_stream_TDATA out_data 1 512 }  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
