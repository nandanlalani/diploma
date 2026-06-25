#include<stdio.h>

void main() {
    float s1, s2, s3, s4, s5, total, percentage;

    printf("Enter marks of 5 subjects: ");
    scanf("%f %f %f %f %f", &s1, &s2, &s3, &s4, &s5);

    total = s1 + s2 + s3 + s4 + s5;
    percentage = total / 5;

    printf("Percentage = %f", percentage);
}