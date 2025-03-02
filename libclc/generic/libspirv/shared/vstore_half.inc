//===----------------------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

// This does not exist for fp16
#if __CLC_FPSIZE > 16
#ifdef __CLC_VECSIZE

#if __CLC_VECSIZE == 3
#define __CLC_OFFSET 4
#else
#define __CLC_OFFSET __CLC_VECSIZE
#endif

FUNC(__CLC_VECSIZE, __CLC_VECSIZE, __CLC_OFFSET, __CLC_GENTYPE,
     __CLC_SCALAR_GENTYPE, __private, n);
FUNC(__CLC_VECSIZE, __CLC_VECSIZE, __CLC_OFFSET, __CLC_GENTYPE,
     __CLC_SCALAR_GENTYPE, __local, n);
FUNC(__CLC_VECSIZE, __CLC_VECSIZE, __CLC_OFFSET, __CLC_GENTYPE,
     __CLC_SCALAR_GENTYPE, __global, n);
#if __OPENCL_C_VERSION__ == CL_VERSION_2_0 ||                                  \
    (__OPENCL_C_VERSION__ >= CL_VERSION_3_0 &&                                 \
     defined(__opencl_c_generic_address_space))
FUNC(__CLC_VECSIZE, __CLC_VECSIZE, __CLC_OFFSET, __CLC_GENTYPE,
     __CLC_SCALAR_GENTYPE, __generic, n);
#endif

#undef __CLC_OFFSET
#else
FUNC_SCALAR(1, 1, __CLC_GENTYPE, __CLC_SCALAR_GENTYPE, __private);
FUNC_SCALAR(1, 1, __CLC_GENTYPE, __CLC_SCALAR_GENTYPE, __local);
FUNC_SCALAR(1, 1, __CLC_GENTYPE, __CLC_SCALAR_GENTYPE, __global);
#if __OPENCL_C_VERSION__ == CL_VERSION_2_0 ||                                  \
    (__OPENCL_C_VERSION__ >= CL_VERSION_3_0 &&                                 \
     defined(__opencl_c_generic_address_space))
FUNC_SCALAR(1, 1, __CLC_GENTYPE, __CLC_SCALAR_GENTYPE, __generic);
#endif
#endif
#endif
