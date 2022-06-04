#include <stdio.h>
#include "libP.h"
#include "libV.h"


int main()
{
    int a;
    printf("Podaj dlugosc boku: \n");
    scanf("%d", &a);
    pole(a);
    objetosc(a);
    return 0;
}


