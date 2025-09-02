%{
	#include<stdio.h>
%}

%%
int     { printf("Type: Integer\n"); }
float   { printf("Type: Float\n"); }
char    { printf("Type: Character\n"); }
bool    { printf("Type: Boolean\n"); }
void    { printf("Type: Void\n"); }
.       { /*Ignore*/ }
\n      { /*Ignore*/ }
%%

int yywrap()
{
	return 1;
}

int main()
{
	printf("Enter the program code\n");
	yylex();
	return 0;
}
