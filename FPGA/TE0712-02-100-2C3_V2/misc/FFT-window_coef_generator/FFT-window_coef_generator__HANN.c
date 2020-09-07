#include <stdio.h>
#include <math.h>
#include <stdint.h>

int main(int argc, char** argv)
{
  unsigned short coef[1024] = { 0 };
  int idx = 0;

  /* Calc */
  for (int i = 1; i < 1024; i += 2) {
    double v = sin((((double) i) * M_PI * 0.5) / 1024.0);
    coef[idx++] = (unsigned short) ((v * v) * 65535.0 + 0.5);
  }
  
  /* Formatting */
  {
    printf("; width = 16 bits\r\n");
    printf("; depth = 1024\r\n");
    printf("; FFT window coef: Hanning  (cos^2)\r\n");
    printf(";\r\n");
    printf("memory_initialization_radix = 16;\r\n");
    printf("memory_initialization_vector =");

    /* Left stem */
    for (int i = 0; i < 512; i++) {
      printf(" %04x", coef[i]);
    }

    /* Right stem */
    for (int i = 0; i < 512; i++) {
      printf(" %04x", coef[511 - i]);
    }

    printf(";\r\n");
  }
  
  return 0;
}
