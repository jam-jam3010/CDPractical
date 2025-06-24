%{
#include <stdio.h>
%}

%%
[6-9][0-9]{9}              { printf("Valid Mobile Number\n"); }
[0-9]+([+\-*/][0-9]+)*     { printf("Valid Expression\n"); }
.                     
\n                         {return 0;}
%%

int main() {
    printf("Enter Expression or Mobile Number: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
