#ifndef H_FETCH_LINE_H
#define H_FETCH_LINE_H

#include <stdio.h>

char *fetch_line(char *buf, int buflen, FILE *stream, int *lineno);
static char *trim_line(char *s);

#endif
