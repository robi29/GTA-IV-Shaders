//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D EnvironmentSampler;
//   sampler2D SpecSampler;
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float bumpiness;
//   float4 colorize;
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
//   float reflectivePower;
//   float3 specMapIntMask;
//   float specularColorFactor;
//   float specularFactor;
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
//   colorize             c51      1
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
//   reflectivePower      c75      1
//   TextureSampler       s0       1
//   BumpSampler          s1       1
//   SpecSampler          s2       1
//   EnvironmentSampler   s4       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, -0.5, 9.99999975e-006, -0.00999999978, 100
    def c1, -0.5, 0.5, 0.9, 9.99999975e-005
    def c2, 1.5, -0.4548159977, 0.2077075065, 0.0833333358
    def c3, 0, 0.5, -0.100000001, 1.11111116
    def c4, 3.99600005, 4, 0.125, 0.25
    def c5, 0, -1, -0, 1
    def c6, 0.4548159977, 0.2077075065, 0, 0
    def c7, 0.3778747872, -0.327430367, 0.2703204087, 0.4206267664
    def c8, -0.1408662784, -0.4797464868, 0.4949107209, -0.07115741914
    def c9, -0.4949107209, -0.07115741914, 0.1408662784, -0.4797464868
    def c10, -0.2703204087, 0.4206267664, -0.3778747872, -0.327430367
    def c98, 0.5, 2, 0.1, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3.xyz
    dcl_texcoord5 v4.xyz
    dcl_color v5
    dcl_texcoord6 v6.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
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
    mov r0.zw, c5.x
    texldl r0, r0, s10
    cmp r0, -r0.y, c5.y, c5.z
    texkill r0
    texld r0, v0, s1
    add r0.z, -r0.w, c5.w
    add r0.z, -r0.x, r0.z
    cmp r0.xy, r0.z, r0.wyzw, r0
    texld r1, v0, s0
    add r0.zw, r0.xyxy, c0.x
    mul r0.zw, r0, c74.x
    dp2add r0.x, r0, -r0, c5.w
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
    add r3.xyz, c0.y, v2
    nrm r4.xyz, r3
    dp3 r0.y, -r4, r2
    add r0.y, r0.y, r0.y
    mad r3.xyz, r2, -r0.y, -r4
    add r4.xyz, r3, c0.y
    dp3 r0.y, r4, r4
    rsq r0.y, r0.y
    mad r0.yz, r4.xxzw, r0.y, c5.w
    mul r0.yz, r0, c0.x
    texld r4, r0.yzzw, s4
    mul r4.xyz, r0.x, r4
    mul r4.xyz, r4, c75.x
    mul r1, r1.wxyz, c51.wxyz
    mul r5, r1.yzwx, v5
    mad r0.y, r1.x, v5.w, c0.z
    rcp r0.z, r5.w
    cmp r0.y, r0.y, r0.z, c0.w
    mad r5.xyz, r4, r0.y, r5
    mad_sat r0.y, r2.z, c1.x, c1.y
    mov r1.xyz, c38
    mad r1.xyz, r1, r0.y, c37
    mul r4.xyz, c18.w, c18
    dp3 r0.y, r2, -c17
    mul_sat r0.y, r0.y, c1.z
    dp3_sat r0.z, -c17, r3
    add r0.z, r0.z, c1.w
    mov r1.w, c1.w
    mad r0.w, r0.w, c66.x, r1.w
    pow r1.w, r0.z, r0.w
    mul r6.xyz, c61.xyww, v6.y
    mad r6.xyz, v6.x, c60.xyww, r6
    mad r6.xyz, v6.z, c62.xyww, r6
    add r6.xyz, r6, c63.xyww
    dp3 r0.z, c14, v6
    add r7.xyz, -r0.z, -c54
    cmp r7.yzw, r7.xxyz, c5.w, c5.x
    mov r7.x, c5.w
    dp4 r8.x, r7, c57
    dp4 r8.y, r7, c58
    dp4 r9.x, r7, c59
    dp4 r9.y, r7, c56
    mad r0.zw, r6.xyxy, r8.xyxy, r9.xyxy
    add r6.xyw, c15.xyzz, -v6.xyzz
    dp3 r3.w, r6.xyww, r6.xyww
    rsq r3.w, r3.w
    rcp r3.w, r3.w
    rcp r4.w, c53.w
    mul r4.w, r3.w, r4.w
    mul r4.w, r4.w, r4.w
    mul r4.w, r4.w, c2.x
    mov r6.y, c53.y
    mul r8.xy, r6.yy, c98.xy
    add r6.z, r6.z, -c98.z
    mad r6.xw, r8.xy, c2.yyzz, r0.zyzw
    texld r7, r6.xwzw, s15
    add r6.x, r6.z, -r7.x
    cmp r6.x, r6.x, c5.w, c5.x
    mad r7.xy, r8.xy, c10, r0.zwzw
    texld r7, r7, s15
    add r6.w, r6.z, -r7.x
    cmp r6.w, r6.w, c5.w, c5.x
    add r6.x, r6.x, r6.w
    mad r7.xy, r8.xy, c10.zwzw, r0.zwzw
    texld r7, r7, s15
    add r6.w, r6.z, -r7.x
    cmp r6.w, r6.w, c5.w, c5.x
    add r6.x, r6.x, r6.w
    mad r7.xy, r8.xy, c9, r0.zwzw
    texld r7, r7, s15
    add r6.w, r6.z, -r7.x
    cmp r6.w, r6.w, c5.w, c5.x
    add r6.x, r6.x, r6.w
    mad r7.xy, r8.xy, c9.zwzw, r0.zwzw
    texld r7, r7, s15
    add r6.w, r6.z, -r7.x
    cmp r6.w, r6.w, c5.w, c5.x
    add r6.x, r6.x, r6.w
    mad r7.xy, r8.xy, c8, r0.zwzw
    texld r7, r7, s15
    add r6.w, r6.z, -r7.x
    cmp r6.w, r6.w, c5.w, c5.x
    add r6.x, r6.x, r6.w
    mad r7.xy, r8.xy, c8.zwzw, r0.zwzw
    texld r7, r7, s15
    add r6.w, r6.z, -r7.x
    cmp r6.w, r6.w, c5.w, c5.x
    add r6.x, r6.x, r6.w
    mad r7.xy, r8.xy, c7, r0.zwzw
    texld r7, r7, s15
    add r6.w, r6.z, -r7.x
    cmp r6.w, r6.w, c5.w, c5.x
    add r6.x, r6.x, r6.w
    mad r7.xy, r8.xy, c7.zwzw, r0.zwzw
    texld r7, r7, s15
    add r6.w, r6.z, -r7.x
    cmp r6.w, r6.w, c5.w, c5.x
    add r6.x, r6.x, r6.w
    mad r7.xy, r8.xy, c6, r0.zwzw
    texld r7, r7, s15
    add r6.w, r6.z, -r7.x
    cmp r6.w, r6.w, c5.w, c5.x
    add r6.x, r6.x, r6.w
    mad r7.xy, r8.xy, c6.zwzw, r0.zwzw
    texld r7, r7, s15
    add r6.w, r6.z, -r7.x
    cmp r6.w, r6.w, c5.w, c5.x
    add r6.x, r6.x, r6.w
    mad r0.zw, r8.xyxy, c3.xyxy, r0
    texld r7, r0.zwzw, s15
    add r0.z, r6.z, -r7.x
    cmp r0.z, r0.z, c5.w, c5.x
    add r0.z, r6.x, r0.z
    mad r0.z, r0.z, c2.w, r4.w
    add r0.w, r3.w, -c53.w
    cmp r6.xy, r0.w, c5.wyzw, c5.xzzw
    add r0.w, r0.z, r6.y
    cmp_sat r0.z, r0.w, r0.z, r6.x
    mul r6.xyz, r4, r1.w
    mul r6.xyz, r0.z, r6
    mul r4.xyz, r4, r0.y
    mul r0.yzw, r0.z, r4.xxyz
    mad r0.yzw, r1.xxyz, c39.z, r0
    mul r1.x, r2.w, c4.w
    add r4, c19, -v6.x
    add r7, c20, -v6.y
    add r8, c21, -v6.z
    mul r9, r4, r4
    mad r9, r7, r7, r9
    mad r9, r8, r8, r9
    add r10, r9, c0.y
    rsq r11.x, r10.x
    rsq r11.y, r10.y
    rsq r11.z, r10.z
    rsq r11.w, r10.w
    mov r1.w, c5.w
    mad r9, r9, -c25, r1.w
    max r10, r9, c5.x
    mul r9, r10, r10
    mad r9, r9, r9, c3.z
    mul r10, r9, c3.w
    cmp r9, r9, r10, c5.x
    mul r10, r2.x, r4
    mad r10, r7, r2.y, r10
    mad r10, r8, r2.z, r10
    mul r9, r9, r10
    mul_sat r9, r11, r9
    mul r10, r4, -c22
    mad r10, r7, -c23, r10
    mad r10, r8, -c24, r10
    mul r10, r11, r10
    mov r12, c26
    mad_sat r10, r10, r12, c27
    mul r9, r9, r10
    mul r4, r3.x, r4
    mad r4, r3.y, r7, r4
    mad r4, r3.z, r8, r4
    mul r4, r11, r4
    log r7.x, r4_abs.x
    log r7.y, r4_abs.y
    log r7.z, r4_abs.z
    log r7.w, r4_abs.w
    mul r4, r1.x, r7
    exp r7.x, r4.x
    exp r7.y, r4.y
    exp r7.z, r4.z
    exp r7.w, r4.w
    mul r4, r9, r7
    dp4 r7.x, c29, r9
    dp4 r7.y, c30, r9
    dp4 r7.z, c31, r9
    dp4 r8.x, c29, r4
    dp4 r8.y, c30, r4
    dp4 r8.z, c31, r4
    add r0.yzw, r0, r7.xxyz
    mad r4.xyz, r6, c17.w, r8
    add r6, c32, -v6.x
    add r7, c33, -v6.y
    add r8, c34, -v6.z
    mul r9, r6, r6
    mad r9, r7, r7, r9
    mad r9, r8, r8, r9
    add r10, r9, c0.y
    rsq r11.x, r10.x
    rsq r11.y, r10.y
    rsq r11.z, r10.z
    rsq r11.w, r10.w
    mad r9, r9, -c36, r1.w
    max r10, r9, c5.x
    mul r9, r10, r10
    mad r9, r9, r9, c3.z
    mul r10, r9, c3.w
    cmp r9, r9, r10, c5.x
    mul r10, r2.x, r6
    mad r10, r7, r2.y, r10
    mad r2, r8, r2.z, r10
    mul r2, r9, r2
    mul_sat r2, r11, r2
    mul r9, r6, -c67
    mad r9, r7, -c68, r9
    mad r9, r8, -c69, r9
    mul r9, r11, r9
    mov r10, c70
    mad_sat r9, r9, r10, c71
    mul r2, r2, r9
    mul r6, r3.x, r6
    mad r6, r3.y, r7, r6
    mad r3, r3.z, r8, r6
    mul r3, r11, r3
    log r6.x, r3_abs.x
    log r6.y, r3_abs.y
    log r6.z, r3_abs.z
    log r6.w, r3_abs.w
    mul r1, r1.x, r6
    exp r3.x, r1.x
    exp r3.y, r1.y
    exp r3.z, r1.z
    exp r3.w, r1.w
    mul r1, r2, r3
    dp4 r3.x, c35, r2
    dp4 r3.y, c64, r2
    dp4 r3.z, c65, r2
    dp4 r2.x, c35, r1
    dp4 r2.y, c64, r1
    dp4 r2.z, c65, r1
    add r1.xyz, r0.yzww, r3
    add r0.yzw, r4.xxyz, r2.xxyz
    mov r1.w, c5.w
    mul r1, r5, r1
    mad oC0.xyz, r0.x, r0.yzww, r1
    mul oC0.w, r1.w, c39.x

// approximately 272 instruction slots used (18 texture, 254 arithmetic)
