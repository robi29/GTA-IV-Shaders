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
    def c2, 0.0833333358, -0.100000001, 1.11111116, 3.99600005
    def c3, 4, 0.125, 0, 0
    def c4, 1, -1, 0, -0
    def c5, 0, 0, 0, 0.5
    def c6, 0.2703204087, 0.4206267664, 0.4548159977, 0.2077075065
    def c7, 0.4949107209, -0.07115741914, 0.3778747872, -0.327430367
    def c8, 0.1408662784, -0.4797464868, -0.1408662784, -0.4797464868
    def c9, -0.3778747872, -0.327430367, -0.4949107209, -0.07115741914
    def c10, -0.4548159977, 0.2077075065, -0.2703204087, 0.4206267664
    def c98, 0.5, 2, 0.1, 0
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
    mul r3.w, r3.w, r3.w
    mov r5.y, c53.y
    mul r7.xy, r5.yy, c98.xy
    add r4.z, r4.z, -c98.z
    mad r5.xz, r7.xy, c10.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r4.w, r4.z, -r6.x
    cmp r4.w, r4.w, c1.y, c1.z
    mad r5.xz, r7.xy, c10.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c1.y, c1.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c9.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c1.y, c1.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c9.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c1.y, c1.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c8.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c1.y, c1.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c8.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c1.y, c1.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c7.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c1.y, c1.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c7.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c1.y, c1.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c6.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c1.y, c1.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c6.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c1.y, c1.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c5.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c1.y, c1.z
    add r4.w, r4.w, r5.x
    mad r4.xy, r7.xy, c5.zwzw, r4
    texld r5, r4, s15
    add r4.x, r4.z, -r5.x
    cmp r4.x, r4.x, c1.y, c1.z
    add r4.x, r4.w, r4.x
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

// approximately 189 instruction slots used (15 texture, 174 arithmetic)
