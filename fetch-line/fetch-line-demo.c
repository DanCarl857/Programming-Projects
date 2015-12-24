#include <stdio.h>
#include "fetch-line.h"
#define BUFLEN 40

int main(void){
	char buf[BUFLEN];
	char *s;
	int lineno = 0;
	while((s = fetch_line(buf, BUFLEN, stdin, &lineno)) != NULL)
		printf("trimmed line %3d: %s\n", lineno, s);
	return 0;
}
