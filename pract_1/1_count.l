%{
int word_count = 0;
%}

%%

[ \t\n]+        ;            // Skip whitespace
[a-zA-Z0-9_]+   { word_count++; }  // Count words

.               ;            // Ignore other characters

%%

int main() {
    yylex();
    printf("Number of words: %d\n", word_count);
    return 0;
}

int yywrap() {
    return 1;
}
