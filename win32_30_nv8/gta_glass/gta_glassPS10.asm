//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D EnvironmentSampler;
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float bumpiness;
//   float4 gDepthFxParams;
//   float4 gDirectionalColour;
//   float4 gDirectionalLight;
//   float4 gFacetCentre;
//   float4 gLightAmbient0;
//   float4 gLightAmbient1;
//   float4 gLightColB;
//   float4 gLightColG;
//   float4 gLightColR;
//   float4 gLightConeOffset;
//   float4 gLightConeScale;
//   float4 gLightDirX;
//   float4 gLightDirY;
//   float4 gLightDirZ;
//   float4 gLightFallOff;
//   float4 gLightPosX;
//   float4 gLightPosY;
//   float4 gLightPosZ;
//   row_major float4x4 gShadowMatrix;
//   float4 gShadowParam0123;
//   float4 gShadowParam14151617;
//   float4 gShadowParam18192021;
//   float4 gShadowParam4567;
//   float4 gShadowParam891113;
//   sampler2D gShadowZSamplerDir;
//   row_major float4x4 gViewInverse;
//   float4 globalFogColor;
//   float4 globalFogColorN;
//   float4 globalFogParams;
//   float4 globalScalars;
//   float reflectivePower;
//   float specularColorFactor;
//   float specularFactor;
//   float4 globalScreenSize;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gViewInverse         c12      4
//   gDepthFxParams       c16      1
//   gDirectionalLight    c17      1
//   gDirectionalColour   c18      1
//   gLightPosX           c19      1
//   gLightPosY           c20      1
//   gLightPosZ           c21      1
//   gLightDirX           c22      1
//   gLightDirY           c23      1
//   gLightDirZ           c24      1
//   gLightFallOff        c25      1
//   gLightConeScale      c26      1
//   gLightConeOffset     c27      1
//   gLightColR           c29      1
//   gLightColG           c30      1
//   gLightColB           c31      1
//   gLightAmbient0       c37      1
//   gLightAmbient1       c38      1
//   globalScalars        c39      1
//   globalFogParams      c41      1
//   globalFogColor       c42      1
//   globalFogColorN      c43      1
//   globalScreenSize     c44      1
//   gShadowParam18192021 c53      1
//   gFacetCentre         c54      1
//   gShadowParam14151617 c56      1
//   gShadowParam0123     c57      1
//   gShadowParam4567     c58      1
//   gShadowParam891113   c59      1
//   gShadowMatrix        c60      4
//   specularFactor       c66      1
//   specularColorFactor  c72      1
//   bumpiness            c73      1
//   reflectivePower      c74      1
//   TextureSampler       s0       1
//   BumpSampler          s1       1
//   EnvironmentSampler   s2       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, 0, -1, -0, 1
    def c1, -0.5, 9.99999975e-006, -0.00999999978, 100
    def c2, -0.5, 0.5, 0.9, 9.99999975e-005
    def c3, 1.5, -0.100000001, 1.11111116, 0.25
    def c4, 3.99600005, 4, 0.125, 0.25
    def c5, 0.212500006, 0.715399981, 0.0720999986, 1.00000001e-007
    def c6, -0.25, 1, -1, -0.07
    def c7, 0.159154937, 0.5, 6.28318548, -3.14159274
    def c8, 3, 7.13800001, 1.2, 4.8
    def c9, 0.75, -0.5, 0.5, 0
    def c10, 0.25, 0.5, 0.75, 0.00048828125
    def c11, 0.5, 0.25, 0.125, 1
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3.xyz
    dcl_texcoord5 v4.xyz
    dcl_color v5.xw
    dcl_texcoord6 v6.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s10
    dcl_2d s15
    mov_sat r0.x, c39.x
    mul r0.x, r0.x, c4.x
    frc r0.y, r0.x
    mul r0.z, r0.y, c4.y
    frc r0.w, r0.z
    add r1.xy, r0.zxzw, -r0.wyzw
    mul r0.xy, c4.z, vPos
    frc r0.xy, r0_abs
    cmp r0.xy, vPos, r0, -r0
    mul r0.xy, r0, c4.w
    mad r0.xy, r1, c4.w, r0
    mov r0.zw, c0.x
    texldl r0, r0, s10
    cmp r0, -r0.y, c0.y, c0.z
    texkill r0
    texld r0, v0, s1
    add r0.z, -r0.w, c0.w
    add r0.z, -r0.x, r0.z
    cmp r0.xy, r0.z, r0.wyzw, r0
    texld r1, v0, s0
    add r0.zw, r0.xyxy, c1.x
    mul r0.zw, r0, c73.x
    dp2add r0.x, r0, -r0, c0.w
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    mul r2.xyz, r0.z, v3
    mad r0.xyz, v1, r0.x, r2
    mad r0.xyz, r0.w, v4, r0
    add r0.xyz, r0, c1.y
    nrm r2.xyz, r0
    add r0.xyz, c1.y, v2
    nrm r3.xyz, r0
    dp3 r0.x, -r3, r2
    add r0.x, r0.x, r0.x
    mad r0.xyz, r2, -r0.x, -r3
    add r3.xyz, r0, c1.y
    dp3 r0.w, r3, r3
    rsq r0.w, r0.w
    mad r3.xy, r3.xzzw, r0.w, c0.w
    mul r3.xy, r3, c1.x
    texld r3, r3, s2
    mul r3.xyz, r3, c72.x
    mul r3.xyz, r3, c74.x
    mul r4.w, r1.w, v5.w
    mad r0.w, r1.w, v5.w, c1.z
    rcp r1.w, r4.w
    cmp r0.w, r0.w, r1.w, c1.w
    mad r4.xyz, r3, r0.w, r1
    mad_sat r0.w, r2.z, c2.x, c2.y
    mov r1.xyz, c38
    mad r1.xyz, r1, r0.w, c37
    mul r3.xyz, c18.w, c18
    dp3 r0.w, r2, -c17
    mul_sat r0.w, r0.w, c2.z
    dp3_sat r1.w, -c17, r0
    add r1.w, r1.w, c2.w
    mov r2.w, c2.w
    add r2.w, r2.w, c66.x
    pow r3.w, r1.w, r2.w
    mul r5.xyz, c61.xyww, v6.y
    mad r5.xyz, v6.x, c60.xyww, r5
    mad r5.xyz, v6.z, c62.xyww, r5
    add r5.xyz, r5, c63.xyww
    dp3 r1.w, c14, v6
    add r6.xyz, -r1.w, -c54
    cmp r6.yzw, r6.xxyz, c0.w, c0.x
    mov r6.x, c0.w
    dp4 r7.x, r6, c57
    dp4 r7.y, r6, c58
    dp4 r8.x, r6, c59
    dp4 r8.y, r6, c56
    mad r5.xy, r5, r7, r8
    add r6.xyz, c15, -v6
    dp3 r1.w, r6, r6
    rsq r1.w, r1.w
    rcp r1.w, r1.w
    rcp r2.w, c53.w
    mul r2.w, r1.w, r2.w
    mul r2.w, r2.w, r2.w
    mul r2.w, r2.w, c3.x

    add r21.z, r5.z, c6.w               // depth bias

    mov r21.xy, c53.yy
    max r21.xy, r21.xy, c10.ww          // prevents from too sharp shadows when using ShadowResFix
    mul r21.xy, r21.xy, c8.zw           // *2.4 instead of *3 because CSM resolutions are multiples of 256 instead of 320

    add r27.xyz, r5.x, -c10.xyz
    cmp r27.w, r27.x, c11.x, c11.w      // cascade 1-2
    cmp r27.w, r27.y, c11.y, r27.w      // cascade 2-3
    cmp r27.w, r27.z, c11.z, r27.w      // cascade 3-4
    mul r21.xy, r21.xy, r27.w           // texel size multiplier

    mov r22.xy, c8.xy
    mul r22.xy, r22.xy, c44.xy          // r2.xy * screen dimensions
    dp2add r22.y, v0, r22, c0.x         // v0.x * r2.x + v0.y * r2.y
    mad r22.y, r22.y, c7.x, c7.y
    frc r22.y, r22.y
    mad r22.y, r22.y, c7.z, c7.w        // r2.y * 2pi - pi
    sincos r23.xy, r22.y                // sine & cosine of r2.y
    mul r24, r23.yxxy, c6.xxyz
    mul r23, r23.yxxy, c9.xxyz

    mad r25.xy, r24.xy, r21.xy, r5.xy   // offset * texel size + UV
    texld r25, r25, s15                 // sample #1
    mov r26.x, r25.x                    // copy to r6

    mad r25.xy, r24.zw, r21.xy, r5.xy   // offset * texel size + UV
    texld r25, r25, s15                 // sample #2
    mov r26.y, r25.x                    // copy to r6

    mad r25.xy, r23.xy, r21.xy, r5.xy   // offset * texel size + UV
    texld r25, r25, s15                 // sample #3
    mov r26.z, r25.x                    // copy to r6

    mad r25.xy, r23.zw, r21.xy, r5.xy   // offset * texel size + UV
    texld r25, r25, s15                 // sample #4
    mov r26.w, r25.x                    // copy to r6

    add r26, r21.z, -r26
    cmp r26, r26, c0.w, c0.x            // depth bias
    dp4 r5.x, r26, c0.w                 // sum

    mad r2.w, r5.x, c3.w, r2.w
    add r1.w, r1.w, -c53.w
    cmp r5.xy, r1.w, c0.wyzw, c0.xzzw
    add r1.w, r2.w, r5.y
    cmp_sat r1.w, r1.w, r2.w, r5.x
    mul r5.xyz, r3, r3.w
    mul r5.xyz, r1.w, r5
    mul r3.xyz, r3, r0.w
    mul r3.xyz, r1.w, r3
    mad r1.xyz, r1, v5.x, r3
    mov r0.w, c4.w
    mul r0.w, r0.w, c66.x
    add r3, c19, -v6.x
    add r6, c20, -v6.y
    add r7, c21, -v6.z
    mul r8, r3, r3
    mad r8, r6, r6, r8
    mad r8, r7, r7, r8
    add r9, r8, c1.y
    rsq r10.x, r9.x
    rsq r10.y, r9.y
    rsq r10.z, r9.z
    rsq r10.w, r9.w
    mov r9.yw, c0
    mad r8, r8, -c25, r9.w
    max r11, r8, c0.x
    mul r8, r11, r11
    mad r8, r8, r8, c3.y
    mul r11, r8, c3.z
    cmp r8, r8, r11, c0.x
    mul r11, r2.x, r3
    mad r11, r6, r2.y, r11
    mad r2, r7, r2.z, r11
    mul r2, r8, r2
    mul_sat r2, r10, r2
    mul r8, r3, -c22
    mad r8, r6, -c23, r8
    mad r8, r7, -c24, r8
    mul r8, r10, r8
    mov r11, c26
    mad_sat r8, r8, r11, c27
    mul r2, r2, r8
    mul r3, r0.x, r3
    mad r3, r0.y, r6, r3
    mad r3, r0.z, r7, r3
    mul r3, r10, r3
    log r6.x, r3_abs.x
    log r6.y, r3_abs.y
    log r6.z, r3_abs.z
    log r6.w, r3_abs.w
    mul r0, r0.w, r6
    exp r3.x, r0.x
    exp r3.y, r0.y
    exp r3.z, r0.z
    exp r3.w, r0.w
    mul r0, r2, r3
    dp4 r3.x, c29, r2
    dp4 r3.y, c30, r2
    dp4 r3.z, c31, r2
    dp4 r2.x, c29, r0
    dp4 r2.y, c30, r0
    dp4 r2.z, c31, r0
    add r0.xyz, r1, r3
    mad r1.xyz, r5, c17.w, r2
    mov r0.w, c0.w
    mul r0, r4, r0
    mad r0.xyz, c72.x, r1, r0
    mul oC0.w, r0.w, c39.x
    add r0.w, c16.w, -v1.w
    add r1.x, -c16.z, c16.w
    rcp r1.x, r1.x
    mul_sat r0.w, r0.w, r1.x
    add r0.w, -r0.w, c0.w
    add r1.xy, r9.y, c16
    mul r1.y, r0.w, r1.y
    mad r0.w, r0.w, r1.x, c0.w
    dp3 r1.x, r0, c5
    lrp r2.xyz, r0.w, r0, r1.x
    add r0.x, r1.x, c5.w
    pow r2.w, r0_abs.x, r1.y
    mul r0.xyz, r2, r2.w
    rcp r0.w, c41.x
    mul_sat r0.w, r0.w, v1.w
    add r1.x, -c41.x, v1.w
    add r1.y, -c41.x, c41.y
    rcp r1.y, r1.y
    mul_sat r1.x, r1.x, r1.y
    lrp r3.x, c41.w, r0.w, r1.x
    add r0.w, r3.x, c41.z
    mov r3.xyz, c43
    add r1.yzw, -r3.xxyz, c42.xxyz
    mad r1.xyz, r1.x, r1.yzww, c43
    mad r1.xyz, r2, -r2.w, r1
    mad oC0.xyz, r0.w, r1, r0

// approximately 245 instruction slots used (17 texture, 228 arithmetic)
