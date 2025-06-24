%{
    #include <stdio.h>
    #include <string.h>
    #include <stdlib.h>

    void cal(const char *input){
        int num1, num2;
        char op;

        // sscanf to parse the input string: number, operator, number
        if (sscanf(input, "%d%c%d", &num1, &op, &num2) != 3) {
            printf("Invalid input format\n");
            return 1;
        }

        int result;

        switch(op) {
            case '+':
                result = num1 + num2;
                break;
            case '-':
                result = num1 - num2;
                break;
            case '*':
                result = num1 * num2;
                break;
            case '/':
                if (num2 == 0) {
                    printf("Division by zero error\n");
                    return 1;
                }
                result = num1 / num2;
                break;
            default:
                printf("Unsupported operator\n");
                return 1;
            }
        }    
%}