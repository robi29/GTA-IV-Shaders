//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   row_major float4x4 gBlitMatrix;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   gBlitMatrix  c208     4
//

    vs_3_0
    def c0, 1, 0, 0, 0
    dcl_position v0
    dcl_color v1
    dcl_texcoord v2
    dcl_position o0
    dcl_color o1
    dcl_texcoord o2.xy
    mul r0.xyz, c209, v0.y
    mad r0.xyz, v0.x, c208, r0
    mad r0.xyz, v0.z, c210, r0
    add o0.xyz, r0, c211
    mov o0.w, c0.x
    mov o1, v1
    mov o2.xy, v2

// approximately 7 instruction slots used
