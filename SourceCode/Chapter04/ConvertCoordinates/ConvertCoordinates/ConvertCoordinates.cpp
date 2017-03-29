
#include <cstdio>

extern "C" void RectToPolar_(double x, double y, double *r, double *a);
extern "C" void PolarToRect_(double r, double a, double *x, double *y);

int main(int argc, char *argv[])
{
    double x1[] = {0, 3, -3, 4, -4};
    double y1[] = {0, 3, -3, 4, -4};
    const int nx = sizeof(x1) / sizeof(double);
    const int ny = sizeof(y1) / sizeof(double);

    for (int i = 0; i < ny; i++) {
        for (int j = 0; j < nx; j++) {
            double r, a, x2, y2;

            RectToPolar_(x1[i], y1[j], &r, &a);
            PolarToRect_(r, a, &x2, &y2);

            printf("[%d, %d]: ", i, j);
            printf("(%8.4lf, %8.4lf) ", x1[i], y1[j]);
            printf("(%8.4lf, %10.4lf) ", r, a);
            printf("(%8.4lf, %8.4lf)\n", x2, y2);
        }
    }

    return 0;
}
