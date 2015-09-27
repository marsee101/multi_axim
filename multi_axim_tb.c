// multi_axim_tb.c

#include <stdio.h>

int multi_axim(int *x, int *y);

int x[10], y[10];

int main(){
	int i;
	for (i=0; i<10; i++)
		x[i]=i;

	multi_axim(x, y);

	for (i=0; i<10; i++)
		printf("y[%d] = %d\n", i, y[i]);
	return(0);
}
