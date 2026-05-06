// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xposeidon_top.h"

extern XPoseidon_top_Config XPoseidon_top_ConfigTable[];

#ifdef SDT
XPoseidon_top_Config *XPoseidon_top_LookupConfig(UINTPTR BaseAddress) {
	XPoseidon_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XPoseidon_top_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XPoseidon_top_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XPoseidon_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPoseidon_top_Initialize(XPoseidon_top *InstancePtr, UINTPTR BaseAddress) {
	XPoseidon_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPoseidon_top_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPoseidon_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XPoseidon_top_Config *XPoseidon_top_LookupConfig(u16 DeviceId) {
	XPoseidon_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPOSEIDON_TOP_NUM_INSTANCES; Index++) {
		if (XPoseidon_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XPoseidon_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPoseidon_top_Initialize(XPoseidon_top *InstancePtr, u16 DeviceId) {
	XPoseidon_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPoseidon_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPoseidon_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

