// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Jun 10 02:46:19 2020
// Host        : eb21a600bd18 running 64-bit CentOS Linux release 7.4.1708 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /proj/xbb/xrt-embedded/2020.1/2020.1_0610_0221/2020.1/Xilinx_Official_Platforms/xilinx_zcu104_base_202010_1/vivado/zcu104_base/zcu104_base.srcs/sources_1/bd/zcu104_base/ip/zcu104_base_proc_sys_reset_2_0/zcu104_base_proc_sys_reset_2_0_stub.v
// Design      : zcu104_base_proc_sys_reset_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "proc_sys_reset,Vivado 2020.1" *)
module zcu104_base_proc_sys_reset_2_0(slowest_sync_clk, ext_reset_in, aux_reset_in, 
  mb_debug_sys_rst, dcm_locked, mb_reset, bus_struct_reset, peripheral_reset, 
  interconnect_aresetn, peripheral_aresetn)
/* synthesis syn_black_box black_box_pad_pin="slowest_sync_clk,ext_reset_in,aux_reset_in,mb_debug_sys_rst,dcm_locked,mb_reset,bus_struct_reset[0:0],peripheral_reset[0:0],interconnect_aresetn[0:0],peripheral_aresetn[0:0]" */;
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;
endmodule
