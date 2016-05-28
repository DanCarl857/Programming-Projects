/* by: Daniel Carlson
 * on: Wed 03:10 am */

#include "array.h"
#include <stdio.h>
#include <stdlib.h>

double **hilbert_matrix(int n){
	double **H;
	make_matrix(H, n, n);
	for(int i = 0; i < n; i++)
		for(int j = 0; j < n; j++)
			H[i][j] = 1.0 / (1 + i + j);
			
	return H;
}

int main(void){
	int n, i, j;
	printf("Enter n: ");
	
	/* new writings of the libc require that the return value of scanf
	 * not be ignored and so to shut down this warning from the compiler 
	 * we do this
	 */
	if(scanf("%d",&n)){};
	
	double **H = hilbert_matrix(n);
	
	/* outputting the hilbert matrix */
	for(i = 0; i < n; i++){
		for(j = 0; j < n; j++){
			if(j % 10 == 0 && j != 0)
				printf("\n");
			else{
				printf("%lf ", H[i][j]);
			}
		}
	}
	
	/* free the memory */
	free_matrix(H);
	
	return 0;
}
	
