#ifndef AVX_64_CALC_MAT_4_X_4_LNV_H
#define AVX_64_CALC_MAT_4_X_4_LNV_H

#include "Mat4x4.h"

#ifdef _DEBUG
extern void Avx64CalcMat4x4InvTest(void);
#endif

extern bool Mat4x4InvCpp(Mat4x4 m_inv, Mat4x4 m, float epsilon, bool *is_singular);

extern "C" bool Mat4x4Inv_(Mat4x4 m_inv, Mat4x4 m, float epsilon, bool *is_singular);

extern void Avx64CalcMat4x4InvTimed(void);

#endif //AVX_64_CALC_MAT_4_X_4_LNV_H