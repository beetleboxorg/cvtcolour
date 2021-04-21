// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCVTCOLOR_BGR2HSV_H
#define XCVTCOLOR_BGR2HSV_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcvtcolor_bgr2hsv_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XCvtcolor_bgr2hsv_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XCvtcolor_bgr2hsv;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCvtcolor_bgr2hsv_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCvtcolor_bgr2hsv_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCvtcolor_bgr2hsv_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCvtcolor_bgr2hsv_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XCvtcolor_bgr2hsv_Initialize(XCvtcolor_bgr2hsv *InstancePtr, u16 DeviceId);
XCvtcolor_bgr2hsv_Config* XCvtcolor_bgr2hsv_LookupConfig(u16 DeviceId);
int XCvtcolor_bgr2hsv_CfgInitialize(XCvtcolor_bgr2hsv *InstancePtr, XCvtcolor_bgr2hsv_Config *ConfigPtr);
#else
int XCvtcolor_bgr2hsv_Initialize(XCvtcolor_bgr2hsv *InstancePtr, const char* InstanceName);
int XCvtcolor_bgr2hsv_Release(XCvtcolor_bgr2hsv *InstancePtr);
#endif

void XCvtcolor_bgr2hsv_Start(XCvtcolor_bgr2hsv *InstancePtr);
u32 XCvtcolor_bgr2hsv_IsDone(XCvtcolor_bgr2hsv *InstancePtr);
u32 XCvtcolor_bgr2hsv_IsIdle(XCvtcolor_bgr2hsv *InstancePtr);
u32 XCvtcolor_bgr2hsv_IsReady(XCvtcolor_bgr2hsv *InstancePtr);
void XCvtcolor_bgr2hsv_Continue(XCvtcolor_bgr2hsv *InstancePtr);
void XCvtcolor_bgr2hsv_EnableAutoRestart(XCvtcolor_bgr2hsv *InstancePtr);
void XCvtcolor_bgr2hsv_DisableAutoRestart(XCvtcolor_bgr2hsv *InstancePtr);

void XCvtcolor_bgr2hsv_Set_img_bgr(XCvtcolor_bgr2hsv *InstancePtr, u64 Data);
u64 XCvtcolor_bgr2hsv_Get_img_bgr(XCvtcolor_bgr2hsv *InstancePtr);
void XCvtcolor_bgr2hsv_Set_img_hsv(XCvtcolor_bgr2hsv *InstancePtr, u64 Data);
u64 XCvtcolor_bgr2hsv_Get_img_hsv(XCvtcolor_bgr2hsv *InstancePtr);
void XCvtcolor_bgr2hsv_Set_rows(XCvtcolor_bgr2hsv *InstancePtr, u32 Data);
u32 XCvtcolor_bgr2hsv_Get_rows(XCvtcolor_bgr2hsv *InstancePtr);
void XCvtcolor_bgr2hsv_Set_cols(XCvtcolor_bgr2hsv *InstancePtr, u32 Data);
u32 XCvtcolor_bgr2hsv_Get_cols(XCvtcolor_bgr2hsv *InstancePtr);

void XCvtcolor_bgr2hsv_InterruptGlobalEnable(XCvtcolor_bgr2hsv *InstancePtr);
void XCvtcolor_bgr2hsv_InterruptGlobalDisable(XCvtcolor_bgr2hsv *InstancePtr);
void XCvtcolor_bgr2hsv_InterruptEnable(XCvtcolor_bgr2hsv *InstancePtr, u32 Mask);
void XCvtcolor_bgr2hsv_InterruptDisable(XCvtcolor_bgr2hsv *InstancePtr, u32 Mask);
void XCvtcolor_bgr2hsv_InterruptClear(XCvtcolor_bgr2hsv *InstancePtr, u32 Mask);
u32 XCvtcolor_bgr2hsv_InterruptGetEnabled(XCvtcolor_bgr2hsv *InstancePtr);
u32 XCvtcolor_bgr2hsv_InterruptGetStatus(XCvtcolor_bgr2hsv *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
