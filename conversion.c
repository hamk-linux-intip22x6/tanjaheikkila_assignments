/* conversion.c */
#include "conversion.h"

const double INCH_IN_CM = 2.54;

double cmToInch(double cm) {
  return cm/INCH_IN_CM;
}

double inchToCm(double inch) {
  return inch*INCH_IN_CM;
}
