set moduleName bgr2hsv_9_1080_1920_1_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set C_modelName {bgr2hsv<9, 1080, 1920, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput0_413 int 24 regular {fifo 0 volatile }  }
	{ imgOutput0_414 int 24 regular {fifo 1 volatile }  }
	{ p_src_mat_1 int 32 regular {fifo 0}  }
	{ p_src_mat_2 int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgInput0_413", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "imgOutput0_414", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput0_413_dout sc_in sc_lv 24 signal 0 } 
	{ imgInput0_413_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput0_413_read sc_out sc_logic 1 signal 0 } 
	{ imgOutput0_414_din sc_out sc_lv 24 signal 1 } 
	{ imgOutput0_414_full_n sc_in sc_logic 1 signal 1 } 
	{ imgOutput0_414_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_1_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_1_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_1_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_2_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_2_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_2_read sc_out sc_logic 1 signal 3 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput0_413_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgInput0_413", "role": "dout" }} , 
 	{ "name": "imgInput0_413_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput0_413", "role": "empty_n" }} , 
 	{ "name": "imgInput0_413_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput0_413", "role": "read" }} , 
 	{ "name": "imgOutput0_414_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgOutput0_414", "role": "din" }} , 
 	{ "name": "imgOutput0_414_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput0_414", "role": "full_n" }} , 
 	{ "name": "imgOutput0_414_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput0_414", "role": "write" }} , 
 	{ "name": "p_src_mat_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_1", "role": "dout" }} , 
 	{ "name": "p_src_mat_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_1", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_1", "role": "read" }} , 
 	{ "name": "p_src_mat_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_2", "role": "dout" }} , 
 	{ "name": "p_src_mat_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_2", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_2", "role": "read" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "bgr2hsv_9_1080_1920_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "2073609",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgInput0_413", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput0_413_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgOutput0_414", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "imgOutput0_414_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xf_cv_icvSaturate8u_cv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xf_cv_icvSaturate8u_cv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U70", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_20s_13ns_20_4_1_U71", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_9s_13s_17ns_13ns_30_4_1_U72", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bgr2hsv_9_1080_1920_1_s {
		imgInput0_413 {Type I LastRead 3 FirstWrite -1}
		imgOutput0_414 {Type O LastRead -1 FirstWrite 9}
		p_src_mat_1 {Type I LastRead 0 FirstWrite -1}
		p_src_mat_2 {Type I LastRead 0 FirstWrite -1}
		xf_cv_icvSaturate8u_cv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_sdiv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_1080_1920_1_Mat_9_1080_1920_1_2_Mat_9_1080_1920_1_2_hdiv {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "2073609"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "2073609"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgInput0_413 { ap_fifo {  { imgInput0_413_dout fifo_data 0 24 }  { imgInput0_413_empty_n fifo_status 0 1 }  { imgInput0_413_read fifo_update 1 1 } } }
	imgOutput0_414 { ap_fifo {  { imgOutput0_414_din fifo_data 1 24 }  { imgOutput0_414_full_n fifo_status 0 1 }  { imgOutput0_414_write fifo_update 1 1 } } }
	p_src_mat_1 { ap_fifo {  { p_src_mat_1_dout fifo_data 0 32 }  { p_src_mat_1_empty_n fifo_status 0 1 }  { p_src_mat_1_read fifo_update 1 1 } } }
	p_src_mat_2 { ap_fifo {  { p_src_mat_2_dout fifo_data 0 32 }  { p_src_mat_2_empty_n fifo_status 0 1 }  { p_src_mat_2_read fifo_update 1 1 } } }
}
