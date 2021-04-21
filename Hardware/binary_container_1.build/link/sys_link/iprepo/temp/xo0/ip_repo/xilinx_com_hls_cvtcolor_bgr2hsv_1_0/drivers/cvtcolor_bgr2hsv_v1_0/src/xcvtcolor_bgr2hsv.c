// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcvtcolor_bgr2hsv.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCvtcolor_bgr2hsv_CfgInitialize(XCvtcolor_bgr2hsv *InstancePtr, XCvtcolor_bgr2hsv_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCvtcolor_bgr2hsv_Start(XCvtcolor_bgr2hsv *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCvtcolor_bgr2hsv_IsDone(XCvtcolor_bgr2hsv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCvtcolor_bgr2hsv_IsIdle(XCvtcolor_bgr2hsv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCvtcolor_bgr2hsv_IsReady(XCvtcolor_bgr2hsv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCvtcolor_bgr2hsv_Continue(XCvtcolor_bgr2hsv *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XCvtcolor_bgr2hsv_EnableAutoRestart(XCvtcolor_bgr2hsv *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCvtcolor_bgr2hsv_DisableAutoRestart(XCvtcolor_bgr2hsv *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_AP_CTRL, 0);
}

void XCvtcolor_bgr2hsv_Set_img_bgr(XCvtcolor_bgr2hsv *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_IMG_BGR_DATA, (u32)(Data));
    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_IMG_BGR_DATA + 4, (u32)(Data >> 32));
}

u64 XCvtcolor_bgr2hsv_Get_img_bgr(XCvtcolor_bgr2hsv *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_IMG_BGR_DATA);
    Data += (u64)XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_IMG_BGR_DATA + 4) << 32;
    return Data;
}

void XCvtcolor_bgr2hsv_Set_img_hsv(XCvtcolor_bgr2hsv *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_IMG_HSV_DATA, (u32)(Data));
    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_IMG_HSV_DATA + 4, (u32)(Data >> 32));
}

u64 XCvtcolor_bgr2hsv_Get_img_hsv(XCvtcolor_bgr2hsv *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_IMG_HSV_DATA);
    Data += (u64)XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_IMG_HSV_DATA + 4) << 32;
    return Data;
}

void XCvtcolor_bgr2hsv_Set_rows(XCvtcolor_bgr2hsv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_ROWS_DATA, Data);
}

u32 XCvtcolor_bgr2hsv_Get_rows(XCvtcolor_bgr2hsv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_ROWS_DATA);
    return Data;
}

void XCvtcolor_bgr2hsv_Set_cols(XCvtcolor_bgr2hsv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_COLS_DATA, Data);
}

u32 XCvtcolor_bgr2hsv_Get_cols(XCvtcolor_bgr2hsv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_COLS_DATA);
    return Data;
}

void XCvtcolor_bgr2hsv_InterruptGlobalEnable(XCvtcolor_bgr2hsv *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_GIE, 1);
}

void XCvtcolor_bgr2hsv_InterruptGlobalDisable(XCvtcolor_bgr2hsv *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_GIE, 0);
}

void XCvtcolor_bgr2hsv_InterruptEnable(XCvtcolor_bgr2hsv *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_IER);
    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_IER, Register | Mask);
}

void XCvtcolor_bgr2hsv_InterruptDisable(XCvtcolor_bgr2hsv *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_IER);
    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCvtcolor_bgr2hsv_InterruptClear(XCvtcolor_bgr2hsv *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_bgr2hsv_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_ISR, Mask);
}

u32 XCvtcolor_bgr2hsv_InterruptGetEnabled(XCvtcolor_bgr2hsv *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_IER);
}

u32 XCvtcolor_bgr2hsv_InterruptGetStatus(XCvtcolor_bgr2hsv *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCvtcolor_bgr2hsv_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_BGR2HSV_CONTROL_ADDR_ISR);
}

