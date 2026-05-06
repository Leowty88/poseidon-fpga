set moduleName poseidon_top_Pipeline_VITIS_LOOP_92_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {poseidon_top_Pipeline_VITIS_LOOP_92_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_0_0_01942 int 256 regular  }
	{ p_0_0_011_144 int 256 regular  }
	{ p_0_0_011_246 int 256 regular  }
	{ p_0_0_011_348 int 256 regular  }
	{ p_0_0_011_450 int 256 regular  }
	{ p_0_0_011_552 int 256 regular  }
	{ p_0_0_011_654 int 256 regular  }
	{ p_0_0_011_756 int 256 regular  }
	{ p_0_0_011_858 int 256 regular  }
	{ p_0_0_011_960 int 256 regular  }
	{ p_0_0_011_1062 int 256 regular  }
	{ p_0_0_011_1164 int 256 regular  }
	{ p_0_0_011_1266 int 256 regular  }
	{ p_0_0_011_1368 int 256 regular  }
	{ p_0_0_011_1470 int 256 regular  }
	{ p_0_0_011_1572 int 256 regular  }
	{ p_0_0_011_1674 int 256 regular  }
	{ p_0_0_011_1776 int 256 regular  }
	{ p_0_0_011_1878 int 256 regular  }
	{ p_0_0_011_1980 int 256 regular  }
	{ p_0_0_011_2082 int 256 regular  }
	{ p_0_0_011_2184 int 256 regular  }
	{ p_0_0_011_2286 int 256 regular  }
	{ p_0_0_011_2388 int 256 regular  }
	{ out_stream int 512 regular {axi_s 1 volatile  { out_stream Data } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "p_0_0_01942", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_144", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_246", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_348", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_450", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_552", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_654", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_756", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_858", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_960", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_1062", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_1164", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_1266", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_1368", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_1470", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_1572", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_1674", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_1776", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_1878", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_1980", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_2082", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_2184", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_2286", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_011_2388", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 24 } 
	{ p_0_0_01942 sc_in sc_lv 256 signal 0 } 
	{ p_0_0_011_144 sc_in sc_lv 256 signal 1 } 
	{ p_0_0_011_246 sc_in sc_lv 256 signal 2 } 
	{ p_0_0_011_348 sc_in sc_lv 256 signal 3 } 
	{ p_0_0_011_450 sc_in sc_lv 256 signal 4 } 
	{ p_0_0_011_552 sc_in sc_lv 256 signal 5 } 
	{ p_0_0_011_654 sc_in sc_lv 256 signal 6 } 
	{ p_0_0_011_756 sc_in sc_lv 256 signal 7 } 
	{ p_0_0_011_858 sc_in sc_lv 256 signal 8 } 
	{ p_0_0_011_960 sc_in sc_lv 256 signal 9 } 
	{ p_0_0_011_1062 sc_in sc_lv 256 signal 10 } 
	{ p_0_0_011_1164 sc_in sc_lv 256 signal 11 } 
	{ p_0_0_011_1266 sc_in sc_lv 256 signal 12 } 
	{ p_0_0_011_1368 sc_in sc_lv 256 signal 13 } 
	{ p_0_0_011_1470 sc_in sc_lv 256 signal 14 } 
	{ p_0_0_011_1572 sc_in sc_lv 256 signal 15 } 
	{ p_0_0_011_1674 sc_in sc_lv 256 signal 16 } 
	{ p_0_0_011_1776 sc_in sc_lv 256 signal 17 } 
	{ p_0_0_011_1878 sc_in sc_lv 256 signal 18 } 
	{ p_0_0_011_1980 sc_in sc_lv 256 signal 19 } 
	{ p_0_0_011_2082 sc_in sc_lv 256 signal 20 } 
	{ p_0_0_011_2184 sc_in sc_lv 256 signal 21 } 
	{ p_0_0_011_2286 sc_in sc_lv 256 signal 22 } 
	{ p_0_0_011_2388 sc_in sc_lv 256 signal 23 } 
	{ out_stream_TDATA sc_out sc_lv 512 signal 24 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 24 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream", "role": "TREADY" }} , 
 	{ "name": "p_0_0_01942", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_01942", "role": "default" }} , 
 	{ "name": "p_0_0_011_144", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_144", "role": "default" }} , 
 	{ "name": "p_0_0_011_246", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_246", "role": "default" }} , 
 	{ "name": "p_0_0_011_348", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_348", "role": "default" }} , 
 	{ "name": "p_0_0_011_450", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_450", "role": "default" }} , 
 	{ "name": "p_0_0_011_552", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_552", "role": "default" }} , 
 	{ "name": "p_0_0_011_654", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_654", "role": "default" }} , 
 	{ "name": "p_0_0_011_756", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_756", "role": "default" }} , 
 	{ "name": "p_0_0_011_858", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_858", "role": "default" }} , 
 	{ "name": "p_0_0_011_960", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_960", "role": "default" }} , 
 	{ "name": "p_0_0_011_1062", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_1062", "role": "default" }} , 
 	{ "name": "p_0_0_011_1164", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_1164", "role": "default" }} , 
 	{ "name": "p_0_0_011_1266", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_1266", "role": "default" }} , 
 	{ "name": "p_0_0_011_1368", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_1368", "role": "default" }} , 
 	{ "name": "p_0_0_011_1470", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_1470", "role": "default" }} , 
 	{ "name": "p_0_0_011_1572", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_1572", "role": "default" }} , 
 	{ "name": "p_0_0_011_1674", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_1674", "role": "default" }} , 
 	{ "name": "p_0_0_011_1776", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_1776", "role": "default" }} , 
 	{ "name": "p_0_0_011_1878", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_1878", "role": "default" }} , 
 	{ "name": "p_0_0_011_1980", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_1980", "role": "default" }} , 
 	{ "name": "p_0_0_011_2082", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_2082", "role": "default" }} , 
 	{ "name": "p_0_0_011_2184", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_2184", "role": "default" }} , 
 	{ "name": "p_0_0_011_2286", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_2286", "role": "default" }} , 
 	{ "name": "p_0_0_011_2388", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "p_0_0_011_2388", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "out_stream", "role": "TDATA" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_49_5_256_1_1_U194", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		out_stream {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26", "Max" : "26"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "26"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_0_0_01942 { ap_none {  { p_0_0_01942 in_data 0 256 } } }
	p_0_0_011_144 { ap_none {  { p_0_0_011_144 in_data 0 256 } } }
	p_0_0_011_246 { ap_none {  { p_0_0_011_246 in_data 0 256 } } }
	p_0_0_011_348 { ap_none {  { p_0_0_011_348 in_data 0 256 } } }
	p_0_0_011_450 { ap_none {  { p_0_0_011_450 in_data 0 256 } } }
	p_0_0_011_552 { ap_none {  { p_0_0_011_552 in_data 0 256 } } }
	p_0_0_011_654 { ap_none {  { p_0_0_011_654 in_data 0 256 } } }
	p_0_0_011_756 { ap_none {  { p_0_0_011_756 in_data 0 256 } } }
	p_0_0_011_858 { ap_none {  { p_0_0_011_858 in_data 0 256 } } }
	p_0_0_011_960 { ap_none {  { p_0_0_011_960 in_data 0 256 } } }
	p_0_0_011_1062 { ap_none {  { p_0_0_011_1062 in_data 0 256 } } }
	p_0_0_011_1164 { ap_none {  { p_0_0_011_1164 in_data 0 256 } } }
	p_0_0_011_1266 { ap_none {  { p_0_0_011_1266 in_data 0 256 } } }
	p_0_0_011_1368 { ap_none {  { p_0_0_011_1368 in_data 0 256 } } }
	p_0_0_011_1470 { ap_none {  { p_0_0_011_1470 in_data 0 256 } } }
	p_0_0_011_1572 { ap_none {  { p_0_0_011_1572 in_data 0 256 } } }
	p_0_0_011_1674 { ap_none {  { p_0_0_011_1674 in_data 0 256 } } }
	p_0_0_011_1776 { ap_none {  { p_0_0_011_1776 in_data 0 256 } } }
	p_0_0_011_1878 { ap_none {  { p_0_0_011_1878 in_data 0 256 } } }
	p_0_0_011_1980 { ap_none {  { p_0_0_011_1980 in_data 0 256 } } }
	p_0_0_011_2082 { ap_none {  { p_0_0_011_2082 in_data 0 256 } } }
	p_0_0_011_2184 { ap_none {  { p_0_0_011_2184 in_data 0 256 } } }
	p_0_0_011_2286 { ap_none {  { p_0_0_011_2286 in_data 0 256 } } }
	p_0_0_011_2388 { ap_none {  { p_0_0_011_2388 in_data 0 256 } } }
	out_stream { axis {  { out_stream_TREADY out_acc 0 1 }  { out_stream_TDATA out_data 1 512 }  { out_stream_TVALID out_vld 1 1 } } }
}
