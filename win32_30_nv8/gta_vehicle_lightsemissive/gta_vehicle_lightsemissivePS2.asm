//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D DirtSampler;
//   sampler2D EnvironmentSampler;
//   sampler2D SpecSampler;
//   sampler2D TextureSampler;
//   float3 dirtColor;
//   float dirtLevel;
//   float emissiveMultiplier;
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
//   float3 matDiffuseColor;
//   float reflectivePowerED;
//   float3 specMapIntMask;
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
//   gShadowParam18192021 c53      1
//   gFacetCentre         c54      1
//   gShadowParam14151617 c56      1
//   gShadowParam0123     c57      1
//   gShadowParam4567     c58      1
//   gShadowParam891113   c59      1
//   gShadowMatrix        c60      4
//   gLightPointColG      c64      1
//   gLightPointColB      c65      1
//   matDiffuseColor      c66      1
//   gLightDir2X          c67      1
//   gLightDir2Y          c68      1
//   gLightDir2Z          c69      1
//   gLightConeScale2     c70      1
//   gLightConeOffset2    c71      1
//   emissiveMultiplier   c72      1
//   dirtLevel            c73      1
//   dirtColor            c74      1
//   specMapIntMask       c75      1
//   reflectivePowerED    c76      1
//   TextureSampler       s0       1
//   DirtSampler          s1       1
//   SpecSampler          s2       1
//   EnvironmentSampler   s4       1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, 9.99999975e-006, 47.5, 0.224999994, 1
    def c1, 0.9, 9.99999975e-005, 190, 1.5
    def c2, 0.800000012, 0.5, 0.200000003, 0
    def c3, 5, 18, -0.5, 0.5
    def c4, 0, 1, -0, -0.25
    def c5, 0.0833333358, -0.100000001, 1.11111116, 1.00000001e-007
    def c6, 0.212500006, 0.715399981, 0.0720999986, 0
    def c7, 1, -1, 0, -0
    def c8, 0, 0, 0, 0.5
    def c9, 0.2703204087, 0.4206267664, 0.4548159977, 0.2077075065
    def c10, 0.4949107209, -0.07115741914, 0.3778747872, -0.327430367
    def c11, 0.1408662784, -0.4797464868, -0.1408662784, -0.4797464868
    def c12, -0.3778747872, -0.327430367, -0.4949107209, -0.07115741914
    def c13, -0.4548159977, 0.2077075065, -0.2703204087, 0.4206267664
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord3 v2.xyz
    dcl_color v3
    dcl_texcoord2 v4.xyz
    dcl_texcoord7 v5.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s15
    texld r0, v0, s0
    add r1.xyz, c0.x, v1
    nrm r2.xyz, r1
    texld r1, v0, s2
    mul r1.w, r1.w, c76.x
    mul r2.w, r1.w, c0.y
    dp3 r1.x, r1, c75
    mul r1.x, r1.x, c76.x
    mul r1.x, r1.x, c0.z
    add r3.xyz, c0.x, v2
    nrm r4.xyz, r3
    dp3 r1.y, r4, r2
    add r1.y, -r1_abs.y, c0.w
    mul r1.y, r1.y, r1.y
    mul r1.y, r1.y, r1.y
    mad r1.yz, r1.y, c2.xyxw, c2
    add r1.z, r1.z, r1.z
    min r3.x, r1.x, c0.w
    dp3 r1.x, -r4, r2
    add r1.x, r1.x, r1.x
    mad r3.yzw, r2.xxyz, -r1.x, -r4.xxyz
    add r4.xyz, r3.yzww, c0.x
    nrm r5.xyz, r4
    mov_sat r1.x, r5.z
    add r1.x, r1.x, c0.w
    add r1.x, r1.x, r1.x
    rcp r1.x, r1.x
    mad r4.xy, r5, r1.x, c2.y
    add r4.xy, -r4, c0.w
    mov r4.zw, c2.w
    texldl r4, r4, s4
    mul_sat r1.x, r5.z, c3.x
    mul r4.xyz, r4, r1.x
    mul r4.xyz, r1.z, r4
    mul r4.xyz, r4, c76.x
    mul r4.xyz, r4, c3.y
    mul r0.xyz, r0, c66
    mul r5, r0, v3
    mov r4.w, c2.w
    if_lt -c73.x, r4.w
      texld r6, v5, s1
      mul r1.x, r6.x, c73.x
      mov r4.w, c0.w
      mad r7.x, r6.x, -c73.x, r4.w
      lrp r7.yzw, r1.x, c74.xxyz, r0.xxyz
      mad r8, r0.xxyz, c4.xyyy, c4.yzzz
      cmp r0, -r6.x, r8.yzwx, r7.yzwx
    else
      mov r0.w, c0.w
    endif
    mul r1.x, r3.x, r0.w
    mad_sat r1.z, r2.z, c3.z, c3.w
    mov r6.xyz, c38
    mad r6.xyz, r6, r1.z, c37
    mul r7.xyz, c18.w, c18
    dp3 r1.z, r2, -c17
    mul_sat r1.z, r1.z, c1.x
    dp3_sat r3.x, -c17, r3.yzww
    add r3.x, r3.x, c1.y
    mad r1.w, r1.w, c1.z, c1.y
    pow r4.w, r3.x, r1.w
    mul r8.xyz, c61.xyww, v4.y
    mad r8.xyz, v4.x, c60.xyww, r8
    mad r8.xyz, v4.z, c62.xyww, r8
    add r8.xyz, r8, c63.xyww
    dp3 r1.w, c14, v4
    add r9.xyz, -r1.w, -c54
    cmp r9.yzw, r9.xxyz, c4.y, c4.x
    mov r9.x, c0.w
    dp4 r10.x, r9, c57
    dp4 r10.y, r9, c58
    dp4 r11.x, r9, c59
    dp4 r11.y, r9, c56
    mad r8.xy, r8, r10, r11
    add r9.xyz, c15, -v4
    dp3 r1.w, r9, r9
    rsq r1.w, r1.w
    rcp r1.w, r1.w
    rcp r3.x, c53.w
    mul r3.x, r1.w, r3.x
    mul r3.x, r3.x, r3.x
    mul r3.x, r3.x, r3.x
    mov r9.y, c53.y
    mad r9.xz, r9.y, c13.xyyw, r8.xyyw
    texld r10, r9.xzzw, s15
    add r6.w, r8.z, -r10.x
    cmp r6.w, r6.w, c4.y, c4.x
    mad r9.xz, r9.y, c13.zyww, r8.xyyw
    texld r10, r9.xzzw, s15
    add r7.w, r8.z, -r10.x
    cmp r7.w, r7.w, c4.y, c4.x
    add r6.w, r6.w, r7.w
    mad r9.xz, r9.y, c12.xyyw, r8.xyyw
    texld r10, r9.xzzw, s15
    add r7.w, r8.z, -r10.x
    cmp r7.w, r7.w, c4.y, c4.x
    add r6.w, r6.w, r7.w
    mad r9.xz, r9.y, c12.zyww, r8.xyyw
    texld r10, r9.xzzw, s15
    add r7.w, r8.z, -r10.x
    cmp r7.w, r7.w, c4.y, c4.x
    add r6.w, r6.w, r7.w
    mad r9.xz, r9.y, c11.xyyw, r8.xyyw
    texld r10, r9.xzzw, s15
    add r7.w, r8.z, -r10.x
    cmp r7.w, r7.w, c4.y, c4.x
    add r6.w, r6.w, r7.w
    mad r9.xz, r9.y, c11.zyww, r8.xyyw
    texld r10, r9.xzzw, s15
    add r7.w, r8.z, -r10.x
    cmp r7.w, r7.w, c4.y, c4.x
    add r6.w, r6.w, r7.w
    mad r9.xz, r9.y, c10.xyyw, r8.xyyw
    texld r10, r9.xzzw, s15
    add r7.w, r8.z, -r10.x
    cmp r7.w, r7.w, c4.y, c4.x
    add r6.w, r6.w, r7.w
    mad r9.xz, r9.y, c10.zyww, r8.xyyw
    texld r10, r9.xzzw, s15
    add r7.w, r8.z, -r10.x
    cmp r7.w, r7.w, c4.y, c4.x
    add r6.w, r6.w, r7.w
    mad r9.xz, r9.y, c9.xyyw, r8.xyyw
    texld r10, r9.xzzw, s15
    add r7.w, r8.z, -r10.x
    cmp r7.w, r7.w, c4.y, c4.x
    add r6.w, r6.w, r7.w
    mad r9.xz, r9.y, c9.zyww, r8.xyyw
    texld r10, r9.xzzw, s15
    add r7.w, r8.z, -r10.x
    cmp r7.w, r7.w, c4.y, c4.x
    add r6.w, r6.w, r7.w
    mad r9.xz, r9.y, c8.xyyw, r8.xyyw
    texld r10, r9.xzzw, s15
    add r7.w, r8.z, -r10.x
    cmp r7.w, r7.w, c4.y, c4.x
    add r6.w, r6.w, r7.w
    mad r8.xy, r9.y, c8.zwzw, r8
    texld r9, r8, s15
    add r7.w, r8.z, -r9.x
    cmp r7.w, r7.w, c4.y, c4.x
    add r6.w, r6.w, r7.w
    mad r3.x, r6.w, c5.x, r3.x
    add r1.w, r1.w, -c53.w
    cmp r8.xy, r1.w, c7, c7.zwzw
    add r1.w, r3.x, r8.y
    cmp_sat r1.w, r1.w, r3.x, r8.x
    mul r8.xyz, r7, r4.w
    mul r8.xyz, r1.w, r8
    mul r7.xyz, r7, r1.z
    mul r7.xyz, r1.w, r7
    mad r6.xyz, r6, c39.z, r7
    add r7, c19, -v4.x
    add r9, c20, -v4.y
    add r10, c21, -v4.z
    mul r11, r7, r7
    mad r11, r9, r9, r11
    mad r11, r10, r10, r11
    add r12, r11, c0.x
    rsq r13.x, r12.x
    rsq r13.y, r12.y
    rsq r13.z, r12.z
    rsq r13.w, r12.w
    mov r1.w, c0.w
    mad r11, r11, -c25, r1.w
    max r12, r11, c2.w
    mul r11, r12, r12
    mad r11, r11, r11, c5.y
    mul r12, r11, c5.z
    cmp r11, r11, r12, c2.w
    mul r12, r2.x, r7
    mad r12, r9, r2.y, r12
    mad r12, r10, r2.z, r12
    mul r11, r11, r12
    mul_sat r11, r13, r11
    mul r12, r7, -c22
    mad r12, r9, -c23, r12
    mad r12, r10, -c24, r12
    mul r12, r13, r12
    mov r14, c26
    mad_sat r12, r12, r14, c27
    mul r11, r11, r12
    mul r7, r3.y, r7
    mad r7, r3.z, r9, r7
    mad r7, r3.w, r10, r7
    mul r7, r13, r7
    log r9.x, r7_abs.x
    log r9.y, r7_abs.y
    log r9.z, r7_abs.z
    log r9.w, r7_abs.w
    mul r7, r2.w, r9
    exp r9.x, r7.x
    exp r9.y, r7.y
    exp r9.z, r7.z
    exp r9.w, r7.w
    mul r7, r11, r9
    dp4 r9.x, c29, r11
    dp4 r9.y, c30, r11
    dp4 r9.z, c31, r11
    dp4 r10.x, c29, r7
    dp4 r10.y, c30, r7
    dp4 r10.z, c31, r7
    add r6.xyz, r6, r9
    mad r7.xyz, r8, c17.w, r10
    add r8, c32, -v4.x
    add r9, c33, -v4.y
    add r10, c34, -v4.z
    mul r11, r8, r8
    mad r11, r9, r9, r11
    mad r11, r10, r10, r11
    add r12, r11, c0.x
    rsq r13.x, r12.x
    rsq r13.y, r12.y
    rsq r13.z, r12.z
    rsq r13.w, r12.w
    mad r11, r11, -c36, r1.w
    max r12, r11, c2.w
    mul r11, r12, r12
    mad r11, r11, r11, c5.y
    mul r12, r11, c5.z
    cmp r11, r11, r12, c2.w
    mul r12, r2.x, r8
    mad r12, r9, r2.y, r12
    mad r12, r10, r2.z, r12
    mul r11, r11, r12
    mul_sat r11, r13, r11
    mul r12, r8, -c67
    mad r12, r9, -c68, r12
    mad r12, r10, -c69, r12
    mul r12, r13, r12
    mov r14, c70
    mad_sat r12, r12, r14, c71
    mul r11, r11, r12
    mul r8, r3.y, r8
    mad r8, r3.z, r9, r8
    mad r3, r3.w, r10, r8
    mul r3, r13, r3
    log r8.x, r3_abs.x
    log r8.y, r3_abs.y
    log r8.z, r3_abs.z
    log r8.w, r3_abs.w
    mul r2, r2.w, r8
    exp r3.x, r2.x
    exp r3.y, r2.y
    exp r3.z, r2.z
    exp r3.w, r2.w
    mul r2, r11, r3
    dp4 r3.x, c35, r11
    dp4 r3.y, c64, r11
    dp4 r3.z, c65, r11
    dp4 r8.x, c35, r2
    dp4 r8.y, c64, r2
    dp4 r8.z, c65, r2
    add r2.xyz, r6, r3
    add r3.xyz, r7, r8
    mov_sat r1.y, r1.y
    mul r1.x, r1.x, r1.y
    mul r4.xyz, r4, r1.x
    mad r3.xyz, r4, c39.z, r3
    mov r0.w, r5.w
    mov r2.w, c0.w
    mul r0, r0, r2
    mad r0.xyz, r1.x, r3, r0
    mad r0.xyz, r5, c72.x, r0
    mul oC0.w, r0.w, c39.x
    add r0.w, c16.w, -v1.w
    add r1.x, -c16.z, c16.w
    rcp r1.x, r1.x
    mul_sat r0.w, r0.w, r1.x
    add r0.w, -r0.w, c0.w
    add r1.xy, -r1.w, c16
    mul r1.y, r0.w, r1.y
    mad r0.w, r0.w, r1.x, c0.w
    dp3 r1.x, r0, c6
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

// approximately 305 instruction slots used (17 texture, 288 arithmetic)
