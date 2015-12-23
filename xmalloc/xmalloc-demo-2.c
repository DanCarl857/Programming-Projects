#include <stdio.h>
#include "xmalloc.h"

int main(void){
	double *x;
	for(;;){
		x = xmalloc(1000000);
	}
	return 0;
}
