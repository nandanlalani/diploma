#include <stdio.h>

void main()
{
    float weightPounds, heightInches;
    float weightKg, heightMeters, bmi;

    printf("Enter weight in pounds: ");
    scanf("%f", &weightPounds);

    printf("Enter height in inches: ");
    scanf("%f", &heightInches);

    weightKg = weightPounds * 0.45359237;
    heightMeters = heightInches * 0.0254;

    bmi = weightKg / (heightMeters * heightMeters);

    printf("BMI = %.2f", bmi);
}