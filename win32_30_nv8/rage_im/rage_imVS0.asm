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
//   gWorld         c0       3
//   gWorldViewProj c8       4
//   gViewInverse   c12      3
//

    vs_3_0
    def c3, 0.25, 1, 0, 0
    dcl_position v0
    dcl_color v1
    dcl_texcoord v2
    dcl_normal v3
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1.xy
    dcl_color o2
    mul r0, c9, v0.y
    mad r0, v0.x, c8, r0
    mad r0, v0.z, c10, r0
    add o0, r0, c11
    add o10.zw, r0, c11
    nrm r0.xyz, v3
    mul r1.xyz, r0.y, c1
    mad r0.xyw, r0.x, c0.xyzz, r1.xyzz
    mad r0.xyz, r0.z, c2, r0.xyww
    nrm r1.xyz, r0
    dp3 r0.x, r1, c14
    max r0.xyz, r0.x, c3.x
    mov r0.w, c3.y
    mul o2, r0, v1
    mov o1.xy, v2
    mov r20.x, c8.w
    add r20.x, r20.x, c9.w
    add r20.x, r20.x, c10.w
    add o10.y, r20.x, c11.w

// approximately 18 instruction slots used
