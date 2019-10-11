#include <stdio.h>
#include "max.h"

int main(int argc, char *argv[])
{
    int a = 12, b = -2, c = 120;
    printf("The max value of 12, -2 and 120 is %d.\n", max(a, b, c));
    return 0;
}