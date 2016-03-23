#include "randunif.h"
#include "array.h"

void SampleWithoutReplacement(int Pop, int samp, int *Vec){

    int t = 0; /* total input records dealt with */
    int m = 0; /* number of items selected so far */
    
    double u;

    while (m < samp){
        u = randunif();
        if ((Pop - t)*u >= samp - m ){
            t++;
        }
        else{
           Vec[m] = t;
           t++; 
           m++;
        }
    }
}
