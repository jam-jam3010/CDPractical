%{
    #include <stdio.h>

    int total_length = 0;
    int number_length = 0;
%}

%%
[0-9]+        { number_length += yyleng; total_length += yyleng; }
.             { total_length += yyleng; }
%%

int main() {
    yylex();
    printf("Total length of string: %d\n", total_length);
    printf("Total length of numbers: %d\n", number_length);
    return 0;
}

int yywrap() {
    return 1;
}
