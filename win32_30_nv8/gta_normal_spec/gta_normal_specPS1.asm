//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D SpecSampler;
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
//   float4 gLightConeOffset2;
//   float4 gLightConeScale;
//   float4 gLightConeScale2;
//   float4 gLightDir2X;
//   float4 gLightDir2Y;
//   float4 gLightDir2Z;
//   float4 gLightDirX;
//   float4 gLightDirY;
//   float4 gLightDirZ;
//   float4 gLightFallOff;
//   float4 gLightPointColB;
//   float4 gLightPointColG;
//   float4 gLightPointColR;
//   float4 gLightPointFallOff;
//   float4 gLightPointPosX;
//   float4 gLightPointPosY;
//   float4 gLightPointPosZ;
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
//   float3 specMapIntMask;
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
//   gLightPointPosX      c32      1
//   gLightPointPosY      c33      1
//   gLightPointPosZ      c34      1
//   gLightPointColR      c35      1
//   gLightPointFallOff   c36      1
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
//   gLightPointColG      c64      1
//   gLightPointColB      c65      1
//   specularFactor       c66      1
//   gLightDir2X          c67      1
//   gLightDir2Y          c68      1
//   gLightDir2Z          c69      1
//   gLightConeScale2     c70      1
//   gLightConeOffset2    c71      1
//   specularColorFactor  c72      1
//   specMapIntMask       c73      1
//   bumpiness            c74      1
//   TextureSampler       s0       1
//   BumpSampler          s1       1
//   SpecSampler          s2       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0	// LogDepth constants
    def c0, -0.5, 9.99999975e-006, 0.5, 0.9
    def c1, 9.99999975e-005, 1.5, 0.25, -0.100000001
    def c2, 0, -1, -0, 1
    def c3, 3.99600005, 4, 0.125, 0.25
    def c4, 1.11111116, 0.212500006, 0.715399981, 0.0720999986
    def c5, 1.00000001e-007, 0, 0, 0
    def c6, -0.25, 1, -1, -0.07
    def c7, 0.159154937, 0.5, 6.28318548, -3.14159274
    def c8, 3, 7.13800001, 0.00012207031, 0.00048828125
    def c9, 0.75, -0.5, 0.5, 0
    def c10, 0.25, 0.5, 0.75, 4.8
    def c11, 0.5, 0.25, 0.125, 1
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3.xyz
    dcl_texcoord5 v4.xyz
    dcl_color v5.xw
    dcl_texcoord6 v6.xyz
    dcl vPos.xy
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s10
    dcl_2d s15
    mov_sat r0.x, c39.x
    mul r0.x, r0.x, c3.x
    frc r0.y, r0.x
    mul r0.z, r0.y, c3.y
    frc r0.w, r0.z
    add r1.xy, r0.zxzw, -r0.wyzw
    mul r0.xy, c3.z, vPos
    frc r0.xy, r0_abs
    cmp r0.xy, vPos, r0, -r0
    mul r0.xy, r0, c3.w
    mad r0.xy, r1, c3.w, r0
    mov r0.zw, c2.x
    texldl r0, r0, s10
    cmp r0, -r0.y, c2.y, c2.z
    texkill r0
    texld r0, v0, s1
    add r0.z, -r0.w, c2.w
    add r0.z, -r0.x, r0.z
    cmp r0.xy, r0.z, r0.wyzw, r0
    texld r1, v0, s0
    add r0.zw, r0.xyxy, c0.x
    mul r0.zw, r0, c74.x
    dp2add r0.x, r0, -r0, c2.w
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    mul r2.xyz, r0.z, v3
    mad r0.xyz, v1, r0.x, r2
    mad r0.xyz, r0.w, v4, r0
    add r0.xyz, r0, c0.y
    nrm r2.xyz, r0
    texld r0, v0, s2
    mul r2.w, r0.w, c66.x
    dp3 r0.x, r0, c73
    mul r0.x, r0.x, c72.x
    mul r1.w, r1.w, v5.w
    add r3.xyz, c0.y, v2
    nrm r4.xyz, r3
    mad_sat r0.y, r2.z, c0.x, c0.z
    mov r3.xyz, c38
    mad r3.xyz, r3, r0.y, c37
    dp3 r0.y, -r4, r2
    add r0.y, r0.y, r0.y
    mad r4.xyz, r2, -r0.y, -r4
    mul r5.xyz, c18.w, c18
    dp3 r0.y, r2, -c17
    mul_sat r0.y, r0.y, c0.w
    dp3_sat r0.z, -c17, r4
    add r0.z, r0.z, c1.x
    mov r6.x, c1.x
    mad r0.w, r0.w, c66.x, r6.x
    pow r3.w, r0.z, r0.w
    mul r7.xyz, c61.xyww, v6.y
    mad r7.xyz, v6.x, c60.xyww, r7
    mad r7.xyz, v6.z, c62.xyww, r7
    add r7.xyz, r7, c63.xyww
    dp3 r0.z, c14, v6
    add r8.xyz, -r0.z, -c54
    cmp r8.yzw, r8.xxyz, c2.w, c2.x
    mov r8.x, c2.w
    dp4 r6.x, r8, c57
    dp4 r6.y, r8, c58
    dp4 r9.x, r8, c59
    dp4 r9.y, r8, c56
    mad r0.zw, r7.xyxy, r6.xyxy, r9.xyxy
    add r7.xyw, c15.xyzz, -v6.xyzz
    dp3 r4.w, r7.xyww, r7.xyww
    rsq r4.w, r4.w
    rcp r4.w, r4.w
    rcp r5.w, c53.w
    mul r5.w, r4.w, r5.w
    mul r5.w, r5.w, r5.w
    mul r5.w, r5.w, c1.y

    add r21.z, r7.z, c6.w               // depth bias

    mov r21.xy, c53.xy
    max r21.xy, r21.xy, c8.zw           // prevents from too sharp shadows when using ShadowResFix
    mul r21.xy, r21.xy, c10.ww          // *2.4 instead of *3 because CSM resolutions are multiples of 256 instead of 320

    add r27.xyz, r0.z, -c10.xyz
    cmp r27.w, r27.x, c11.x, c11.w      // cascade 1-2
    cmp r27.w, r27.y, c11.y, r27.w      // cascade 2-3
    cmp r27.w, r27.z, c11.z, r27.w      // cascade 3-4
    mul r21.xy, r21.xy, r27.w           // texel size multiplier

    mul r23.xy, c44.zw, vPos
    mov r22.xy, c8.xy
    mul r22.xy, r22.xy, c44.xy          // r2.xy * screen dimensions
    dp2add r22.y, r23, r22, c2.x        // v0.x * r2.x + v0.y * r2.y
    mad r22.y, r22.y, c7.x, c7.y
    frc r22.y, r22.y
    mad r22.y, r22.y, c7.z, c7.w        // r2.y * 2pi - pi
    sincos r23.xy, r22.y                // sine & cosine of r2.y
    mul r24, r23.yxxy, c6.xxyz
    mul r23, r23.yxxy, c9.xxyz

    mad r25.xy, r24.xy, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #1
    mov r26.x, r25.x                    // copy to r6

    mad r25.xy, r24.zw, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #2
    mov r26.y, r25.x                    // copy to r6

    mad r25.xy, r23.xy, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #3
    mov r26.z, r25.x                    // copy to r6

    mad r25.xy, r23.zw, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #4
    mov r26.w, r25.x                    // copy to r6

    add r26, r21.z, -r26
    cmp r26, r26, c2.w, c2.x            // depth bias
    dp4 r0.z, r26, c2.w                 // sum

    mad r0.z, r0.z, c1.z, r5.w
    add r0.w, r4.w, -c53.w
    cmp r6.xy, r0.w, c2.wyzw, c2.xzzw
    add r0.w, r0.z, r6.y
    cmp_sat r0.z, r0.w, r0.z, r6.x
    mul r6.xyz, r5, r3.w
    mul r6.xyz, r0.z, r6
    mul r5.xyz, r5, r0.y
    mul r0.yzw, r0.z, r5.xxyz
    mad r0.yzw, r3.xxyz, v5.x, r0
    mul r2.w, r2.w, c3.w
    add r3, c19, -v6.x
    add r5, c20, -v6.y
    add r7, c21, -v6.z
    mul r8, r3, r3
    mad r8, r5, r5, r8
    mad r8, r7, r7, r8
    add r9, r8, c0.y
    rsq r10.x, r9.x
    rsq r10.y, r9.y
    rsq r10.z, r9.z
    rsq r10.w, r9.w
    mov r9.yw, c2
    mad r8, r8, -c25, r9.w
    max r11, r8, c2.x
    mul r8, r11, r11
    mad r8, r8, r8, c1.w
    mul r11, r8, c4.x
    cmp r8, r8, r11, c2.x
    mul r11, r2.x, r3
    mad r11, r5, r2.y, r11
    mad r11, r7, r2.z, r11
    mul r8, r8, r11
    mul_sat r8, r10, r8
    mul r11, r3, -c22
    mad r11, r5, -c23, r11
    mad r11, r7, -c24, r11
    mul r11, r10, r11
    mov r12, c26
    mad_sat r11, r11, r12, c27
    mul r8, r8, r11
    mul r3, r4.x, r3
    mad r3, r4.y, r5, r3
    mad r3, r4.z, r7, r3
    mul r3, r10, r3
    log r5.x, r3_abs.x
    log r5.y, r3_abs.y
    log r5.z, r3_abs.z
    log r5.w, r3_abs.w
    mul r3, r2.w, r5
    exp r5.x, r3.x
    exp r5.y, r3.y
    exp r5.z, r3.z
    exp r5.w, r3.w
    mul r3, r8, r5
    dp4 r5.x, c29, r8
    dp4 r5.y, c30, r8
    dp4 r5.z, c31, r8
    dp4 r7.x, c29, r3
    dp4 r7.y, c30, r3
    dp4 r7.z, c31, r3
    add r0.yzw, r0, r5.xxyz
    mad r3.xyz, r6, c17.w, r7
    add r5, c32, -v6.x
    add r6, c33, -v6.y
    add r7, c34, -v6.z
    mul r8, r5, r5
    mad r8, r6, r6, r8
    mad r8, r7, r7, r8
    add r10, r8, c0.y
    rsq r11.x, r10.x
    rsq r11.y, r10.y
    rsq r11.z, r10.z
    rsq r11.w, r10.w
    mad r8, r8, -c36, r9.w
    max r10, r8, c2.x
    mul r8, r10, r10
    mad r8, r8, r8, c1.w
    mul r10, r8, c4.x
    cmp r8, r8, r10, c2.x
    mul r10, r2.x, r5
    mad r10, r6, r2.y, r10
    mad r10, r7, r2.z, r10
    mul r8, r8, r10
    mul_sat r8, r11, r8
    mul r10, r5, -c67
    mad r10, r6, -c68, r10
    mad r10, r7, -c69, r10
    mul r10, r11, r10
    mov r12, c70
    mad_sat r10, r10, r12, c71
    mul r8, r8, r10
    mul r5, r4.x, r5
    mad r5, r4.y, r6, r5
    mad r4, r4.z, r7, r5
    mul r4, r11, r4
    log r5.x, r4_abs.x
    log r5.y, r4_abs.y
    log r5.z, r4_abs.z
    log r5.w, r4_abs.w
    mul r2, r2.w, r5
    exp r4.x, r2.x
    exp r4.y, r2.y
    exp r4.z, r2.z
    exp r4.w, r2.w
    mul r2, r8, r4
    dp4 r4.x, c35, r8
    dp4 r4.y, c64, r8
    dp4 r4.z, c65, r8
    dp4 r5.x, c35, r2
    dp4 r5.y, c64, r2
    dp4 r5.z, c65, r2
    add r2.xyz, r0.yzww, r4
    add r0.yzw, r3.xxyz, r5.xxyz
    mov r2.w, c2.w
    mul r1, r1, r2
    mad r0.xyz, r0.x, r0.yzww, r1
    mul oC0.w, r1.w, c39.x
    add r0.w, c16.w, -v1.w
    add r1.x, -c16.z, c16.w
    rcp r1.x, r1.x
    mul_sat r0.w, r0.w, r1.x
    add r0.w, -r0.w, c2.w
    add r1.xy, r9.y, c16
    mul r1.y, r0.w, r1.y
    mad r0.w, r0.w, r1.x, c2.w
    dp3 r1.x, r0, c4.yzww
    lrp r2.xyz, r0.w, r0, r1.x
    add r0.x, r1.x, c5.x
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
	// ----------------------------------------------------------------- Linear2Log -----------------------------------------------------------------
	if_ne v9.y, c127.y
		rcp r20.z, c128.x
		mul r20.x, v9.w, r20.z
		mul r20.y, c128.y, r20.z
		log r20.x, r20.x
		log r20.y, r20.y
		rcp r20.y, r20.y
	else
		mov r20.x, v9.z
		rcp r20.y, v9.w
	endif
	mul oDepth, r20.x, r20.y
	// ----------------------------------------------------------------------------------------------------------------------------------------------

// approximately 287 instruction slots used (17 texture, 270 arithmetic)
