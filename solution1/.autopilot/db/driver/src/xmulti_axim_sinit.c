// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmulti_axim.h"

extern XMulti_axim_Config XMulti_axim_ConfigTable[];

XMulti_axim_Config *XMulti_axim_LookupConfig(u16 DeviceId) {
	XMulti_axim_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMULTI_AXIM_NUM_INSTANCES; Index++) {
		if (XMulti_axim_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMulti_axim_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMulti_axim_Initialize(XMulti_axim *InstancePtr, u16 DeviceId) {
	XMulti_axim_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMulti_axim_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMulti_axim_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

