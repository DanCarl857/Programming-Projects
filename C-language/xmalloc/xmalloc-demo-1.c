#include <stdio.h>
#include "xmalloc.h"

int main(){
	double *x = xmalloc(1000);
	fprintf(stdout, "Memory successfully allocated\n");
	
	int n = 10, i;
	for(i = 0; i < n; i++)
		x[i] = i * 2;
		
	fprintf(stdout, "Freeing memory now...\n");
	free(x)
	fprintf(stdout, "Memory successfully freed...\n")
	
	fprintf(stdout, "Trying to allocate 0 bytes of memory....\n")
	double *y = xmalloc(0);
	return 0;
}
		
