/* by: Daniel Carlson
 * on: Thu 22:07
 */
 
 #include <stdio.h>
 #define BUFLEN 16
 
 int main(void){
 	char buf[BUFLEN];
 	while(fgets(buf, BUFLEN, stdin) != NULL)
 		printf("%s", buf);
 	return 0;
 }
