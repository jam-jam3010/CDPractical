/* Definition Section */
%{
    int num_vowels = 0;
    int num_consonants = 0;
%}

/* Rules Section */
%%
[\t\n ]+       ; /* skip whitespace */
[aAeEiIoOuU]   { num_vowels++; }
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]  { num_consonants++; }
.              ; /* ignore everything else */
%%

int main() {
    yylex();
    printf("Number of vowels: %d\n", num_vowels);
    printf("Number of consonants: %d\n", num_consonants);
    return 0;
}

int yywrap() {
    return 1;
}
