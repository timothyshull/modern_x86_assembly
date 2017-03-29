#include <cstdio>
#include <cstdint>

extern "C" double CalcResult3_(int64_t a, int64_t b, double c, double d);

int main(int argc, char *argv[])
{
    int64_t a = 10;
    int64_t b = -15;
    double c = 2.0;
    double d = -3.0;

    double e = CalcResult3_(a, b, c, d);

    printf("a: %lld  b: %lld  c: %.4lf  d: %.4lf\n", a, b, c, d);
    printf("e: %.4lf\n", e);
    return 0;
}
