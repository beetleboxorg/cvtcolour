# This file was automatically generated by Vpl
if { ![info exists _is_init_cmds] } {
  set vivado_error_file vivado_error.txt
  set vivado_warn_file vivado_warning.txt

  source ../../../.local/ocl_util.tcl
  source ../../../.local/platform.tcl
  namespace import ocl_util::*

  set _is_init_cmds true
}

set xocc_optimize_level 0
set_property SEVERITY {Warning} [get_drc_checks HDPR-5]
set_param logicopt.enableBUFGinsertHFN 0

