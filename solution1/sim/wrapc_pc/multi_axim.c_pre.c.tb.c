// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#1 "D:/Vivado_HLS/ZYBO/multi_axim/multi_axim.c"
#1 "<built-in>"
#1 "<command-line>"
#1 "D:/Vivado_HLS/ZYBO/multi_axim/multi_axim.c"



#ifndef HLS_FASTSIM
#include "apatb_multi_axim.h"
#endif
#define multi_axim(...) AESL_ORIG_DUT_multi_axim(__VA_ARGS__)
#3 "D:/Vivado_HLS/ZYBO/multi_axim/multi_axim.c"
int multi_axim(int *x, int *y){
#pragma HLS INTERFACE m_axi port=y depth=10 offset=slave
#pragma HLS INTERFACE m_axi port=x depth=10 offset=slave
#pragma HLS INTERFACE s_axilite port=return

 for (int i=0; i<10; i++){
#pragma HLS PIPELINE
  y[i] = x[i] * (x[i] + 1);
 }
 return 0;
}
#undef multi_axim

#13 "D:/Vivado_HLS/ZYBO/multi_axim/multi_axim.c"