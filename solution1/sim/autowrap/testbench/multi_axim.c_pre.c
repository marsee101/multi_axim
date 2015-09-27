# 1 "D:/Vivado_HLS/ZYBO/multi_axim/multi_axim.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/Vivado_HLS/ZYBO/multi_axim/multi_axim.c"


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
