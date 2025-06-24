%{
    #include <stdio.h>
    #include <string.h>

    int count_decimal(const char *s){
        const char *dot = strchr(s, '.');
        if(dot == NULL){ return 0; }
        return strlen(dot + 1);
    }
%}

%%

[0-9]+\.[0-9]+    {
                    int precision = count_decimal(yytext);
                    printf("Number: %s\n", yytext);
                    printf("Precision: %d\n", precision);
                  }

\n                { return 0; }

.                 { /* ignore other characters or add action */ }

%%

int main(){
    printf("Enter Number: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
