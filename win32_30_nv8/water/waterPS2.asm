//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D DepthBufferSampler;
//   sampler2D ReflectTextureSampler;
//   sampler2D SurfaceTextureSampler;
//   float4 bottomSkyColour;
//   float2 currentResolution;
//   float4 gDirectionalColour;
//   float4 gDirectionalLight;
//   float4 gFacetCentre;
//   float4 gLightAmbient0;
//   float4 gLightAmbient1;
//   row_major float4x4 gShadowMatrix;
//   float4 gShadowParam0123;
//   float4 gShadowParam14151617;
//   float4 gShadowParam18192021;
//   float4 gShadowParam4567;
//   float4 gShadowParam891113;
//   sampler2D gShadowZSamplerDir;
//   row_major float4x4 gViewInverse;
//   float4 globalFogColor;
//   float4 globalScalars;
//   float4 viewProj;
//   float4 waterColour;
//   float waterReflectionScale;
//   float4 globalScreenSize;
//
//
// Registers:
//
//   Name                  Reg   Size
//   --------------------- ----- ----
//   gViewInverse          c12      4
//   gDirectionalLight     c17      1
//   gDirectionalColour    c18      1
//   gLightAmbient0        c37      1
//   gLightAmbient1        c38      1
//   globalScalars         c39      1
//   globalFogColor        c42      1
//   globalScreenSize      c44      1
//   gShadowParam18192021  c53      1
//   gFacetCentre          c54      1
//   gShadowParam14151617  c56      1
//   gShadowParam0123      c57      1
//   gShadowParam4567      c58      1
//   gShadowParam891113    c59      1
//   gShadowMatrix         c60      4
//   currentResolution     c66      1
//   waterColour           c72      1
//   bottomSkyColour       c73      1
//   waterReflectionScale  c74      1
//   viewProj              c75      1
//   SurfaceTextureSampler s0       1
//   ReflectTextureSampler s1       1
//   DepthBufferSampler    s2       1
//   gShadowZSamplerDir    s15      1
//

    ps_3_0
    def c0, -0.09375, 0.00200000009, 0.0511999987, 9.99999975e-006
    def c1, 0.00039999999, 0.00111111114, 1, 0
    def c2, 0.00499999988, 0.0227272734, 0.256000012, 1.02400005
    def c3, -0.5, 0.5, 1, 0.25
    def c4, 0.116363637, 0.465454549, 1.125, 0.0199999996
    def c5, 0.0500000007, 9.99999975e-006, 1.00001001, 0.0299999993
    def c6, 1, -1, 0.00499999989, 0.9
    def c7, -500, 0.25, 1000, 0.5
    def c8, 9.99999975e-005, -511, 512.000122, 1.5
    def c9, 0.25, 9, 10, 3
    def c10, -0.500005007, 0.5, 0.600000024, 0.200000003
    def c11, 1, 0, 9.99999975e-006, -2
    def c12, 1, -1, 0, -0
    def c13, -0.25, 1, -1, -0.07
    def c16, 0.159154937, 0.5, 6.28318548, -3.14159274
    def c19, 3, 7.13800001, 1.2, 4.8
    def c20, 0.75, -0.5, 0.5, 0
    def c21, 0.25, 0.5, 0.75, 0.00048828125
    def c22, 0.5, 0.25, 0.125, 1
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2
    dcl_texcoord3 v3
    dcl_texcoord4 v4.xyw
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s15
    mov r0.xy, v2
    mov r1, v2
    add r1.xyz, r1, -v3
    dp3 r0.w, r1, r1
    add r1.xyz, r1, c0.w
    nrm r2.xyz, r1
    mad r1.xy, r0.w, -c1, c1.z
    max r0.w, r1.x, c1.w
    mul r0.z, r0.w, v2.z
    add r8.x, v2.z, -c1.z
    dp3 r1.x, c14, r0
    add r3.xyz, -r0, c15
    dp3 r0.x, r3, r3
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    add r3.xyz, -r1.x, -c54
    cmp r3.yzw, r3.xxyz, c1.z, c1.w
    mov r3.x, c3.z
    dp4 r4.x, r3, c57
    dp4 r4.y, r3, c58
    dp4 r5.x, r3, c59
    dp4 r5.y, r3, c56
    mul r3.xyz, c61.xyww, v2.y
    mad r3.xyz, v2.x, c60.xyww, r3
    mad r3.xyz, r8.x, c62.xyww, r3
    add r3.xyz, r3, c63.xyww
    mad r0.yz, r3.xxyw, r4.xxyw, r5.xxyw
    rcp r8.x, c66.y
    mov r7.y, -r8.x
    rcp r7.xz, c66.x
    add r7.xyz, r7, v0.xyxw
    rcp r8.x, v0.z
    mul r7.xyz, r7, r8.x

    add r21.z, r3.z, c13.w              // depth bias

    mov r21.xy, c53.yy
    max r21.xy, r21.xy, c21.ww          // prevents from too sharp shadows when using ShadowResFix
    mul r21.xy, r21.xy, c19.zw          // *2.4 instead of *3 because CSM resolutions are multiples of 256 instead of 320

    add r27.xyz, r0.y, -c21.xyz
    cmp r27.w, r27.x, c22.x, c22.w      // cascade 1-2
    cmp r27.w, r27.y, c22.y, r27.w      // cascade 2-3
    cmp r27.w, r27.z, c22.z, r27.w      // cascade 3-4
    mul r21.xy, r21.xy, r27.w           // texel size multiplier

    mov r22.xy, c19.xy
    mul r22.xy, r22.xy, c44.xy          // r2.xy * screen dimensions
    dp2add r22.y, r7, r22, c1.w         // v0.x * r2.x + v0.y * r2.y
    mad r22.y, r22.y, c16.x, c16.y
    frc r22.y, r22.y
    mad r22.y, r22.y, c16.z, c16.w      // r2.y * 2pi - pi
    sincos r23.xy, r22.y                // sine & cosine of r2.y
    mul r24, r23.yxxy, c13.xxyz
    mul r23, r23.yxxy, c20.xxyz

    mad r25.xy, r24.xy, r21.xy, r0.yz   // offset * texel size + UV
    texld r25, r25, s15                 // sample #1
    mov r26.x, r25.x                    // copy to r6

    mad r25.xy, r24.zw, r21.xy, r0.yz   // offset * texel size + UV
    texld r25, r25, s15                 // sample #2
    mov r26.y, r25.x                    // copy to r6

    mad r25.xy, r23.xy, r21.xy, r0.yz   // offset * texel size + UV
    texld r25, r25, s15                 // sample #3
    mov r26.z, r25.x                    // copy to r6

    mad r25.xy, r23.zw, r21.xy, r0.yz   // offset * texel size + UV
    texld r25, r25, s15                 // sample #4
    mov r26.w, r25.x                    // copy to r6

    add r26, r21.z, -r26
    cmp r26, r26, c1.z, c1.w            // depth bias
    dp4 r0.y, r26, c1.z                 // sum

    rcp r0.z, c53.w
    mul r0.z, r0.x, r0.z
    add r0.x, r0.x, -c53.w
    cmp r1.xz, r0.x, c12.xyyw, c12.zyww
    mul r0.x, r0.z, r0.z
    mul r0.x, r0.x, r0.x
    mad r0.x, r0.y, c9.x, r0.x
    add r0.y, r1.z, r0.x
    cmp_sat r0.x, r0.y, r0.x, r1.x // shadows
    mul r0.yz, c0.y, v2.xxyw
    texld r3, r0.yzzw, s0
    add r3, r3.zwzw, c3.x
    mul r3, r3, c0.z
    add r0.y, -r0.w, c3.z
    mul r3, r3, r0.y
    rcp r0.y, v1.z
    mul r0.y, r0.w, r0.y
    mad r3, v1.xyxy, r0.y, r3
    mul r0.yz, c2.x, v2.xxyw
    texld r4, r0.yzzw, s0
    add r4, r4.zwzw, c3.x
    mad r3, r4, c2.zzww, r3
    mul r0.yz, c2.y, v2.xxyw
    texld r4, r0.yzzw, s0
    add r4, r4.zwzw, c3.x
    mul r4, r0.w, r4
    mul r0.y, r0.w, c5.x
    mad r3, r4, c4.xxyy, r3
    add r0.z, r1.w, -v4.w
    mad r1.xz, v1.w, c7.xyyw, c7.zyww
    mul_sat r0.z, r0.z, r1.x
    add r0.z, -r0.z, c3.z
    mul r0.z, r1.y, r0.z
    mul r0.z, r0.z, v1.w
    cmp r0.z, r1.y, r0.z, c1.w
    lrp r1.xy, r0.z, v4, r3.zwzw
    add r4.xy, r1, c0.w
    mov r4.z, c5.z
    dp3 r0.w, r4, r4
    rsq r0.w, r0.w
    mul r1.xyw, r4.xyzz, r0.w
    mad r0.w, r0.w, c10.x, c10.y
    mov r4.xyz, c38
    mad r4.xyz, r4, r0.w, c37
    dp3 r0.w, r2, r1.xyww
    add r0.w, r0.w, r0.w
    mad r5.xyz, r1.xyww, -r0.w, r2
    dp3 r0.w, r1.xyww, -c17
    mul_sat r0.w, r0.w, c6.w
    dp3_sat r1.x, -c17, r5
    add r1.x, r1.x, c8.x
    pow r1.y, r0_abs.z, c3.w
    mad r1.w, r1.y, c8.y, c8.z
    mad r1.y, r1.y, -c9.y, c9.z
    pow r2.w, r1.x, r1.w
    mul r5.xyz, c18.w, c18
    mul r6.xyz, r2.w, r5
    mul r5.xyz, r0.w, r5
    mul r5.xyz, r0.x, r5
    mul r6.xyz, r0.x, r6
    mul r6.xyz, r6, c17.w // specular
    mad r7.xyz, r7, c3.xxyw, c3.y
    texld r8, r7.zyzw, s2
    add r0.x, -c75.x, c75.y
    rcp r0.x, r0.x
    mad r0.w, c75.y, -r0.x, r8.x
    mul r0.x, r0.x, c75.y
    mul r0.x, r0.x, c75.x
    rcp r0.w, r0.w
    mad r0.x, -r0.x, r0.w, -v0.z
    pow r0.w, v0_abs.z, c4.z
    mul_sat r0.w, r0.w, c4.w
    add r0.w, r0.w, c5.x
    rcp r0.w, r0.w
    mul_sat r0.w, r0.x, r0.w
    cmp r0.x, r0.x, r0.x, c3.z
    mul r0.x, r0.x, c72.w
    mul r0.x, r0.x, c3.w
    pow r1.x, r0_abs.x, c3.w
    add_sat r0.x, r1.x, c0.x
    add r0.w, -r0.w, c3.z
    mul r0.w, r0.w, r0.w
    mul r8.xyz, r2, r0.w
    mad r3.xy, r8, c3.x, r3
    mul r3.z, r8.z, c3.x
    add r3.xyz, r3, c5.yyzw
    nrm r8.xyz, r3
    mad r3.xyz, r2, c11.xxyw, c11.z
    dp3 r0.w, r2, r8
    dp3 r1.x, r3, r3
    rsq r1.x, r1.x
    mul r2.xy, r3, r1.x
    mov r2.zw, c6.xyxy
    mul r3, r8.xyyx, r2.yyxz
    mad r1.xw, r3.zyzw, r2.wyzx, r3.xyzy
    mul r2.x, c5.w, v0.z
    rcp r2.x, r2.x
    mul r2.x, r2.x, c3.y
    max r3.x, c11.w, -r2.x
    mad r2.xy, r1.xwzw, r3.x, r7
    add r1.x, c3.z, v3.w
    mad r0.y, r1.x, c3.y, r0.y
    add r0.y, r0.y, c6.z
    add r1.x, r2.y, -r0.y
    cmp r2.z, r1.x, r2.y, r0.y
    mov r2.w, c1.w
    texldl r2, r2.xzww, s1
    mul r3.xyz, r2, c74.x
    mov r1.x, c74.x
    mad r2.xyz, r2, -r1.x, c42
    mad r2.xyz, v0.w, r2, r3
    mad r1.xyw, r6.xyzz, r1.y, r2.xyzz
    rcp r0.y, r0.x
    mul r1.xyw, r1, r0.y
    mul r2.xyz, r5, c5.x
    mov r0.y, c3.y
    mul r0.y, r0.y, c73.w
    mad r2.xyz, c72, r0.y, r2
    add r0.y, r0.w, c3.z
    cmp r0.y, -r0.w, r0.y, c3.z
    mul r0.w, r0_abs.y, r0_abs.y
    mul r0.w, r0.w, r0.w
    mul r0.y, r0_abs.y, r0.w
    mad r0.y, r0.y, c10.z, c10.w
    mul r0.y, r0.x, r0.y
    mov oC0.w, r0.x
    mul r0.x, r0.y, c3.y
    mad r0.xyw, r0.x, r1, r2.xyzz
    mul r1.xy, c5.x, v2
    texld r2, r1, s0
    mad r1.xy, r2, r1.z, c3.w
    mul r1.xzw, r5.xyyz, r1.x
    mul r2.xyz, r4, r1.y
    mul r2.xyz, r2, c9.w
    mad r1.xyz, r1.xzww, c9.w, r2
    lrp r2.xyz, r0.z, r1, r0.xyww
    mul oC0.xyz, r2, c39.y

// approximately 242 instruction slots used (19 texture, 223 arithmetic)
