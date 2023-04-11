//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float4x3 gBoneMtx[48];
//   row_major float4x4 gWorldViewProj;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   gWorldViewProj c8       4
//   gBoneMtx       c64    144
//

    vs_3_0
    def c0, 765.005859, 1, 0, 0
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_texcoord v3
    dcl_color v4
    dcl_position o0
    dcl_texcoord o1.xy
    dcl_color o2
    mul r0, c0.x, v2
    mova a0, r0
    mul r0, v1.y, c65[a0.y]
    mad r0, c65[a0.x], v1.x, r0
    mad r0, c65[a0.z], v1.z, r0
    mad r0, c65[a0.w], v1.w, r0
    mad r1, v0.xyzx, c0.yyyz, c0.zzzy
    dp4 r0.x, r1, r0
    mul r0, r0.x, c9
    mul r2, v1.y, c64[a0.y]
    mad r2, c64[a0.x], v1.x, r2
    mad r2, c64[a0.z], v1.z, r2
    mad r2, c64[a0.w], v1.w, r2
    dp4 r2.x, r1, r2
    mad r0, r2.x, c8, r0
    mul r2, v1.y, c66[a0.y]
    mad r2, c66[a0.x], v1.x, r2
    mad r2, c66[a0.z], v1.z, r2
    mad r2, c66[a0.w], v1.w, r2
    dp4 r1.x, r1, r2
    mad r0, r1.x, c10, r0
    add o0, r0, c11
    mov o1.xy, v3
    mov o2, v4

// approximately 24 instruction slots used
 