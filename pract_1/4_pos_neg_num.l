%{
    #include <stdio.h>
%}

%%
[-]?[0-9]+   {
                if (yytext[0] == '-') {
                    printf("%s is Negative\n", yytext);
                } else {
                    printf("%s is Positive\n", yytext);
                }
             }
[ \t\n]+     ;  // skip whitespace
.            ;  // skip any other character
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
