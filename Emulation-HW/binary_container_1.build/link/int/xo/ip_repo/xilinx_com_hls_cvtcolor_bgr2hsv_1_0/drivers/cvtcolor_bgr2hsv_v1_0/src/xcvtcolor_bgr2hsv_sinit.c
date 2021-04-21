// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcvtcolor_bgr2hsv.h"

extern XCvtcolor_bgr2hsv_Config XCvtcolor_bgr2hsv_ConfigTable[];

XCvtcolor_bgr2hsv_Config *XCvtcolor_bgr2hsv_LookupConfig(u16 DeviceId) {
	XCvtcolor_bgr2hsv_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCVTCOLOR_BGR2HSV_NUM_INSTANCES; Index++) {
		if (XCvtcolor_bgr2hsv_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCvtcolor_bgr2hsv_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCvtcolor_bgr2hsv_Initialize(XCvtcolor_bgr2hsv *InstancePtr, u16 DeviceId) {
	XCvtcolor_bgr2hsv_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCvtcolor_bgr2hsv_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCvtcolor_bgr2hsv_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

