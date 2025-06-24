%{
#include <stdio.h>
%}

%%

[ \t]+                 ;  // Ignore whitespace

[a-zA-Z_][a-zA-Z0-9_]*   { printf("Identifier: %s\n", yytext); }

[0-9]+                  { printf("Number: %s\n", yytext); }

[+\-*/]                 { printf("Operator: %c\n", yytext[0]); }

.                       { printf("Unknown character: %s\n", yytext); }
[\n]                    {return 0;}

%%

int yywrap(void) {
    return 1;
}

int main(void) {
    printf("Enter an arithmetic expression:\n");
    yylex();
    return 0;
}