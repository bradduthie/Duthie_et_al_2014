#include <stdio.h>
  
void DispVals(FILE *Disps, int *disps){

    int i, z;
    char line[251];

    i=0;
 
    Disps = fopen("Disps.txt", "r");
 
  
    while (fgets(line,50,Disps)!=NULL){ 
        sscanf(line,"%d", &z);    
        disps[i] = z;
        i++;
    }

}
