#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_gmem1 "../tv/cdatafile/c.cvtcolor_bgr2hsv.autotvin_gmem1.dat"
#define AUTOTB_TVOUT_gmem1 "../tv/cdatafile/c.cvtcolor_bgr2hsv.autotvout_gmem1.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem2 "../tv/cdatafile/c.cvtcolor_bgr2hsv.autotvin_gmem2.dat"
#define AUTOTB_TVOUT_gmem2 "../tv/cdatafile/c.cvtcolor_bgr2hsv.autotvout_gmem2.dat"
// wrapc file define:
#define AUTOTB_TVIN_img_bgr "../tv/cdatafile/c.cvtcolor_bgr2hsv.autotvin_img_bgr.dat"
#define AUTOTB_TVOUT_img_bgr "../tv/cdatafile/c.cvtcolor_bgr2hsv.autotvout_img_bgr.dat"
// wrapc file define:
#define AUTOTB_TVIN_img_hsv "../tv/cdatafile/c.cvtcolor_bgr2hsv.autotvin_img_hsv.dat"
#define AUTOTB_TVOUT_img_hsv "../tv/cdatafile/c.cvtcolor_bgr2hsv.autotvout_img_hsv.dat"
// wrapc file define:
#define AUTOTB_TVIN_rows "../tv/cdatafile/c.cvtcolor_bgr2hsv.autotvin_rows.dat"
#define AUTOTB_TVOUT_rows "../tv/cdatafile/c.cvtcolor_bgr2hsv.autotvout_rows.dat"
// wrapc file define:
#define AUTOTB_TVIN_cols "../tv/cdatafile/c.cvtcolor_bgr2hsv.autotvin_cols.dat"
#define AUTOTB_TVOUT_cols "../tv/cdatafile/c.cvtcolor_bgr2hsv.autotvout_cols.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem1 "../tv/rtldatafile/rtl.cvtcolor_bgr2hsv.autotvout_gmem1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem2 "../tv/rtldatafile/rtl.cvtcolor_bgr2hsv.autotvout_gmem2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_img_bgr "../tv/rtldatafile/rtl.cvtcolor_bgr2hsv.autotvout_img_bgr.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_img_hsv "../tv/rtldatafile/rtl.cvtcolor_bgr2hsv.autotvout_img_hsv.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_rows "../tv/rtldatafile/rtl.cvtcolor_bgr2hsv.autotvout_rows.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cols "../tv/rtldatafile/rtl.cvtcolor_bgr2hsv.autotvout_cols.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem1_depth = 0;
  gmem2_depth = 0;
  img_bgr_depth = 0;
  img_hsv_depth = 0;
  rows_depth = 0;
  cols_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{gmem1 " << gmem1_depth << "}\n";
  total_list << "{gmem2 " << gmem2_depth << "}\n";
  total_list << "{img_bgr " << img_bgr_depth << "}\n";
  total_list << "{img_hsv " << img_hsv_depth << "}\n";
  total_list << "{rows " << rows_depth << "}\n";
  total_list << "{cols " << cols_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
  public:
    int gmem1_depth;
    int gmem2_depth;
    int img_bgr_depth;
    int img_hsv_depth;
    int rows_depth;
    int cols_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s40__ { char data[64]; };
extern "C" void cvtcolor_bgr2hsv_hw_stub(volatile void *, volatile void *, int, int);

extern "C" void apatb_cvtcolor_bgr2hsv_hw(volatile void * __xlx_apatb_param_img_bgr, volatile void * __xlx_apatb_param_img_hsv, int __xlx_apatb_param_rows, int __xlx_apatb_param_cols) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > gmem2_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "gmem2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_img_hsv)[j*8+0] = gmem2_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_img_hsv)[j*8+1] = gmem2_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_img_hsv)[j*8+2] = gmem2_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_img_hsv)[j*8+3] = gmem2_pc_buffer[i].range(255,192).to_int64();
((long long*)__xlx_apatb_param_img_hsv)[j*8+4] = gmem2_pc_buffer[i].range(319,256).to_int64();
((long long*)__xlx_apatb_param_img_hsv)[j*8+5] = gmem2_pc_buffer[i].range(383,320).to_int64();
((long long*)__xlx_apatb_param_img_hsv)[j*8+6] = gmem2_pc_buffer[i].range(447,384).to_int64();
((long long*)__xlx_apatb_param_img_hsv)[j*8+7] = gmem2_pc_buffer[i].range(511,448).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//gmem1
aesl_fh.touch(AUTOTB_TVIN_gmem1);
aesl_fh.touch(AUTOTB_TVOUT_gmem1);
//gmem2
aesl_fh.touch(AUTOTB_TVIN_gmem2);
aesl_fh.touch(AUTOTB_TVOUT_gmem2);
//img_bgr
aesl_fh.touch(AUTOTB_TVIN_img_bgr);
aesl_fh.touch(AUTOTB_TVOUT_img_bgr);
//img_hsv
aesl_fh.touch(AUTOTB_TVIN_img_hsv);
aesl_fh.touch(AUTOTB_TVOUT_img_hsv);
//rows
aesl_fh.touch(AUTOTB_TVIN_rows);
aesl_fh.touch(AUTOTB_TVOUT_rows);
//cols
aesl_fh.touch(AUTOTB_TVIN_cols);
aesl_fh.touch(AUTOTB_TVOUT_cols);
CodeState = DUMP_INPUTS;
// print gmem1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_img_bgr) {
    for (int j = 0, e = 1; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_img_bgr)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_img_bgr)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_img_bgr)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_img_bgr)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_img_bgr)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_img_bgr)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_img_bgr)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_img_bgr)[j*8+7];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.gmem1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data());
}
// print gmem2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem2, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_img_hsv) {
    for (int j = 0, e = 1; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+7];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem2, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.gmem2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem2, __xlx_sprintf_buffer.data());
}
// print img_bgr Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_img_bgr, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_img_bgr, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.img_bgr_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_img_bgr, __xlx_sprintf_buffer.data());
}
// print img_hsv Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_img_hsv, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_img_hsv, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.img_hsv_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_img_hsv, __xlx_sprintf_buffer.data());
}
// print rows Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_rows, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_rows);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_rows, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.rows_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_rows, __xlx_sprintf_buffer.data());
}
// print cols Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cols, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_cols);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cols, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cols_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cols, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
cvtcolor_bgr2hsv_hw_stub(__xlx_apatb_param_img_bgr, __xlx_apatb_param_img_hsv, __xlx_apatb_param_rows, __xlx_apatb_param_cols);
CodeState = DUMP_OUTPUTS;
// print gmem2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_gmem2, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_img_hsv) {
    for (int j = 0, e = 1; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_img_hsv)[j*8+7];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem2, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.gmem2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_gmem2, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
