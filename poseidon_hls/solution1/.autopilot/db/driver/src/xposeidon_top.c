// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xposeidon_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPoseidon_top_CfgInitialize(XPoseidon_top *InstancePtr, XPoseidon_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPoseidon_top_Start(XPoseidon_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPoseidon_top_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XPoseidon_top_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XPoseidon_top_IsDone(XPoseidon_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPoseidon_top_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XPoseidon_top_IsIdle(XPoseidon_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPoseidon_top_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XPoseidon_top_IsReady(XPoseidon_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPoseidon_top_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XPoseidon_top_EnableAutoRestart(XPoseidon_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_top_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XPoseidon_top_DisableAutoRestart(XPoseidon_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_top_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XPoseidon_top_Set_round_constants(XPoseidon_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_top_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_ROUND_CONSTANTS_DATA, (u32)(Data));
    XPoseidon_top_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_ROUND_CONSTANTS_DATA + 4, (u32)(Data >> 32));
}

u64 XPoseidon_top_Get_round_constants(XPoseidon_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPoseidon_top_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_ROUND_CONSTANTS_DATA);
    Data += (u64)XPoseidon_top_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_ROUND_CONSTANTS_DATA + 4) << 32;
    return Data;
}

void XPoseidon_top_Set_mds_matrix(XPoseidon_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_top_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_MDS_MATRIX_DATA, (u32)(Data));
    XPoseidon_top_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_MDS_MATRIX_DATA + 4, (u32)(Data >> 32));
}

u64 XPoseidon_top_Get_mds_matrix(XPoseidon_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPoseidon_top_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_MDS_MATRIX_DATA);
    Data += (u64)XPoseidon_top_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_MDS_MATRIX_DATA + 4) << 32;
    return Data;
}

void XPoseidon_top_InterruptGlobalEnable(XPoseidon_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_top_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_GIE, 1);
}

void XPoseidon_top_InterruptGlobalDisable(XPoseidon_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_top_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_GIE, 0);
}

void XPoseidon_top_InterruptEnable(XPoseidon_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPoseidon_top_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_IER);
    XPoseidon_top_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XPoseidon_top_InterruptDisable(XPoseidon_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPoseidon_top_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_IER);
    XPoseidon_top_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XPoseidon_top_InterruptClear(XPoseidon_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_top_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XPoseidon_top_InterruptGetEnabled(XPoseidon_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPoseidon_top_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_IER);
}

u32 XPoseidon_top_InterruptGetStatus(XPoseidon_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPoseidon_top_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_TOP_CONTROL_ADDR_ISR);
}

