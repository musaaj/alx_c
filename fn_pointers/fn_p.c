#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef *mul_p(int,int);
 int mul(int num, int num2);

int main()
{
  int (*mul_p)(int,int);

  mul_p = mul;

  printf("%i", mul_p(3,2));
}

int mul(int num, int num2)
{
  int (*mul)(int, int) = mul;
  return (*mul)(num, num2);
}
