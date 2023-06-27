//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float4x3 gBoneMtx[48];
//   float4 gDayNightEffects;
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorldViewProj;
//   float4 globalScalars;
//   float4 globalScalars2;
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   gWorldViewProj   c8       4
//   gViewInverse     c12      4
//   globalScalars    c39      1
//   globalScalars2   c40      1
//   gDayNightEffects c45      1
//   gBoneMtx         c64    144
//

    vs_3_0
    def c0, 765.005859, 1, 0, -1
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_texcoord v3
    dcl_normal v4
    dcl_tangent v5
    dcl_color v6
    dcl_position o0
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_texcoord4 o3.xyz
    dcl_texcoord5 o4.xyz
    dcl_color o5
    dcl_texcoord6 o6
    dcl_texcoord7 o7
    mad r0, v0.xyzx, c0.yyyz, c0.zzzy
    mul r1, c0.x, v2
    mova a0, r1
    mul r1, v1.y, c64[a0.y]
    mad r1, c64[a0.x], v1.x, r1
    mad r1, c64[a0.z], v1.z, r1
    mad r1, c64[a0.w], v1.w, r1
    dp4 r2.x, r0, r1
    mul r3, v1.y, c65[a0.y]
    mad r3, c65[a0.x], v1.x, r3
    mad r3, c65[a0.z], v1.z, r3
    mad r3, c65[a0.w], v1.w, r3
    dp4 r2.y, r0, r3
    mul r4, v1.y, c66[a0.y]
    mad r4, c66[a0.x], v1.x, r4
    mad r4, c66[a0.z], v1.z, r4
    mad r4, c66[a0.w], v1.w, r4
    dp4 r2.z, r0, r4
    add r0.xyz, -r2, c15
    dp3 r5.x, v5, r1
    dp3 r1.x, v4, r1
    dp3 r5.y, v5, r3
    dp3 r1.y, v4, r3
    dp3 r5.z, v5, r4
    dp3 r1.z, v4, r4
    dp3 o7.x, r5, r0
    mul r3.xyz, r5.zxyw, r1.yzxw
    mad r3.xyz, r5.yzxw, r1.zxyw, -r3
    mov o3.xyz, r5
    mul r3.xyz, r3, v5.w
    dp3 o7.y, r3, r0
    mov o4.xyz, r3
    dp3 o7.z, r1, r0
    mov o2.xyz, r1
    mul r0.xy, c45, v6
    add r0.x, r0.y, r0.x
    mov r0.yw, c0
    mad r0.x, r0.x, c39.z, r0.w
    mad o5.xy, c40.z, r0.x, r0.y
    mul r0, r2.y, c9
    mov o6.xyz, r2
    mad r0, r2.x, c8, r0
    mad r0, r2.z, c10, r0
    add r0, r0, c11
    mov o0, r0
    mov o2.w, r0.w
    mov o1.xy, v3
    mov o5.zw, v6
    mov o6.w, c0.y
    mov o7.w, c0.y

// approximately 50 instruction slots used
