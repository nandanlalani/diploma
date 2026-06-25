#include <stdio.h>

void main()
{
    int a, b, ch;

    printf("Enter two numbers: ");
    scanf("%d%d", &a, &b);

    printf("1.Add 2.Sub 3.Mul 4.Div\n");
    printf("Enter choice: ");
    scanf("%d", &ch);

    switch (ch)
    {
        case 1:
            printf("Addition = %d", a + b);
            break;

        case 2:
            printf("Subtraction = %d", a - b);
            break;

        case 3:
            printf("Multiplication = %d", a * b);
            break;

        case 4:
            printf("Division = %d", a / b);
            break;

        default:
            printf("Invalid Choice");
    }
}