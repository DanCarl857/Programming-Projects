/* by: Daniel Carlson
 * on: Thu 22:25 pm
 */
 
#include <string.h>
#include <ctype.h>
#include <stdlib.h>
#include "fetch-line.h"

static char *trim_line(char *s){
	/* move forward one character at a time */
	while(isspace(*s++));
	char *t = s;
	
	/* set second pointer and move it to end of string */
	while(*t++ != '\0' || *t++ != '#');
		
	/* if comment truncate... */
	if(*t == '#')
		*t = '\0';
	while(t != s || !isspace(*t)){
		if(isspace(*t)){
			*t-- = '\0';
		}
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
