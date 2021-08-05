#include <stdio.h>
#include <stdlib.h>

int testingResults = 0;

// void squareRoot(unsigned short int inputVal)
int32_t squareRoot(int32_t M)
{
    register int32_t f = 16384;
    register int32_t  f_sqrt = 16384;
    register int32_t local_M = M;

    register int i;

    register int32_t u = f<<2; // == 4*f
    register int32_t u_sqrt =  f_sqrt<<1; // 2*f_sqrt
       
    // for (i^=i; i<32; i++)
    for(i=1;!(i&16);i++) //prefered
    {
        if (u <= local_M) // prefered
        // if ((u-local_M-1)&2147483648)
        {
            f = u;
            f_sqrt = u_sqrt;
        }

        u = f + (f >> i);
        u_sqrt =  f_sqrt + (f_sqrt >> i);
        u = u + (u >> i);

    }
    if (u <= local_M) // prefered
    // if ((u-local_M-1)&2147483648)
    {
        f = u;
        f_sqrt = u_sqrt;
    }    

	return  f_sqrt;
}

int main(int argc, char *argv[])
{
    float inputVals[7] = {1, 1.75, 2, 2.25, 3, 3.5, 3.999999};

    int i = 0;
    if(testingResults){
        for(i; i < 7; i++) {
            float inputValue = inputVals[i];
            int32_t scaledUpValue = (int32_t)(inputValue * 16384); // *16384 == <<14
            int32_t outputValue = squareRoot(scaledUpValue); 
            float scaledDownValue = ((float)outputValue)/16384; // /16384 == >>14
        
            printf("The Square Root of %1.3f is %f\n", inputValue, scaledDownValue);
        }
    } else {
        int32_t inputValue = (int32_t)(1.75 * 16384);
        for(i; i < 1000000; i++) squareRoot(inputValue);
    }
    

    printf("\n");
    return 0;
}
