#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

int main() {
    int i = 0, j = 0, x = 0, n, flag = 0; 
    void *p, *add[15];
    char ch, srch, b[15], d[15], c;

    printf("Expression terminated by $: ");
    while ((c = getchar()) != '$' && i < 15) {
        b[i++] = c;
    }

    n = i - 1;

    printf("\nGiven Expression: ");
    for (i = 0; i <= n; i++) {
        printf("%c", b[i]);
    }

    printf("\n\nSymbol Table\n");
    printf("Symbol\tAddress\t\tType\n");

    j = 0;
    while (j <= n) {
        c = b[j];
        if (isalpha(c)) {
            if (j == n || b[j + 1] == '+' || b[j + 1] == '-' || b[j + 1] == '*' || b[j + 1] == '=' || b[j + 1] == '/') {
                p = malloc(sizeof(char));  
                add[x] = p;
                d[x] = c;
                printf("%c\t%p\tIdentifier\n", c, p);
                x++;
            }
        }
        j++;
    }

    printf("\nEnter the symbol to be searched: ");
    scanf(" %c", &srch);

    for (i = 0; i < x; i++) {
        if (srch == d[i]) {
            printf("\nSymbol found!\n");
            printf("Symbol: %c\tAddress: %p\n", srch, add[i]);
            flag = 1;
            break;
        }
    }

    if (!flag) {
        printf("\nSymbol not found.\n");
    }

    for (i = 0; i < x; i++) {
        free(add[i]);
    }

    return 0;
}
