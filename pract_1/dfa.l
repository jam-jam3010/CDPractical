%{
#include <stdio.h>
%}

%%

(0|1)*11    { printf("Accepted: %s\n", yytext); }
\n          { return 0; }
.*           { printf("Rejected: %s\n", yytext); }

%%

int main() {
	printf("\nEnter your String Containing only 0s and 1s:");
   	yylex();
	return 0;
}

int yywrap() {
    return 1;
}
