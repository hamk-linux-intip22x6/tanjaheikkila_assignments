#include <stdio.h>
#include "conversion.h"

int main() {
  double cm, inch;
  printf("How many inches?");
  if (scanf("%lf", &inch)) {
    cm = inchToCm(inch);
    printf("%.2lf inches is %.2lf cm\n", inch, cm);
  } else {
    printf("Invalid input, please type valid floating point numbers.\n");
  }
  return 0;
}
