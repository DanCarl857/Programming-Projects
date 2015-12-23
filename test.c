#include <stdio.h>
#include <stdlib.h>

int main(void){
	int n = 10;
	double *x = malloc(n * sizeof *x);
	if (x == NULL) {
		fprintf(stderr, "%s: line %d: malloc(%u) failed\n", __FILE__, __LINE__, n * sizeof *x);
		return EXIT_FAILURE;
	}
	for(int i = 0; i < n; i++)
		x[i] = 1.0 / (i + 1);
	for(int i = 0; i < n; i++)
		printf("x[%d] = %g\n", i, x[i]);
	free(x);
	return EXIT_SUCCESS;
}
