#include <stdio.h>
#include <assert.h>
#include "fetch-line.h"
#define BUFLEN 1024

int main(void){
	char buf[BUFLEN];
	char *s;
	int lineno = 0;
	FILE *stream;
	stream = fopen("fgets-demo.c", "r");
	
	assert(stream);
	
	while((s = fetch_line(buf, BUFLEN, stream, &lineno)) != NULL)
		printf("trimmed line %3d: %s\n", lineno, s);
	return 0;
}
