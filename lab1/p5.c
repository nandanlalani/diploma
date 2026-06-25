#include <stdio.h>

void main()
{
    int a, b, ch;

    printf("Enter two numbers: ");
    scanf("%d%d", &a, &b);

    printf("1.Add 2.Sub 3.Mul 4.Div\n");
    printf("Enter choice: ");
    scanf("%d", &ch);

    if (ch == 1)
        printf("Addition = %d", a + b);
    else if (ch == 2)
        printf("Subtraction = %d", a - b);
    else if (ch == 3)
        printf("Multiplication = %d", a * b);
    else if (ch == 4)
        printf("Division = %d", a / b);
    else
        printf("Invalid input");
}