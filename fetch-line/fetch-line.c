/* by: Daniel Carlson
 * on: Thu 22:25 pm
 */
 
#include <string.h>
#include <ctype.h>
#include <stdlib.h>
#include "fetch-line.h"

static char *trim_line(char *s){
	int i;
	
	/* move forward one character at a time, skipping over whitespaces */
	for(i = 0; !isspace(s[i]); i++);
	s = &s[i];
	
	char *t = s;
	for(i = 0; t[i] != '\0'; t++)
		if(t[i] == '#'){
			t[i] = '\0';
			break;
		}
	while(s != t){
		if(isspace(*t))
			*t-- = '\0';
		else
			break;
	}
	return s;
}

char *fetch_line(char *buf, int buflen, FILE *stream, int *lineno){
	char *s;
	if(fgets(buf, buflen, stream) == NULL)
		return NULL;
	++lineno;
	if(buf[strlen(buf) - 1] != '\n'){
		fprintf(stderr, "*** reading error: input line %d too long for %s's buf[%d]\n",
			*lineno, __func__, buflen);
		exit(EXIT_FAILURE);
	}
	s = trim_line(buf);
	if(*s != '\0')
		return s;
	else
		return fetch_line(buf, buflen, stream, lineno); // recursive
}
