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
    def c4, 9.99999975e-006, 1, 0, 0
    dcl_position v0
    dcl_texcoord v1
    dcl_normal v2
    dcl_texcoord1 v3
    dcl_texcoord2 v4
    dcl_texcoord3 v5
    dcl_texcoord4 v6
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_texcoord3 o3.xyz
    dcl_color o4
    dcl_texcoord6 o5
    mov r0.xyz, v0
    mul r1.xyz, r0.y, v4
    mad r0.xyw, r0.x, v3.xyzz, r1.xyzz
    mad r0.xyz, r0.z, v5, r0.xyww
    add r0.xyz, r0, v6
    mul r1.xyz, r0.y, c1
    mad r1.xyz, r0.x, c0, r1
    mad r1.xyz, r0.z, c2, r1
    add r1.xyz, r1, c3
    add o3.xyz, -r1, c15
    mov o5.xyz, r1
    mul r1.xyz, c1, v2.y
    mad r1.xyz, v2.x, c0, r1
    mad r1.xyz, v2.z, c2, r1
    add r1.xyz, r1, c4.x
    dp3 r0.w, r1, r1
    rsq r0.w, r0.w
    mul o2.xyz, r1, r0.w
    mul r1, r0.y, c9
    mad r1, r0.x, c8, r1
    mad r0, r0.z, c10, r1
    add r0, r0, c11
    mov o0, r0
    mov o10.zw, r0
    mov o2.w, r0.w
    mov o1.xy, v1
    mov o4.x, v3.w
    mov o4.y, v4.w
    mov o4.z, v5.w
    mov o4.w, v6.w
    mov o5.w, c4.y
    mov r20.x, c8.w
    add r20.x, r20.x, c9.w
    add r20.x, r20.x, c10.w
    add o10.y, r20.x, c11.w

// approximately 30 instruction slots used
