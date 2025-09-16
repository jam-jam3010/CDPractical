#include<stdio.h>
#include<string.h>

int main(){
    char a[20], b[20], c[20];
    char f1[20], f2[20];
    printf("Enter Expression for a: ");
    scanf("%s", a);
    
    printf("Enter Expression for b: ");
    scanf("%s", b);
    
    printf("Enter Expression for c: ");
    scanf("%s", c);

    if(strcmp(b,c) == 0){
        strcpy(f1, "temp");
        strcpy(f2, "temp");
        printf("\nOptimized code:\n");
        printf("temp = %s;\n", b);
        printf("b = temp;\n");
        printf("c = temp;\n");
    }else {
        strcpy(f1, "");
        strcpy(f2, "");
    }

    if(strlen(f1) == 0 && strlen(f2) == 0){
        printf("\nNo common sub - expression found.\n");
        printf("\nExpression could not be optimized.\n");
    }

    printf("\nFinal Expressions:\n");
    printf("a = %s\n", a);
    printf("b = %s\n", b);
    printf("c = %s\n", c);

    return 0;
}