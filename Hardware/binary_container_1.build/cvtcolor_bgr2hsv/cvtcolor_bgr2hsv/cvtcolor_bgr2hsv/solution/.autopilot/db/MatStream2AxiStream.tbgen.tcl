set moduleName MatStream2AxiStream
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {MatStream2AxiStream}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgOutput0_414 int 24 regular {fifo 0 volatile }  }
	{ ldata1 int 512 regular {fifo 1 volatile }  }
	{ rows int 32 regular {fifo 0}  }
	{ cols_bound_per_npc int 32 regular {fifo 0}  }
	{ last_blk_width int 4 regular {pointer 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgOutput0_414", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "ldata1", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols_bound_per_npc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "last_blk_width", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgOutput0_414_dout sc_in sc_lv 24 signal 0 } 
	{ imgOutput0_414_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgOutput0_414_read sc_out sc_logic 1 signal 0 } 
	{ ldata1_din sc_out sc_lv 512 signal 1 } 
	{ ldata1_full_n sc_in sc_logic 1 signal 1 } 
	{ ldata1_write sc_out sc_logic 1 signal 1 } 
	{ rows_dout sc_in sc_lv 32 signal 2 } 
	{ rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ rows_read sc_out sc_logic 1 signal 2 } 
	{ cols_bound_per_npc_dout sc_in sc_lv 32 signal 3 } 
	{ cols_bound_per_npc_empty_n sc_in sc_logic 1 signal 3 } 
	{ cols_bound_per_npc_read sc_out sc_logic 1 signal 3 } 
	{ last_blk_width sc_in sc_lv 4 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgOutput0_414_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgOutput0_414", "role": "dout" }} , 
 	{ "name": "imgOutput0_414_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput0_414", "role": "empty_n" }} , 
 	{ "name": "imgOutput0_414_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput0_414", "role": "read" }} , 
 	{ "name": "ldata1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ldata1", "role": "din" }} , 
 	{ "name": "ldata1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ldata1", "role": "full_n" }} , 
 	{ "name": "ldata1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ldata1", "role": "write" }} , 
 	{ "name": "rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "dout" }} , 
 	{ "name": "rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows", "role": "empty_n" }} , 
 	{ "name": "rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows", "role": "read" }} , 
 	{ "name": "cols_bound_per_npc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols_bound_per_npc", "role": "dout" }} , 
 	{ "name": "cols_bound_per_npc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_bound_per_npc", "role": "empty_n" }} , 
 	{ "name": "cols_bound_per_npc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_bound_per_npc", "role": "read" }} , 
 	{ "name": "last_blk_width", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "last_blk_width", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MatStream2AxiStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "2073603",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgOutput0_414", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgOutput0_414_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_bound_per_npc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "cols_bound_per_npc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last_blk_width", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U101", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MatStream2AxiStream {
		imgOutput0_414 {Type I LastRead 3 FirstWrite -1}
		ldata1 {Type O LastRead -1 FirstWrite 3}
		rows {Type I LastRead 0 FirstWrite -1}
		cols_bound_per_npc {Type I LastRead 0 FirstWrite -1}
		last_blk_width {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "2073603"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "2073603"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgOutput0_414 { ap_fifo {  { imgOutput0_414_dout fifo_data 0 24 }  { imgOutput0_414_empty_n fifo_status 0 1 }  { imgOutput0_414_read fifo_update 1 1 } } }
	ldata1 { ap_fifo {  { ldata1_din fifo_data 1 512 }  { ldata1_full_n fifo_status 0 1 }  { ldata1_write fifo_update 1 1 } } }
	rows { ap_fifo {  { rows_dout fifo_data 0 32 }  { rows_empty_n fifo_status 0 1 }  { rows_read fifo_update 1 1 } } }
	cols_bound_per_npc { ap_fifo {  { cols_bound_per_npc_dout fifo_data 0 32 }  { cols_bound_per_npc_empty_n fifo_status 0 1 }  { cols_bound_per_npc_read fifo_update 1 1 } } }
	last_blk_width { ap_none {  { last_blk_width in_data 0 4 } } }
}
