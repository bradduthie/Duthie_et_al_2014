/* This will produce one norm distr. random # */

#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include "randunif.h"

int randnormINT(double mean, double sd){
    double x1, x2, w, y;    
    do{
        x1 = 2.0 * randunif() - 1;
        x2 = 2.0 * randunif() -1;
        w  = x1*x1 + x2*x2;
    } while(w >= 1.0);
    w = sqrt((-2.0 * log(w)) / w);
    y = x1*w;
    y = y*sd;
    y = y + mean;
    y = floor(y + 0.5);    
    return y; 
}
