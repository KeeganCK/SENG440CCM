#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int testing = 0;

// void squareRoot(unsigned short int inputVal)
uint32_t squareRoot(uint64_t M)
{
    uint32_t f = 32768;
    uint32_t  f_sqrt = 32768;
    int i = 0;
    for (i; i < 32; i++)
    {
        if(testing) printf("Iteration %d\n",i);

        uint32_t u = f + (f >> i);
        u = u + (u >> i);
                
        uint32_t u_sqrt =  f_sqrt + (f_sqrt >> i);

        if(testing)printf("\tu:\t %d\n", u);

        if (u <= M)
        {
            f = u;
            f_sqrt = u_sqrt;
			if(testing)printf("\t f_sqrt:\t%d\n",  f_sqrt);
        }
        if(testing)printf("\n");
    }
	return  f_sqrt;
}

int32_t isqrt(int32_t num) {
    int32_t res = 0;
    int32_t bit = 1 << 30; // The second-to-top bit is set.
                           // Same as ((unsigned) INT32_MAX + 1) / 2.

    // "bit" starts at the highest power of four <= the argument.
    while (bit > num)
        bit >>= 2;

    while (bit != 0) {
        if (num >= res + bit) {
            num -= res + bit;
            res = (res >> 1) + bit;
        } else
            res >>= 1;
        bit >>= 2;
    }
    return res;
}

int main(int argc, char *argv[])
{
    //unsigned short int inputVal = 3.5;
    float inputVals[7] = {1, 1.75, 2, 2.25, 3, 3.5, 3.999};
    //int inputVals[4] = {1, 2, 3, 4};

    int i = 0, j = 0;
    //for (i; i < 100000; i++){
        for(j = 0; j < 4; j++) {
            float inputValue = inputVals[j];
			uint64_t scaledUpValue = (uint64_t)(inputValue * 32768); // *16384 == <<14
            uint64_t outputValue = squareRoot(scaledUpValue); 
            float scaledDownValue = ((float)outputValue)/32768; // /32768 == >>(7 + 8) +8 to accomidate for the addition 8 bits of u
            //float scaledDownValue = ((float)outputValue)/128; // /128 == >>7
			
            printf("Input: \t\t%1.3f\n",inputValue);
            printf("Scaled up: \t%d\n",scaledUpValue);
            printf("Output: \t%d\n",outputValue);
            printf("Scaled Down: \t%1.3f\n",scaledDownValue);
            printf("\n");
        }
    // }

    printf("\n");
    return 0;
}
