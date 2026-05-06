set moduleName poseidon_top_Pipeline_VITIS_LOOP_42_1
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
set C_modelName {poseidon_top_Pipeline_VITIS_LOOP_42_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream int 512 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ arrayidx11_23_promoted103_out int 256 regular {pointer 1}  }
	{ arrayidx11_22_promoted101_out int 256 regular {pointer 1}  }
	{ arrayidx11_21_promoted99_out int 256 regular {pointer 1}  }
	{ arrayidx11_20_promoted97_out int 256 regular {pointer 1}  }
	{ arrayidx11_19_promoted95_out int 256 regular {pointer 1}  }
	{ arrayidx11_18_promoted93_out int 256 regular {pointer 1}  }
	{ arrayidx11_17_promoted91_out int 256 regular {pointer 1}  }
	{ arrayidx11_16_promoted89_out int 256 regular {pointer 1}  }
	{ arrayidx11_15_promoted87_out int 256 regular {pointer 1}  }
	{ arrayidx11_14_promoted85_out int 256 regular {pointer 1}  }
	{ arrayidx11_13_promoted83_out int 256 regular {pointer 1}  }
	{ arrayidx11_12_promoted81_out int 256 regular {pointer 1}  }
	{ arrayidx11_11_promoted79_out int 256 regular {pointer 1}  }
	{ arrayidx11_10_promoted77_out int 256 regular {pointer 1}  }
	{ arrayidx11_9_promoted75_out int 256 regular {pointer 1}  }
	{ arrayidx11_8_promoted73_out int 256 regular {pointer 1}  }
	{ arrayidx11_7_promoted71_out int 256 regular {pointer 1}  }
	{ arrayidx11_6_promoted69_out int 256 regular {pointer 1}  }
	{ arrayidx11_5_promoted67_out int 256 regular {pointer 1}  }
	{ arrayidx11_4_promoted65_out int 256 regular {pointer 1}  }
	{ arrayidx11_3_promoted63_out int 256 regular {pointer 1}  }
	{ arrayidx11_2_promoted61_out int 256 regular {pointer 1}  }
	{ arrayidx11_1_promoted59_out int 256 regular {pointer 1}  }
	{ arrayidx82_promoted57_out int 256 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "in_stream", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "arrayidx11_23_promoted103_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_22_promoted101_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_21_promoted99_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_20_promoted97_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_19_promoted95_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_18_promoted93_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_17_promoted91_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_16_promoted89_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_15_promoted87_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_14_promoted85_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_13_promoted83_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_12_promoted81_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_11_promoted79_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_10_promoted77_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_9_promoted75_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_8_promoted73_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_7_promoted71_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_6_promoted69_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_5_promoted67_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_4_promoted65_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_3_promoted63_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_2_promoted61_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx11_1_promoted59_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx82_promoted57_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_stream_TDATA sc_in sc_lv 512 signal 0 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 0 } 
	{ arrayidx11_23_promoted103_out sc_out sc_lv 256 signal 1 } 
	{ arrayidx11_23_promoted103_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ arrayidx11_22_promoted101_out sc_out sc_lv 256 signal 2 } 
	{ arrayidx11_22_promoted101_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ arrayidx11_21_promoted99_out sc_out sc_lv 256 signal 3 } 
	{ arrayidx11_21_promoted99_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ arrayidx11_20_promoted97_out sc_out sc_lv 256 signal 4 } 
	{ arrayidx11_20_promoted97_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ arrayidx11_19_promoted95_out sc_out sc_lv 256 signal 5 } 
	{ arrayidx11_19_promoted95_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ arrayidx11_18_promoted93_out sc_out sc_lv 256 signal 6 } 
	{ arrayidx11_18_promoted93_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ arrayidx11_17_promoted91_out sc_out sc_lv 256 signal 7 } 
	{ arrayidx11_17_promoted91_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ arrayidx11_16_promoted89_out sc_out sc_lv 256 signal 8 } 
	{ arrayidx11_16_promoted89_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ arrayidx11_15_promoted87_out sc_out sc_lv 256 signal 9 } 
	{ arrayidx11_15_promoted87_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ arrayidx11_14_promoted85_out sc_out sc_lv 256 signal 10 } 
	{ arrayidx11_14_promoted85_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ arrayidx11_13_promoted83_out sc_out sc_lv 256 signal 11 } 
	{ arrayidx11_13_promoted83_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ arrayidx11_12_promoted81_out sc_out sc_lv 256 signal 12 } 
	{ arrayidx11_12_promoted81_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ arrayidx11_11_promoted79_out sc_out sc_lv 256 signal 13 } 
	{ arrayidx11_11_promoted79_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ arrayidx11_10_promoted77_out sc_out sc_lv 256 signal 14 } 
	{ arrayidx11_10_promoted77_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ arrayidx11_9_promoted75_out sc_out sc_lv 256 signal 15 } 
	{ arrayidx11_9_promoted75_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ arrayidx11_8_promoted73_out sc_out sc_lv 256 signal 16 } 
	{ arrayidx11_8_promoted73_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ arrayidx11_7_promoted71_out sc_out sc_lv 256 signal 17 } 
	{ arrayidx11_7_promoted71_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ arrayidx11_6_promoted69_out sc_out sc_lv 256 signal 18 } 
	{ arrayidx11_6_promoted69_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ arrayidx11_5_promoted67_out sc_out sc_lv 256 signal 19 } 
	{ arrayidx11_5_promoted67_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ arrayidx11_4_promoted65_out sc_out sc_lv 256 signal 20 } 
	{ arrayidx11_4_promoted65_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ arrayidx11_3_promoted63_out sc_out sc_lv 256 signal 21 } 
	{ arrayidx11_3_promoted63_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ arrayidx11_2_promoted61_out sc_out sc_lv 256 signal 22 } 
	{ arrayidx11_2_promoted61_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ arrayidx11_1_promoted59_out sc_out sc_lv 256 signal 23 } 
	{ arrayidx11_1_promoted59_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ arrayidx82_promoted57_out sc_out sc_lv 256 signal 24 } 
	{ arrayidx82_promoted57_out_ap_vld sc_out sc_logic 1 outvld 24 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream", "role": "TVALID" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "in_stream", "role": "TDATA" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream", "role": "TREADY" }} , 
 	{ "name": "arrayidx11_23_promoted103_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_23_promoted103_out", "role": "default" }} , 
 	{ "name": "arrayidx11_23_promoted103_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_23_promoted103_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_22_promoted101_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_22_promoted101_out", "role": "default" }} , 
 	{ "name": "arrayidx11_22_promoted101_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_22_promoted101_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_21_promoted99_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_21_promoted99_out", "role": "default" }} , 
 	{ "name": "arrayidx11_21_promoted99_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_21_promoted99_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_20_promoted97_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_20_promoted97_out", "role": "default" }} , 
 	{ "name": "arrayidx11_20_promoted97_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_20_promoted97_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_19_promoted95_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_19_promoted95_out", "role": "default" }} , 
 	{ "name": "arrayidx11_19_promoted95_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_19_promoted95_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_18_promoted93_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_18_promoted93_out", "role": "default" }} , 
 	{ "name": "arrayidx11_18_promoted93_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_18_promoted93_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_17_promoted91_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_17_promoted91_out", "role": "default" }} , 
 	{ "name": "arrayidx11_17_promoted91_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_17_promoted91_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_16_promoted89_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_16_promoted89_out", "role": "default" }} , 
 	{ "name": "arrayidx11_16_promoted89_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_16_promoted89_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_15_promoted87_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_15_promoted87_out", "role": "default" }} , 
 	{ "name": "arrayidx11_15_promoted87_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_15_promoted87_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_14_promoted85_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_14_promoted85_out", "role": "default" }} , 
 	{ "name": "arrayidx11_14_promoted85_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_14_promoted85_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_13_promoted83_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_13_promoted83_out", "role": "default" }} , 
 	{ "name": "arrayidx11_13_promoted83_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_13_promoted83_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_12_promoted81_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_12_promoted81_out", "role": "default" }} , 
 	{ "name": "arrayidx11_12_promoted81_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_12_promoted81_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_11_promoted79_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_11_promoted79_out", "role": "default" }} , 
 	{ "name": "arrayidx11_11_promoted79_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_11_promoted79_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_10_promoted77_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_10_promoted77_out", "role": "default" }} , 
 	{ "name": "arrayidx11_10_promoted77_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_10_promoted77_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_9_promoted75_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_9_promoted75_out", "role": "default" }} , 
 	{ "name": "arrayidx11_9_promoted75_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_9_promoted75_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_8_promoted73_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_8_promoted73_out", "role": "default" }} , 
 	{ "name": "arrayidx11_8_promoted73_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_8_promoted73_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_7_promoted71_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_7_promoted71_out", "role": "default" }} , 
 	{ "name": "arrayidx11_7_promoted71_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_7_promoted71_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_6_promoted69_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_6_promoted69_out", "role": "default" }} , 
 	{ "name": "arrayidx11_6_promoted69_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_6_promoted69_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_5_promoted67_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_5_promoted67_out", "role": "default" }} , 
 	{ "name": "arrayidx11_5_promoted67_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_5_promoted67_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_4_promoted65_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_4_promoted65_out", "role": "default" }} , 
 	{ "name": "arrayidx11_4_promoted65_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_4_promoted65_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_3_promoted63_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_3_promoted63_out", "role": "default" }} , 
 	{ "name": "arrayidx11_3_promoted63_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_3_promoted63_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_2_promoted61_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_2_promoted61_out", "role": "default" }} , 
 	{ "name": "arrayidx11_2_promoted61_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_2_promoted61_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx11_1_promoted59_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx11_1_promoted59_out", "role": "default" }} , 
 	{ "name": "arrayidx11_1_promoted59_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx11_1_promoted59_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx82_promoted57_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arrayidx82_promoted57_out", "role": "default" }} , 
 	{ "name": "arrayidx82_promoted57_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx82_promoted57_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		arrayidx82_promoted57_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26", "Max" : "26"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "26"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TDATA in_data 0 512 }  { in_stream_TREADY in_acc 1 1 } } }
	arrayidx11_23_promoted103_out { ap_vld {  { arrayidx11_23_promoted103_out out_data 1 256 }  { arrayidx11_23_promoted103_out_ap_vld out_vld 1 1 } } }
	arrayidx11_22_promoted101_out { ap_vld {  { arrayidx11_22_promoted101_out out_data 1 256 }  { arrayidx11_22_promoted101_out_ap_vld out_vld 1 1 } } }
	arrayidx11_21_promoted99_out { ap_vld {  { arrayidx11_21_promoted99_out out_data 1 256 }  { arrayidx11_21_promoted99_out_ap_vld out_vld 1 1 } } }
	arrayidx11_20_promoted97_out { ap_vld {  { arrayidx11_20_promoted97_out out_data 1 256 }  { arrayidx11_20_promoted97_out_ap_vld out_vld 1 1 } } }
	arrayidx11_19_promoted95_out { ap_vld {  { arrayidx11_19_promoted95_out out_data 1 256 }  { arrayidx11_19_promoted95_out_ap_vld out_vld 1 1 } } }
	arrayidx11_18_promoted93_out { ap_vld {  { arrayidx11_18_promoted93_out out_data 1 256 }  { arrayidx11_18_promoted93_out_ap_vld out_vld 1 1 } } }
	arrayidx11_17_promoted91_out { ap_vld {  { arrayidx11_17_promoted91_out out_data 1 256 }  { arrayidx11_17_promoted91_out_ap_vld out_vld 1 1 } } }
	arrayidx11_16_promoted89_out { ap_vld {  { arrayidx11_16_promoted89_out out_data 1 256 }  { arrayidx11_16_promoted89_out_ap_vld out_vld 1 1 } } }
	arrayidx11_15_promoted87_out { ap_vld {  { arrayidx11_15_promoted87_out out_data 1 256 }  { arrayidx11_15_promoted87_out_ap_vld out_vld 1 1 } } }
	arrayidx11_14_promoted85_out { ap_vld {  { arrayidx11_14_promoted85_out out_data 1 256 }  { arrayidx11_14_promoted85_out_ap_vld out_vld 1 1 } } }
	arrayidx11_13_promoted83_out { ap_vld {  { arrayidx11_13_promoted83_out out_data 1 256 }  { arrayidx11_13_promoted83_out_ap_vld out_vld 1 1 } } }
	arrayidx11_12_promoted81_out { ap_vld {  { arrayidx11_12_promoted81_out out_data 1 256 }  { arrayidx11_12_promoted81_out_ap_vld out_vld 1 1 } } }
	arrayidx11_11_promoted79_out { ap_vld {  { arrayidx11_11_promoted79_out out_data 1 256 }  { arrayidx11_11_promoted79_out_ap_vld out_vld 1 1 } } }
	arrayidx11_10_promoted77_out { ap_vld {  { arrayidx11_10_promoted77_out out_data 1 256 }  { arrayidx11_10_promoted77_out_ap_vld out_vld 1 1 } } }
	arrayidx11_9_promoted75_out { ap_vld {  { arrayidx11_9_promoted75_out out_data 1 256 }  { arrayidx11_9_promoted75_out_ap_vld out_vld 1 1 } } }
	arrayidx11_8_promoted73_out { ap_vld {  { arrayidx11_8_promoted73_out out_data 1 256 }  { arrayidx11_8_promoted73_out_ap_vld out_vld 1 1 } } }
	arrayidx11_7_promoted71_out { ap_vld {  { arrayidx11_7_promoted71_out out_data 1 256 }  { arrayidx11_7_promoted71_out_ap_vld out_vld 1 1 } } }
	arrayidx11_6_promoted69_out { ap_vld {  { arrayidx11_6_promoted69_out out_data 1 256 }  { arrayidx11_6_promoted69_out_ap_vld out_vld 1 1 } } }
	arrayidx11_5_promoted67_out { ap_vld {  { arrayidx11_5_promoted67_out out_data 1 256 }  { arrayidx11_5_promoted67_out_ap_vld out_vld 1 1 } } }
	arrayidx11_4_promoted65_out { ap_vld {  { arrayidx11_4_promoted65_out out_data 1 256 }  { arrayidx11_4_promoted65_out_ap_vld out_vld 1 1 } } }
	arrayidx11_3_promoted63_out { ap_vld {  { arrayidx11_3_promoted63_out out_data 1 256 }  { arrayidx11_3_promoted63_out_ap_vld out_vld 1 1 } } }
	arrayidx11_2_promoted61_out { ap_vld {  { arrayidx11_2_promoted61_out out_data 1 256 }  { arrayidx11_2_promoted61_out_ap_vld out_vld 1 1 } } }
	arrayidx11_1_promoted59_out { ap_vld {  { arrayidx11_1_promoted59_out out_data 1 256 }  { arrayidx11_1_promoted59_out_ap_vld out_vld 1 1 } } }
	arrayidx82_promoted57_out { ap_vld {  { arrayidx82_promoted57_out out_data 1 256 }  { arrayidx82_promoted57_out_ap_vld out_vld 1 1 } } }
}
