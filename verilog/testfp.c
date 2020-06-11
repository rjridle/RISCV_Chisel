#include <stdio.h>

union f {
  unsigned short x[2];
  float y;
} a, b, c;

int main() {
  
  a.x[1] = 0x3F75;
  a.x[0] = 0x0000;
  b.x[1] = 0x3FC0;
  b.x[0] = 0x0000;

  c.y = a.y + b.y;

  printf("%.5e + %.5e = %.5e\n", a.y, b.y, c.y);
  printf("\n");
  printf("a = %.4x%.4x \n", a.x[1], a.x[0]);
  printf("b = %.4x%.4x \n", b.x[1], b.x[0]);
  printf("c = %.4x%.4x \n", c.x[1], c.x[0]);

  printf("\n");
  c.y = a.y * b.y;

  printf("%.5e * %.5e = %.5e\n", a.y, b.y, c.y);
  printf("\n");
  printf("a = %.4x%.4x \n", a.x[1], a.x[0]);
  printf("b = %.4x%.4x \n", b.x[1], b.x[0]);
  printf("c = %.4x%.4x \n", c.x[1], c.x[0]);

}

