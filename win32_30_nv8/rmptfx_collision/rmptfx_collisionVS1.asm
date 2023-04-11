//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   row_major float3x4 gBoneMtx[48];
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
    dcl_normal v3
    dcl_position o0
    dcl_texcoord1 o1.xyz
    dcl_texcoord o2.x
    mul r0, c0.x, v2
    mova a0, r0.yxzw
    mul r1, v1.y, c65[a0.x]
    mad r1, c65[a0.y], v1.x, r1
    mad r0, c65[a0.z], v1.z, r1
    mad r0, c65[a0.w], v1.w, r0
    dp3 r1.x, r0, v3
    mul r1.xyz, r1.x, c9
    mul r2, v1.y, c64[a0.x]
    mul r3, v1.y, c66[a0.x]
    mad r3, c66[a0.y], v1.x, r3
    mad r2, c64[a0.y], v1.x, r2
    mad r2, c64[a0.z], v1.z, r2
    mad r3, c66[a0.z], v1.z, r3
    mad r3, c66[a0.w], v1.w, r3
    mad r2, c64[a0.w], v1.w, r2
    dp3 r1.w, r2, v3
    mad r1.xyz, r1.w, c8, r1
    dp3 r1.w, r3, v3
    mad o1.xyz, r1.w, c10, r1
    mad r1, v0.xyzx, c0.yyyz, c0.zzzy
    dp4 r0.x, r0, r1
    mul r0, r0.x, c9
    dp4 r2.x, r2, r1
    dp4 r1.x, r3, r1
    mad r0, r2.x, c8, r0
    mad r0, r1.x, c10, r0
    add r0, r0, c11
    rcp r1.x, r0.w
    mul o2.x, r0.z, r1.x
    mov o0, r0

// approximately 31 instruction slots used
 