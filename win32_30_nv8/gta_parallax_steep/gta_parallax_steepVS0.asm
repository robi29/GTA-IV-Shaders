//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float4 gDayNightEffects;
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorld;
//   row_major float4x4 gWorldViewProj;
//   float4 globalScalars;
//   float4 globalScalars2;
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   gWorld           c0       4
//   gWorldViewProj   c8       4
//   gViewInverse     c12      4
//   globalScalars    c39      1
//   globalScalars2   c40      1
//   gDayNightEffects c45      1
//

    vs_3_0
    def c4, 9.99999975e-006, -1, 1, 0
    dcl_position v0
    dcl_color v1
    dcl_texcoord v2
    dcl_normal v3
    dcl_tangent v4
    dcl_position o0
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_texcoord3 o3.xyz
    dcl_texcoord4 o4.xyz
    dcl_texcoord5 o5.xyz
    dcl_color o6
    dcl_texcoord6 o7
    dcl_texcoord7 o8
    mul r0.xyz, c1, v4.y
    mad r0.xyz, v4.x, c0, r0
    mad r0.xyz, v4.z, c2, r0
    add r0.xyz, r0, c4.x
    nrm r1.xyz, r0
    mul r0.xyz, c1, v0.y
    mad r0.xyz, v0.x, c0, r0
    mad r0.xyz, v0.z, c2, r0
    add r0.xyz, r0, c3
    add r2.xyz, -r0, c15
    mov o7.xyz, r0
    dp3 o8.x, r1, r2
    mul r0.xyz, c1, v3.y
    mad r0.xyz, v3.x, c0, r0
    mad r0.xyz, v3.z, c2, r0
    add r0.xyz, r0, c4.x
    nrm r3.xyz, r0
    mul r0.xyz, r1.zxyw, r3.yzxw
    mad r0.xyz, r1.yzxw, r3.zxyw, -r0
    mov o4.xyz, r1
    mul r0.xyz, r0, v4.w
    dp3 o8.y, r0, r2
    mov o5.xyz, r0
    dp3 o8.z, r3, r2
    mov o3.xyz, r2
    mov o2.xyz, r3
    mul r0.xy, c45, v1
    add r0.x, r0.y, r0.x
    mov r0.yz, c4
    mad r0.x, r0.x, c39.z, r0.y
    mad o6.xy, c40.z, r0.x, r0.z
    mul r0, c9, v0.y
    mad r0, v0.x, c8, r0
    mad r0, v0.z, c10, r0
    add r0, r0, c11
    mov o0, r0
    mov o2.w, r0.w
    mov o1.xy, v2
    mov o6.zw, v1
    mov o7.w, c4.z
    mov o8.w, c4.z

// approximately 45 instruction slots used
 