#!/bin/bash
/tools/Xilinx/Vitis/2020.1/data/emulation/unified/hw_em/zynqu/pllauncher --emulation-mode "batch" --machine-path "/tools/Xilinx/Vitis/2020.1/workspace/cvtcolour" --remote-port.chardesc "tcp:127.0.0.1:8593" --remote-port-sim.chardesc  "tcp:127.0.0.1:7043" --sd "/tools/Xilinx/Vitis/2020.1/workspace/emulation/sd_card" -f "zynqmp" 
