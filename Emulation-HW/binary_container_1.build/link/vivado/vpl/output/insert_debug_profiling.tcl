# Monitor points

# Platform options
set_property HDL_ATTRIBUTE.DPA_AXILITE_MASTER true [get_bd_intf_pins /interconnect_axilite/M02_AXI]
set_property HDL_ATTRIBUTE.DPA_TRACE_MASTER true [get_bd_intf_pins /interconnect_axihpm0fpd/M01_AXI]

# Call debug/profiling automation
set dpa_dict [list \
              [get_bd_intf_pins cvtcolor_bgr2hsv_1/m_axi_gmem1]  {TYPE data DETAIL all CLK_SRC /cvtcolor_bgr2hsv_1/ap_clk RST_SRC /cvtcolor_bgr2hsv_1/ap_rst_n MIN_ADDRESS {0x0 0xC0000000} MAX_ADDRESS {0x7FFFFFFF 0xDFFFFFFF} MEMORY {HP0 HP} PRINTABLE_KEY {[get_bd_intf_pins cvtcolor_bgr2hsv_1/m_axi_gmem1]} INS_MODE auto} \
              [get_bd_intf_pins cvtcolor_bgr2hsv_1/m_axi_gmem2]  {TYPE data DETAIL all CLK_SRC /cvtcolor_bgr2hsv_1/ap_clk RST_SRC /cvtcolor_bgr2hsv_1/ap_rst_n MIN_ADDRESS {0x0 0xC0000000} MAX_ADDRESS {0x7FFFFFFF 0xDFFFFFFF} MEMORY {HP0 HP} PRINTABLE_KEY {[get_bd_intf_pins cvtcolor_bgr2hsv_1/m_axi_gmem2]} INS_MODE auto} \
             ]
set dpa_opts [list \
              AIE_TRACE  {PACKET_RATE 100 CLK_SELECT default PROFILE_STREAMS false} \
              SETTINGS  {HW_EMU true IS_EMBEDDED true} \
              AXILITE  {MASTER /interconnect_axilite/M02_AXI CLK_SRC /cvtcolor_bgr2hsv_1/ap_clk RST_SRC /cvtcolor_bgr2hsv_1/ap_rst_n} \
              TRACE_OFFLOAD  {DEPTH 8192 MEM_SPACE FIFO MEM_INDEX 0 MASTER /interconnect_axihpm0fpd/M01_AXI CLK_SRC /cvtcolor_bgr2hsv_1/ap_clk RST_SRC /cvtcolor_bgr2hsv_1/ap_rst_n SLR SLR0 DEDICATED 1} \
             ]

set_param bd.enable_dpa 1
set_param bd.debug_profile.script /tools/Xilinx/Vitis/2020.1/workspace/cvtcolour/Emulation-HW/binary_container_1.build/link/vivado/vpl/.local/debug_profile_automation.tcl
apply_bd_automation -rule xilinx.com:bd_rule:debug_profile -opts $dpa_opts -dict $dpa_dict

# Assign addresses and write debug_ip_layout
assign_bd_address
debug_profile::write_debug_ip_layout true "xilinx:zcu104:zcu104_base:1.0" "/tools/Xilinx/Vitis/2020.1/workspace/cvtcolour/Emulation-HW/binary_container_1.build/link/int"
