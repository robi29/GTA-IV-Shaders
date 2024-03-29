//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
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
//   float4 globalScalars;
//   float4 globalScreenSize;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gViewInverse         c12      4
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
//   gLightDir2X          c67      1
//   gLightDir2Y          c68      1
//   gLightDir2Z          c69      1
//   gLightConeScale2     c70      1
//   gLightConeOffset2    c71      1
//   TextureSampler       s0       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0 // LogDepth constants
    def c0, 9.99999975e-006, -0.5, 0.5, -0.25
    def c1, 0.9, 1, 0, 1.5
    def c2, 0.25, -0.100000001, 1.11111116, 3.99600005
    def c3, 4, 0.125, 0, 0
    def c4, 1, -1, 0, -0
    def c5, 0, 0, 0, 0.5
    def c6, -0.25, 1, -1, -0.07
    def c7, 0.159154937, 0.5, 6.28318548, -3.14159274
    def c8, 3, 7.13800001, 0.00012207031, 0.00048828125
    def c9, 0.75, -0.5, 0.5, 0
    def c10, 0.25, 0.5, 0.75, 4.8
    def c11, 0.5, 0.25, 0.125, 1
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_color v2
    dcl_texcoord6 v3.xyz
    dcl vPos.xy
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s10
    dcl_2d s15
    texld r0, v0, s0
    add r1.xyz, c0.x, v1
    nrm r2.xyz, r1
    mul r0, r0, v2
    mad_sat r1.x, r2.z, c0.y, c0.z
    mov r3.xyz, c38
    mad r1.xyz, r3, r1.x, c37
    mul r3.xyz, c18.w, c18
    dp3 r1.w, r2, -c17
    mul_sat r1.w, r1.w, c1.x
    mul r4.xyz, c61.xyww, v3.y
    mad r4.xyz, v3.x, c60.xyww, r4
    mad r4.xyz, v3.z, c62.xyww, r4
    add r4.xyz, r4, c63.xyww
    dp3 r2.w, c14, v3
    add r5.xyz, -r2.w, -c54
    cmp r5.yzw, r5.xxyz, c1.y, c1.z
    mov r5.x, c1.y
    dp4 r6.x, r5, c57
    dp4 r6.y, r5, c58
    dp4 r7.x, r5, c59
    dp4 r7.y, r5, c56
    mad r4.xy, r4, r6, r7
    add r5.xyz, c15, -v3
    dp3 r2.w, r5, r5
    rsq r2.w, r2.w
    rcp r2.w, r2.w
    rcp r3.w, c53.w
    mul r3.w, r2.w, r3.w
    mul r3.w, r3.w, r3.w
    mul r3.w, r3.w, c1.w

    add r21.z, r4.z, c6.w               // depth bias

    mov r21.xy, c53.xy
    max r21.xy, r21.xy, c8.zw           // prevents from too sharp shadows when using ShadowResFix
    mul r21.xy, r21.xy, c10.ww          // *2.4 instead of *3 because CSM resolutions are multiples of 256 instead of 320

    add r27.xyz, r4.x, -c10.xyz
    cmp r27.w, r27.x, c11.x, c11.w      // cascade 1-2
    cmp r27.w, r27.y, c11.y, r27.w      // cascade 2-3
    cmp r27.w, r27.z, c11.z, r27.w      // cascade 3-4
    mul r21.xy, r21.xy, r27.w           // texel size multiplier

    mul r23.xy, c44.zw, vPos
    mov r22.xy, c8.xy
    mul r22.xy, r22.xy, c44.xy          // r2.xy * screen dimensions
    dp2add r22.y, r23, r22, c4.z        // v0.x * r2.x + v0.y * r2.y
    mad r22.y, r22.y, c7.x, c7.y
    frc r22.y, r22.y
    mad r22.y, r22.y, c7.z, c7.w        // r2.y * 2pi - pi
    sincos r23.xy, r22.y                // sine & cosine of r2.y
    mul r24, r23.yxxy, c6.xxyz
    mul r23, r23.yxxy, c9.xxyz

    mad r25.xy, r24.xy, r21.xy, r4.xy   // offset * texel size + UV
    texld r25, r25, s15                 // sample #1
    mov r26.x, r25.x                    // copy to r6

    mad r25.xy, r24.zw, r21.xy, r4.xy   // offset * texel size + UV
    texld r25, r25, s15                 // sample #2
    mov r26.y, r25.x                    // copy to r6

    mad r25.xy, r23.xy, r21.xy, r4.xy   // offset * texel size + UV
    texld r25, r25, s15                 // sample #3
    mov r26.z, r25.x                    // copy to r6

    mad r25.xy, r23.zw, r21.xy, r4.xy   // offset * texel size + UV
    texld r25, r25, s15                 // sample #4
    mov r26.w, r25.x                    // copy to r6

    add r26, r21.z, -r26
    cmp r26, r26, c4.x, c4.z            // depth bias
    dp4 r4.x, r26, c4.x                 // sum

    mad r3.w, r4.x, c2.x, r3.w
    add r2.w, r2.w, -c53.w
    cmp r4.xy, r2.w, c4, c4.zwzw
    add r2.w, r3.w, r4.y
    cmp_sat r2.w, r2.w, r3.w, r4.x
    mul r3.xyz, r3, r1.w
    mul r3.xyz, r2.w, r3
    mad r1.xyz, r1, v2.x, r3
    add r3, c19, -v3.x
    add r4, c20, -v3.y
    add r5, c21, -v3.z
    mul r6, r3, r3
    mad r6, r4, r4, r6
    mad r6, r5, r5, r6
    add r7, r6, c0.x
    rsq r8.x, r7.x
    rsq r8.y, r7.y
    rsq r8.z, r7.z
    rsq r8.w, r7.w
    mov r7.y, c1.y
    mad r6, r6, -c25, r7.y
    max r9, r6, c1.z
    mul r6, r9, r9
    mad r6, r6, r6, c2.y
    mul r9, r6, c2.z
    cmp r6, r6, r9, c1.z
    mul r9, r2.x, r3
    mad r9, r4, r2.y, r9
    mad r9, r5, r2.z, r9
    mul r6, r6, r9
    mul_sat r6, r8, r6
    mul r3, r3, -c22
    mad r3, r4, -c23, r3
    mad r3, r5, -c24, r3
    mul r3, r8, r3
    mov r4, c26
    mad_sat r3, r3, r4, c27
    mul r3, r6, r3
    dp4 r4.x, c29, r3
    dp4 r4.y, c30, r3
    dp4 r4.z, c31, r3
    add r1.xyz, r1, r4
    add r3, c32, -v3.x
    add r4, c33, -v3.y
    add r5, c34, -v3.z
    mul r6, r3, r3
    mad r6, r4, r4, r6
    mad r6, r5, r5, r6
    add r8, r6, c0.x
    rsq r9.x, r8.x
    rsq r9.y, r8.y
    rsq r9.z, r8.z
    rsq r9.w, r8.w
    mad r6, r6, -c36, r7.y
    max r7, r6, c1.z
    mul r6, r7, r7
    mad r6, r6, r6, c2.y
    mul r7, r6, c2.z
    cmp r6, r6, r7, c1.z
    mul r7, r2.x, r3
    mad r7, r4, r2.y, r7
    mad r2, r5, r2.z, r7
    mul r2, r6, r2
    mul_sat r2, r9, r2
    mul r3, r3, -c67
    mad r3, r4, -c68, r3
    mad r3, r5, -c69, r3
    mul r3, r9, r3
    mov r4, c70
    mad_sat r3, r3, r4, c71
    mul r2, r2, r3
    dp4 r3.x, c35, r2
    dp4 r3.y, c64, r2
    dp4 r3.z, c65, r2
    add r1.xyz, r1, r3
    mov r1.w, c1.y
    mul r0, r0, r1
    mul r0.w, r0.w, c39.x
    mov_sat r1.x, r0.w
    mul r1.x, r1.x, c2.w
    frc r1.y, r1.x
    mul r1.z, r1.y, c3.x
    frc r1.w, r1.z
    add r2.xy, r1.zxzw, -r1.wyzw
    mul r1.xy, c3.y, vPos
    frc r1.xy, r1_abs
    cmp r1.xy, vPos, r1, -r1
    mul r1.xy, r1, -c0.w
    mad r1.xy, r2, -c0.w, r1
    mov r1.zw, c1.z
    texldl r1, r1, s10
    cmp r1, -r1.y, -c1.y, -c1.z
    texkill r1
    mov oC0, r0
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

// approximately 188 instruction slots used (15 texture, 173 arithmetic)
