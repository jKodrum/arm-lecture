#include <stdio.h>

extern int fibonacci(int x, int a, int b);

int main(int argc, char **argv)
{
    int number=0;
    int result=0;

    scanf("%d",&number);
    result = fibonacci(number, 0, 1);   
    printf("The fibonacci sequence at %d is: %d\n", number, result);
}

