//------------------------------------------------------------------------------------
// Filename:    zcu104_base_sci_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//   Aldec Rivera-PRO Simulator
//
//------------------------------------------------------------------------------------
`ifdef XILINX_SIMULATOR
(* SC_MODULE_EXPORT *)
module zcu104_base_sci();
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module zcu104_base_sci()
(* integer foreign = "SystemC";
*);
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module zcu104_base_sci();
endmodule
`endif

