%{
#include <stdio.h>
%}

%%
"if"            { printf("Keyword: %s\n", yytext); }
"else"          { printf("Keyword: %s\n", yytext); }
"while"         { printf("Keyword: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*   { printf("Identifier: %s\n", yytext); }
[ \t\n]+        ;   // ignore whitespace
.               { printf("Unknown character: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}