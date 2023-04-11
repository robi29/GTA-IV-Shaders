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
    dcl_color v1
    dcl_texcoord v2
    dcl_texcoord1 v3
    dcl_normal v4
    dcl_position o0
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_texcoord3 o3.xyz
    dcl_color o4
    dcl_texcoord6 o5
    dcl_texcoord7 o6.xy
    mul r0.xyz, c1, v0.y
    mad r0.xyz, v0.x, c0, r0
    mad r0.xyz, v0.z, c2, r0
    add r0.xyz, r0, c3
    add r1.xyz, r0, c3
    mov o5.xyz, r0
    add o3.xyz, -r1, c15
    mul r0.xyz, c1, v4.y
    mad r0.xyz, v4.x, c0, r0
    mad r0.xyz, v4.z, c2, r0
    add r0.xyz, r0, c4.x
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    mul o2.xyz, r0, r0.w
    mul r0, c9, v0.y
    mad r0, v0.x, c8, r0
    mad r0, v0.z, c10, r0
    add r0, r0, c11
    mov o0, r0
    mov o2.w, r0.w
    mov o1.xy, v2
    mad o4, v1.xyzx, c4.yyyz, c4.zzzy
    mov o5.w, c4.y
    mov o6.xy, v3

// approximately 24 instruction slots used
 