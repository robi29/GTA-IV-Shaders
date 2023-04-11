//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float4 NearFarPlane;
//   float4 gAspectRatio;
//   float gBiasToCamera;
//   float4 gDepthFxParams;
//   float gScaleFade;
//   float gSuperAlpha;
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorldViewProj;
//   float4 globalFogColor;
//   float4 globalFogColorN;
//   float4 globalFogParams;
//
//
// Registers:
//
//   Name            Reg   Size
//   --------------- ----- ----
//   gWorldViewProj  c8       4
//   gViewInverse    c12      4
//   gDepthFxParams  c16      1
//   globalFogParams c41      1
//   globalFogColor  c42      1
//   globalFogColorN c43      1
//   gAspectRatio    c47      1
//   gBiasToCamera   c64      1
//   gSuperAlpha     c65      1
//   gScaleFade      c66      1
//   NearFarPlane    c128     1
//

    vs_3_0
    def c0, 0.100000001, 9.99999997e-007, 0.159154937, 0.5
    def c1, 6.28318548, -3.14159274, 0, 1
    dcl_position v0
    dcl_normal v1
    dcl_color v2
    dcl_texcoord v3
    dcl_texcoord1 v4
    dcl_texcoord2 v5
    dcl_texcoord3 v6
    dcl_position o0
    dcl_color o1
    dcl_texcoord o2
    dcl_texcoord1 o3
    dcl_texcoord2 o4
    dcl_texcoord3 o5
    dcl_texcoord4 o6
    mov r0.x, c0.x
    mul r0.x, r0.x, c64.x
    lrp r1.xyz, r0.x, c15, v0
    mul r0, r1.y, c9
    mad r0, r1.x, c8, r0
    mad r0, r1.z, c10, r0
    add r0, r0, c11
    add r1.x, r0.w, -c128.x
    rcp r1.y, c66.x
    mul_sat r1.x, r1.x, r1.y
    sge r1.y, c0.y, v2.w
    mad r1.x, r1.y, -r1.x, r1.x
    mul r1.y, r1.x, v2.w
    mul r2, r1.x, v1.xyxy
    mul_sat o1.w, r1.y, c65.x
    mad r1.x, v1.z, c0.z, c0.w
    frc r1.x, r1.x
    mad r1.x, r1.x, c1.x, c1.y
    sincos r3.xy, r1.x
    mul r1.xyz, r2.yzww, r3.yyxw
    mad r2.x, r2.x, r3.x, -r1.x
    add r2.y, r1.z, r1.y
    mov r2.zw, c1.z
    mad r1, r2, c47, r0
    mov o4.y, r0.w
    add r0.x, -r1.w, c16.w
    add r0.y, -c16.z, c16.w
    rcp r0.y, r0.y
    mul_sat r0.x, r0.x, r0.y
    add r0.x, -r0.x, c1.w
    mov r0.w, c1.w
    add r0.yz, -r0.w, c16.xxyw
    mad o3.zw, r0.x, r0.xyyz, c1.w
    rcp r0.x, c41.x
    mul_sat r0.x, r1.w, r0.x
    add r0.y, r1.w, -c41.x
    mov o0, r1
    add r0.z, -c41.x, c41.y
    rcp r0.z, r0.z
    mul_sat r0.y, r0.y, r0.z
    lrp r1.x, c41.w, r0.x, r0.y
    add o5.w, r1.x, c41.z
    mov r1.xyz, c43
    add r0.xzw, -r1.xyyz, c42.xyyz
    mad o5.xyz, r0.y, r0.xzww, c43
    mov o1.xyz, v2
    mov o2, v3
    mov o3.xy, v4
    mul o4.xzw, c1.wyzz, v5.z
    mov o6, v6

// approximately 57 instruction slots used
 