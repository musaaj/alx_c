#include <stdio.h>
#include <stdlib.h>

union List{
  int i;
  float f;
  double d;
  char s;
}list;

int main()
{  
  list.i = 20;
  list.f = 3;
  printf("%i", list.i);
}
