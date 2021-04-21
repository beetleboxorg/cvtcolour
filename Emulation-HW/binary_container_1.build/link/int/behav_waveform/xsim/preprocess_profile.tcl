# Get hier path inside CU (HLS bug)
proc getHierName {cuName} {
  set hierName inst
  if {[get_objects -quiet /zcu104_base_wrapper/zcu104_base_i/$cuName/$hierName/ap_idle] == {}} {
    set hierName U0
  }
  return $hierName
}

# Check hierarchical name for only 1 CU instance in a Kernel. All the instances will have same namer, either inst or U0 
  set hierName [getHierName cvtcolor_bgr2hsv_1]
log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/ap_idle
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/ap_idle -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/ap_int_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/ap_ext_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/ap_str_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/ap_idle
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/ap_idle -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/ap_int_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/ap_ext_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/ap_str_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/grp_Axi2Mat_fu_78/ap_idle
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/grp_Axi2Mat_fu_78/ap_idle -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/grp_Axi2Mat_fu_78/ap_int_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/grp_Axi2Mat_fu_78/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/grp_Axi2Mat_fu_78/ap_ext_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/grp_Axi2Mat_fu_78/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/grp_Axi2Mat_fu_78/ap_str_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Array2xfMat_512_9_1080_1920_1_U0/grp_Axi2Mat_fu_78/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/ap_idle
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/ap_idle -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/ap_int_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/ap_ext_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/ap_str_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/grp_Mat2Axi_fu_56/ap_idle
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/grp_Mat2Axi_fu_56/ap_idle -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/grp_Mat2Axi_fu_56/ap_int_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/grp_Mat2Axi_fu_56/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/grp_Mat2Axi_fu_56/ap_ext_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/grp_Mat2Axi_fu_56/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/grp_Mat2Axi_fu_56/ap_str_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/xfMat2Array_512_9_1080_1920_1_U0/grp_Mat2Axi_fu_56/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/bgr2hsv_9_1080_1920_1_U0/ap_idle
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/bgr2hsv_9_1080_1920_1_U0/ap_idle -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/bgr2hsv_9_1080_1920_1_U0/ap_int_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/bgr2hsv_9_1080_1920_1_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/bgr2hsv_9_1080_1920_1_U0/ap_ext_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/bgr2hsv_9_1080_1920_1_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/bgr2hsv_9_1080_1920_1_U0/ap_str_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/bgr2hsv_9_1080_1920_1_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Block_split1_proc21_U0/ap_idle
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Block_split1_proc21_U0/ap_idle -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Block_split1_proc21_U0/ap_int_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Block_split1_proc21_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Block_split1_proc21_U0/ap_ext_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Block_split1_proc21_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Block_split1_proc21_U0/ap_str_blocking_n
get_value_database /zcu104_base_wrapper/zcu104_base_i/cvtcolor_bgr2hsv_1/$hierName/Block_split1_proc21_U0/ap_str_blocking_n -time 0 -quiet 

