#include <stdio.h>
#include <stdlib.h>

int printOutput = 1;

double powerArray[32] = {1, 0.5, 0.25, 0.125, 0.0625, 0.03125, 0.015625, 0.0078125, 0.00390625, 0.001953125, 0.0009765625, 0.00048828125, 0.000244140625, 0.0001220703125, 0.00006103515625, 0.000030517578125, 0.0000152587890625, 0.00000762939453125, 0.000003814697265625, 0.0000019073486328125, 0.00000095367431640625, 0.000000476837158203125, 0.0000002384185791015625, 0.00000011920928955078125, 0.00000005960464477539063, 0.000000029802322387695312, 0.000000014901161193847656, 0.000000007450580596923828, 0.000000003725290298461914, 0.000000001862645149230957, 0.0000000009313225746154785};

void cubeRoot(double M)
{

    double f = 1.0;
    double f_sqrt_3 = 1.0;

    int i = 0;
    for (i; i < 31; i++)
    {
        double var = f * (1 + powerArray[i]) * (1 + powerArray[i]) * (1 + powerArray[i]);
        double var_sqrt_3 = f_sqrt_3 * (1 + powerArray[i]);
        if (var <= M)
        {
            f = var;
            f_sqrt_3 = var_sqrt_3;
        }
    }

    if (printOutput)
        printf("\tThe Cube Root is:\t\t%1.9lf\n", f_sqrt_3);
}

int main(int argc, char *argv[])
{
    //unsigned short int inputVal = 3.5;
    double inputVals[8] = {1, 1.5, 2, 2.5, 4, 6, 8, 5.123456789};

    int i = 0;
    for (i; i < 8; i++)
    {
        double inputValue = inputVals[i];
        if (printOutput)
        {
            printf("\nInput value: \t\t\t\t%lf\n", inputValue);
        }
        cubeRoot(inputValue);
    }

    printf("\n");
    return 0;
}
