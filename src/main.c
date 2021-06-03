#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#pragma region Helper_Functions

float shiftValueRightBy(int value, int shiftBy){
    return value >> shiftBy;
}

#pragma endregion Helper_Functions

#pragma region Modular_Functions

void squareRoot(unsigned short int inputVal)
{
    int bitsOfPrecision = 16;
    printf("Calculating the square root of %d\n", inputVal);
    //%hi?

    unsigned short int f = 1.0;
    unsigned int f_squareRoot = 1.0;
    int i = 0;
    for(i; i<= bitsOfPrecision-1; i++){
        unsigned short int factor = 1 + shiftValueRightBy(1,i);
        unsigned int precision = f * factor * factor;
        unsigned int precision_squareRoot = f_squareRoot * factor;

        printf("\nInteration %d\n",i);
        printf("\tFactor: %d\n",factor);
        printf("\tPrecision: %d\n",precision);
        printf("\tPrecision Square Root: %d\n",precision_squareRoot);

        if(precision <= inputVal){
            f = precision;
            f_squareRoot = precision_squareRoot;
            printf(" ! Precision Indicator Hit ! \n");
            printf("\tPrecision: : %d\n",precision);
            printf("\tIteration: %d\n",i);
            break; //???
        }
    }
    printf("\n\n\t%d\n", f_squareRoot);
}

#pragma endregion Modular_Functions


int main(int argc, char *argv[]) {
    unsigned short int inputVal = 3.5;
    squareRoot(inputVal);
    return 0;
}

