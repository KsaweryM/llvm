; RUN: sycl-post-link --device-globals -S < %s -o %t.files.table
; RUN: FileCheck %s -input-file=%t.files_0.prop --check-prefix CHECK-PROP
source_filename = "test_global_variable.cpp"
target datalayout = "e-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-n8:16:32:64"
target triple = "spir64-unknown-unknown"

%"class.cl::sycl::ext::oneapi::device_global.0" = type { i32 addrspace(4)* }
%"class.cl::sycl::ext::oneapi::device_global.1" = type { i8 }
%class.anon.0 = type { i8 }

@_ZL7dg_int1 = weak_odr addrspace(1) constant %"class.cl::sycl::ext::oneapi::device_global.0" zeroinitializer, align 8, !spirv.Decorations !0 #0
@_ZL7dg_int2 = weak_odr addrspace(1) constant %"class.cl::sycl::ext::oneapi::device_global.0" zeroinitializer, align 8, !spirv.Decorations !4 #1
@_ZL8dg_bool3 = weak_odr addrspace(1) constant %"class.cl::sycl::ext::oneapi::device_global.1" zeroinitializer, align 1, !spirv.Decorations !8 #2
@_ZL8dg_bool4 = weak_odr addrspace(1) constant %"class.cl::sycl::ext::oneapi::device_global.1" zeroinitializer, align 1, !spirv.Decorations !10 #3
@_ZL7no_dg_int1 = weak_odr addrspace(1) constant %"class.cl::sycl::ext::oneapi::device_global.0" zeroinitializer, align 8, !spirv.Decorations !12 #4

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define weak_odr spir_func void @_ZZ4mainENKUlvE_clEv(%class.anon.0 addrspace(4)* align 1 dereferenceable_or_null(1) %this) #5 align 2 {
entry:
  %this.addr = alloca %class.anon.0 addrspace(4)*, align 8
  %this.addr.ascast = addrspacecast %class.anon.0 addrspace(4)** %this.addr to %class.anon.0 addrspace(4)* addrspace(4)*
  store %class.anon.0 addrspace(4)* %this, %class.anon.0 addrspace(4)* addrspace(4)* %this.addr.ascast, align 8
  %this1 = load %class.anon.0 addrspace(4)*, %class.anon.0 addrspace(4)* addrspace(4)* %this.addr.ascast, align 8
  %call1 = call spir_func align 4 dereferenceable(4) i32 addrspace(4)* @_ZNK2cl4sycl3ext6oneapi13device_globalIiJNS2_8PropertyIXadsoKcL_ZL5Name1EEEXadsoS5_L_ZL6Value1EEEEENS4_IXadsoS5_L_ZL5Name2EEEXadsoS5_L_ZL6Value2EEEEENS4_IXadsoS5_L_ZL5Name3EEEXadsoS5_L_ZL6Value3EEEEENS4_IXadsoS5_L_ZL5Name4EEEXadsoS5_L_ZL6Value4EEEEEEE3getEv(%"class.cl::sycl::ext::oneapi::device_global.0" addrspace(4)* align 8 dereferenceable_or_null(8) addrspacecast (%"class.cl::sycl::ext::oneapi::device_global.0" addrspace(1)* @_ZL7dg_int1 to %"class.cl::sycl::ext::oneapi::device_global.0" addrspace(4)*)) #6
  %call2 = call spir_func align 4 dereferenceable(4) i32 addrspace(4)* @_ZNK2cl4sycl3ext6oneapi13device_globalIiJNS2_8PropertyIXadsoKcL_ZL5Name1EEEXadsoS5_L_ZL6Value1EEEEENS4_IXadsoS5_L_ZL5Name2EEEXadsoS5_L_ZL6Value2EEEEENS4_IXadsoS5_L_ZL5Name3EEEXadsoS5_L_ZL6Value3EEEEENS4_IXadsoS5_L_ZL5Name4EEEXadsoS5_L_ZL6Value4EEEEEEE3getEv(%"class.cl::sycl::ext::oneapi::device_global.0" addrspace(4)* align 8 dereferenceable_or_null(8) addrspacecast (%"class.cl::sycl::ext::oneapi::device_global.0" addrspace(1)* @_ZL7dg_int2 to %"class.cl::sycl::ext::oneapi::device_global.0" addrspace(4)*)) #6
  %call3 = call spir_func align 1 dereferenceable(1) i8 addrspace(4)* @_ZNK2cl4sycl3ext6oneapi13device_globalIbJNS2_8PropertyIXadsoKcL_ZL5Name1EEEXadsoS5_L_ZL6Value1EEEEENS4_IXadsoS5_L_ZL5Name2EEEXadsoS5_L_ZL6Value2EEEEENS4_IXadsoS5_L_ZL5Name3EEEXadsoS5_L_ZL6Value3EEEEENS4_IXadsoS5_L_ZL5Name4EEEXadsoS5_L_ZL6Value4EEEEEEE3getEv(%"class.cl::sycl::ext::oneapi::device_global.1" addrspace(4)* align 1 dereferenceable_or_null(1) addrspacecast (%"class.cl::sycl::ext::oneapi::device_global.1" addrspace(1)* @_ZL8dg_bool3 to %"class.cl::sycl::ext::oneapi::device_global.1" addrspace(4)*)) #6
  %call4 = call spir_func align 1 dereferenceable(1) i8 addrspace(4)* @_ZNK2cl4sycl3ext6oneapi13device_globalIbJNS2_8PropertyIXadsoKcL_ZL5Name1EEEXadsoS5_L_ZL6Value1EEEEENS4_IXadsoS5_L_ZL5Name2EEEXadsoS5_L_ZL6Value2EEEEENS4_IXadsoS5_L_ZL5Name3EEEXadsoS5_L_ZL6Value3EEEEENS4_IXadsoS5_L_ZL5Name4EEEXadsoS5_L_ZL6Value4EEEEEEE3getEv(%"class.cl::sycl::ext::oneapi::device_global.1" addrspace(4)* align 1 dereferenceable_or_null(1) addrspacecast (%"class.cl::sycl::ext::oneapi::device_global.1" addrspace(1)* @_ZL8dg_bool4 to %"class.cl::sycl::ext::oneapi::device_global.1" addrspace(4)*)) #6
  ret void
}

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
declare spir_func align 4 dereferenceable(4) i32 addrspace(4)* @_ZNK2cl4sycl3ext6oneapi13device_globalIiJNS2_8PropertyIXadsoKcL_ZL5Name1EEEXadsoS5_L_ZL6Value1EEEEENS4_IXadsoS5_L_ZL5Name2EEEXadsoS5_L_ZL6Value2EEEEENS4_IXadsoS5_L_ZL5Name3EEEXadsoS5_L_ZL6Value3EEEEENS4_IXadsoS5_L_ZL5Name4EEEXadsoS5_L_ZL6Value4EEEEEEE3getEv(%"class.cl::sycl::ext::oneapi::device_global.0" addrspace(4)* align 8 dereferenceable_or_null(8)) #5 align 2

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
declare spir_func align 1 dereferenceable(1) i8 addrspace(4)* @_ZNK2cl4sycl3ext6oneapi13device_globalIbJNS2_8PropertyIXadsoKcL_ZL5Name1EEEXadsoS5_L_ZL6Value1EEEEENS4_IXadsoS5_L_ZL5Name2EEEXadsoS5_L_ZL6Value2EEEEENS4_IXadsoS5_L_ZL5Name3EEEXadsoS5_L_ZL6Value3EEEEENS4_IXadsoS5_L_ZL5Name4EEEXadsoS5_L_ZL6Value4EEEEEEE3getEv(%"class.cl::sycl::ext::oneapi::device_global.1" addrspace(4)* align 1 dereferenceable_or_null(1)) #5 align 2

attributes #0 = { "sycl-device-global-size"="4" "sycl-device-image-scope"="false" "sycl-host-access"="1" "sycl-implement-in-csr"="true" "sycl-init-mode"="0" "sycl-unique-id"="6da74a122db9f35d____ZL7dg_int1" }
attributes #1 = { "sycl-device-global-size"="4" "sycl-implement-in-csr"="false" "sycl-init-mode"="1" "sycl-unique-id"="7da74a1187b9f35d____ZL7dg_int2" }
attributes #2 = { "sycl-device-global-size"="1" "sycl-device-image-scope"="true" "sycl-host-access"="0" "sycl-implement-in-csr" "sycl-init-mode"="0" "sycl-unique-id"="9d329ad59055e972____ZL8dg_bool3" }
attributes #3 = { "sycl-device-global-size"="1" "sycl-device-image-scope" "sycl-host-access"="2" "sycl-unique-id"="dda2bad52c45c432____ZL8dg_bool4" }
attributes #4 = { "sycl-device-image-scope"="false" "sycl-host-access"="1" "sycl-implement-in-csr"="true" "sycl-init-mode"="0" "sycl-unique-id"="6da74a122db9f35d____ZL7no_dg_int1" }
attributes #5 = { convergent mustprogress noinline norecurse nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #6 = { convergent nounwind }

!llvm.dependent-libraries = !{!13}
!llvm.module.flags = !{!14, !15}
!opencl.spir.version = !{!16}
!spirv.Source = !{!17}
!llvm.ident = !{!18}

!0 = !{!1, !2, !3}
!1 = !{i32 6149, i32 1}
!2 = !{i32 6148, i32 0}
!3 = !{i32 6147, i32 1, !"6da74a122db9f35d____ZL7dg_int1"}
!4 = !{!5, !6, !7}
!5 = !{i32 6149, i32 0}
!6 = !{i32 6148, i32 1}
!7 = !{i32 6147, i32 2, !"7da74a1187b9f35d____ZL7dg_int2"}
!8 = !{!1, !2, !9}
!9 = !{i32 6147, i32 0, !"9d329ad59055e972____ZL8dg_bool3"}
!10 = !{!11}
!11 = !{i32 6147, i32 2, !"dda2bad52c45c432____ZL8dg_bool4"}
!12 = !{!1, !2}
!13 = !{!"libcpmt"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{i32 1, i32 2}
!17 = !{i32 4, i32 100000}
!18 = !{!"clang version 14.0.0"}

; Ensure that the default values are correct.
; ABAAAAAAAAABAAAAAxxxxx is decoded to
; "40 00 00 00 00 00 00 00 | 04 00 00 00 | 00 | xx xx xx" which consists of:
;  1. 8 bytes denoting the bit-size of the byte array, here 64 bits or 8 bytes.
;  2. 4 bytes with the value of the 32-bit uint32_t integer with the size of the
;     underlying type of the device global variable. Its value being 4.
;  3. 1 byte with the value of the 8-bit uint8_t integer with the flag that
;     the device global variable has the 'device_image_scope' property.
;     Its value being 0, no property.
;  4. Any 3 bytes used as padding to align the structure to 8 bytes.
;
; ABAAAAAAAAQAAAAABxxxxx is decoded to
; "40 00 00 00 00 00 00 00 | 01 00 00 00 | 01 | xx xx xx" which consists of:
;  1. 8 bytes denoting the bit-size of the byte array, here 64 bits or 8 bytes.
;  2. 4 bytes with the value of the 32-bit uint32_t integer with the size of the
;     underlying type of the device global variable. Its value being 1.
;  3. 4 byte with the value of the 32-bit uint32_t integer with the flag that
;     the device global variable has the 'device_image_scope' property.
;     Its value being 1, property is present.
;
; CHECK-PROP: [SYCL/device globals]
; CHECK-PROP-NEXT: 6da74a122db9f35d____ZL7dg_int1=2|ABAAAAAAAAABAAAAAAAAAA
; CHECK-PROP-NEXT: 7da74a1187b9f35d____ZL7dg_int2=2|ABAAAAAAAAABAAAAAAAAAA
; CHECK-PROP-NEXT: 9d329ad59055e972____ZL8dg_bool3=2|ABAAAAAAAAQAAAAABAAAAA
; CHECK-PROP-NEXT: dda2bad52c45c432____ZL8dg_bool4=2|ABAAAAAAAAQAAAAABAAAAA
;
; The variable is not a device global one and must be ignored
; CHECK-PROP-NOT: 6da74a122db9f35d____ZL7no_dg_int1
