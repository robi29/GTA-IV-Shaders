//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorld;
//   row_major float4x4 gWorldViewProj;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   gWorld         c0       4
//   gWorldViewProj c8       4
//   gViewInverse   c12      4
//

    vs_3_0
    dcl_position v0
    dcl_normal v1
    dcl_color v2
    dcl_texcoord v3
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1
    dcl_texcoord1 o2.xyz
    dcl_texcoord2 o3.xyz
    dcl_texcoord3 o4.xyz
    dcl_texcoord4 o5
    dcl_texcoord5 o6.xy
    add o3.xyz, c3, v0
    mul r0, c9, v0.y
    mad r0, v0.x, c8, r0
    mad r0, v0.z, c10, r0
    add r0, r0, c11
    mov o0, r0
    mov o10.zw, r0
    mov o1, r0
    mov o2.xyz, v1
    mov o4.xyz, c15
    mov o5, v2
    mov o6.xy, v3
    mov r20.x, c8.w
    add r20.x, r20.x, c9.w
    add r20.x, r20.x, c10.w
    add o10.y, r20.x, c11.w

// approximately 11 instruction slots used
