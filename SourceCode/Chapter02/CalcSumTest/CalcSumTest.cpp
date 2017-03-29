
#include <cstdio>

int CalcSumTest(int a, int b, int c)
{
    return a + b + c;
}

int main(int argc, char *argv[])
{
    int a = 17, b = 11, c = 14;
    int sum = CalcSumTest(a, b, c);

    printf("  a:   %d\n", a);
    printf("  b:   %d\n", b);
    printf("  c:   %d\n", c);
    printf("  sum: %d\n", sum);
    return 0;
}
