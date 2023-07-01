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
//   sampler2D damageSpecTextureSampler;
//   sampler2D damageTextureSampler;
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
//   float4 matMaterialColorScale;
//   float3 specMapIntMask;
//   float specularColorFactor;
//   float specularFactor;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   gViewInverse             c12      4
//   gDepthFxParams           c16      1
//   gDirectionalLight        c17      1
//   gDirectionalColour       c18      1
//   gLightPosX               c19      1
//   gLightPosY               c20      1
//   gLightPosZ               c21      1
//   gLightDirX               c22      1
//   gLightDirY               c23      1
//   gLightDirZ               c24      1
//   gLightFallOff            c25      1
//   gLightConeScale          c26      1
//   gLightConeOffset         c27      1
//   gLightColR               c29      1
//   gLightColG               c30      1
//   gLightColB               c31      1
//   gLightAmbient0           c37      1
//   gLightAmbient1           c38      1
//   globalScalars            c39      1
//   globalFogParams          c41      1
//   globalFogColor           c42      1
//   globalFogColorN          c43      1
//   gShadowParam18192021     c53      1
//   gFacetCentre             c54      1
//   gShadowParam14151617     c56      1
//   gShadowParam0123         c57      1
//   gShadowParam4567         c58      1
//   gShadowParam891113       c59      1
//   gShadowMatrix            c60      4
//   matMaterialColorScale    c66      1
//   specularFactor           c72      1
//   specularColorFactor      c73      1
//   specMapIntMask           c74      1
//   bumpiness                c75      1
//   TextureSampler           s0       1
//   damageTextureSampler     s1       1
//   damageSpecTextureSampler s2       1
//   BumpSampler              s4       1
//   SpecSampler              s5       1
//   StippleTexture           s10      1
//   gShadowZSamplerDir       s15      1
//

    ps_3_0
    def c0, 1, -0.5, 9.99999975e-006, 0
    def c1, 0.333333343, -0.5, 0.5, -0.25
    def c2, 0.9, 1.5, -0.4548159977, 0.2077075065
    def c3, 9.99999975e-005, 0.212500006, 0.715399981, 0.0720999986
    def c4, 0, 0.5, 0.0833333358, -0.100000001
    def c5, 1.11111116, 3.99600005, 4, 0.125
    def c6, 1.00000001e-007, 0, 0, 0
    def c7, 1, -1, 0, -0
    def c8, 0.4548159977, 0.2077075065, 0, 0
    def c9, 0.3778747872, -0.327430367, 0.2703204087, 0.4206267664
    def c10, -0.1408662784, -0.4797464868, 0.4949107209, -0.07115741914
    def c11, -0.4949107209, -0.07115741914, 0.1408662784, -0.4797464868
    def c12, -0.2703204087, 0.4206267664, -0.3778747872, -0.327430367
    def c98, 0.5, 2, 0.1, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3.xyz
    dcl_texcoord5 v4.xyz
    dcl_color v5.xw
    dcl_texcoord6 v6.x
    dcl_texcoord2 v7.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s5
    dcl_2d s10
    dcl_2d s15
    texld r0, v0, s4
    add r0.z, -r0.w, c0.x
    add r0.z, -r0.x, r0.z
    cmp r0.xy, r0.z, r0.wyzw, r0
    texld r1, v0, s0
    add r0.zw, r0.xyxy, c0.y
    mul r0.zw, r0, c75.x
    dp2add r0.x, r0, -r0, c0.x
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    mul r2.xyz, r0.z, v3
    mad r0.xyz, v1, r0.x, r2
    mad r0.xyz, r0.w, v4, r0
    add r0.xyz, r0, c0.z
    nrm r2.xyz, r0
    texld r0, v0, s5
    mul r0.w, r0.w, c72.x
    dp3 r0.x, r0, c74
    mul r0.x, r0.x, c73.x
    if_lt -v6.x, c0.w
      texld r3, v0, s1
      if_lt -r3.w, c0.w
        texld r4, v0, s2
        add r0.y, c0.x, -v6.x
        mul r0.z, r4.w, c72.x
        lrp r2.w, v6.x, r0.z, r0.w
        add r0.z, r4.y, r4.x
        add r0.z, r4.z, r0.z
        mul r0.z, r0.z, v6.x
        mul r0.z, r0.z, c73.x
        mul r0.z, r0.z, c1.x
        mad r0.x, r0.y, r0.x, r0.z
        mad r0.y, r3.w, -v6.x, c0.x
        mul r3.xyz, r3.w, r3
        mul r3.xyz, r3, v6.x
        mad r1.xyz, r1, r0.y, r3
        mov r0.w, r2.w
      endif
    endif
    mad_sat r0.y, r2.z, c1.y, c1.z
    mov r3.xyz, c38
    mad r3.xyz, r3, r0.y, c37
    mul r4.xyz, c18.w, c18
    dp3 r0.y, r2, -c17
    mul_sat r0.y, r0.y, c2.x
    mul r5.xyz, c61.xyww, v7.y
    mad r5.xyz, v7.x, c60.xyww, r5
    mad r5.xyz, v7.z, c62.xyww, r5
    add r5.xyz, r5, c63.xyww
    dp3 r0.z, c14, v7
    add r6.xyz, -r0.z, -c54
    cmp r6.yzw, r6.xxyz, c0.x, c0.w
    mov r6.x, c0.x
    dp4 r7.x, r6, c57
    dp4 r7.y, r6, c58
    dp4 r8.x, r6, c59
    dp4 r8.y, r6, c56
    mad r5.xy, r5, r7, r8
    add r6.xyz, c15, -v7
    dp3 r0.z, r6, r6
    rsq r0.z, r0.z
    rcp r0.z, r0.z
    rcp r2.w, c53.w
    mul r2.w, r0.z, r2.w
    mul r2.w, r2.w, r2.w
    mul r2.w, r2.w, c2.y
    mov r6.y, c53.y
    mul r8.xy, r6.yy, c98.xy
    add r5.z, r5.z, -c98.z
    mad r6.xz, r8.xy, c2.zyww, r5.xyyw
    texld r7, r6.xzzw, s15
    add r3.w, r5.z, -r7.x
    cmp r3.w, r3.w, c0.x, c0.w
    mad r6.xz, r8.xy, c12.xyyw, r5.xyyw
    texld r7, r6.xzzw, s15
    add r4.w, r5.z, -r7.x
    cmp r4.w, r4.w, c0.x, c0.w
    add r3.w, r3.w, r4.w
    mad r6.xz, r8.xy, c12.zyww, r5.xyyw
    texld r7, r6.xzzw, s15
    add r4.w, r5.z, -r7.x
    cmp r4.w, r4.w, c0.x, c0.w
    add r3.w, r3.w, r4.w
    mad r6.xz, r8.xy, c11.xyyw, r5.xyyw
    texld r7, r6.xzzw, s15
    add r4.w, r5.z, -r7.x
    cmp r4.w, r4.w, c0.x, c0.w
    add r3.w, r3.w, r4.w
    mad r6.xz, r8.xy, c11.zyww, r5.xyyw
    texld r7, r6.xzzw, s15
    add r4.w, r5.z, -r7.x
    cmp r4.w, r4.w, c0.x, c0.w
    add r3.w, r3.w, r4.w
    mad r6.xz, r8.xy, c10.xyyw, r5.xyyw
    texld r7, r6.xzzw, s15
    add r4.w, r5.z, -r7.x
    cmp r4.w, r4.w, c0.x, c0.w
    add r3.w, r3.w, r4.w
    mad r6.xz, r8.xy, c10.zyww, r5.xyyw
    texld r7, r6.xzzw, s15
    add r4.w, r5.z, -r7.x
    cmp r4.w, r4.w, c0.x, c0.w
    add r3.w, r3.w, r4.w
    mad r6.xz, r8.xy, c9.xyyw, r5.xyyw
    texld r7, r6.xzzw, s15
    add r4.w, r5.z, -r7.x
    cmp r4.w, r4.w, c0.x, c0.w
    add r3.w, r3.w, r4.w
    mad r6.xz, r8.xy, c9.zyww, r5.xyyw
    texld r7, r6.xzzw, s15
    add r4.w, r5.z, -r7.x
    cmp r4.w, r4.w, c0.x, c0.w
    add r3.w, r3.w, r4.w
    mad r6.xz, r8.xy, c8.xyyw, r5.xyyw
    texld r7, r6.xzzw, s15
    add r4.w, r5.z, -r7.x
    cmp r4.w, r4.w, c0.x, c0.w
    add r3.w, r3.w, r4.w
    mad r6.xz, r8.xy, c8.zyww, r5.xyyw
    texld r7, r6.xzzw, s15
    add r4.w, r5.z, -r7.x
    cmp r4.w, r4.w, c0.x, c0.w
    add r3.w, r3.w, r4.w
    mad r5.xy, r8.xy, c4, r5
    texld r6, r5, s15
    add r4.w, r5.z, -r6.x
    cmp r4.w, r4.w, c0.x, c0.w
    add r3.w, r3.w, r4.w
    mad r2.w, r3.w, c4.z, r2.w
    add r0.z, r0.z, -c53.w
    cmp r5.xy, r0.z, c7, c7.zwzw
    add r0.z, r2.w, r5.y
    cmp_sat r0.z, r0.z, r2.w, r5.x
    mul r5.xyz, r4, r0.y
    mul r5.xyz, r0.z, r5
    mad r3.xyz, r3, v5.x, r5
    add r5, c19, -v7.x
    add r6, c20, -v7.y
    add r7, c21, -v7.z
    mul r8, r5, r5
    mad r8, r6, r6, r8
    mad r8, r7, r7, r8
    add r9, r8, c0.z
    rsq r10.x, r9.x
    rsq r10.y, r9.y
    rsq r10.z, r9.z
    rsq r10.w, r9.w
    mov r9.x, c0.x
    mad r8, r8, -c25, r9.x
    max r11, r8, c0.w
    mul r8, r11, r11
    mad r8, r8, r8, c4.w
    mul r11, r8, c5.x
    cmp r8, r8, r11, c0.w
    mul r11, r2.x, r5
    mad r11, r6, r2.y, r11
    mad r11, r7, r2.z, r11
    mul r8, r8, r11
    mul_sat r8, r10, r8
    mul r11, r5, -c22
    mad r11, r6, -c23, r11
    mad r11, r7, -c24, r11
    mul r11, r10, r11
    mov r12, c26
    mad_sat r11, r11, r12, c27
    mul r8, r8, r11
    dp4 r11.x, c29, r8
    dp4 r11.y, c30, r8
    dp4 r11.z, c31, r8
    add r3.xyz, r3, r11
    mov r1.w, v5.w
    mov r3.w, c0.x
    mul r1, r1, r3
    mul r0.y, r1.w, c39.x
    mov_sat r1.w, r0.y
    mul r1.w, r1.w, c5.y
    frc r2.w, r1.w
    mul r3.x, r2.w, c5.z
    frc r3.y, r3.x
    add r3.x, r3.x, -r3.y
    add r3.y, r1.w, -r2.w
    mul r3.zw, c5.w, vPos.xyxy
    frc r3.zw, r3_abs
    cmp r3.zw, vPos.xyxy, r3, -r3
    mul r3.zw, r3, -c1.w
    mad r3.xy, r3, -c1.w, r3.zwzw
    mov r3.zw, c0.w
    texldl r3, r3, s10
    cmp r3, -r3.y, -c0.x, -c0.w
    texkill r3
    add r3.xyz, c0.z, v2
    nrm r11.xyz, r3
    dp3 r1.w, -r11, r2
    add r1.w, r1.w, r1.w
    mad r2.xyz, r2, -r1.w, -r11
    dp3_sat r1.w, -c17, r2
    add r1.w, r1.w, c3.x
    add r2.w, r0.w, c3.x
    pow r3.x, r1.w, r2.w
    mul r3.xyz, r4, r3.x
    mul r3.xyz, r0.z, r3
    mul r0.z, r0.w, -c1.w
    mul r4, r5, r2.x
    mad r4, r2.y, r6, r4
    mad r2, r2.z, r7, r4
    mul r2, r10, r2
    log r4.x, r2_abs.x
    log r4.y, r2_abs.y
    log r4.z, r2_abs.z
    log r4.w, r2_abs.w
    mul r2, r0.z, r4
    exp r4.x, r2.x
    exp r4.y, r2.y
    exp r4.z, r2.z
    exp r4.w, r2.w
    mul r2, r8, r4
    dp4 r4.x, c29, r2
    dp4 r4.y, c30, r2
    dp4 r4.z, c31, r2
    mad r2.xyz, r3, c17.w, r4
    mad r0.xzw, r0.x, r2.xyyz, r1.xyyz
    add r1.x, c16.w, -v1.w
    add r1.y, -c16.z, c16.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.x, r1.y
    add r1.x, -r1.x, c0.x
    add r1.yz, -r9.x, c16.xxyw
    mul r1.z, r1.x, r1.z
    mad r1.x, r1.x, r1.y, c0.x
    dp3 r1.y, r0.xzww, c3.yzww
    lrp r2.xyz, r1.x, r0.xzww, r1.y
    add r0.x, r1.y, c6.x
    pow r2.w, r0_abs.x, r1.z
    mul r0.xzw, r2.xyyz, r2.w
    rcp r1.x, c41.x
    mul_sat r1.x, r1.x, v1.w
    add r1.y, -c41.x, v1.w
    add r1.z, -c41.x, c41.y
    rcp r1.z, r1.z
    mul_sat r1.y, r1.y, r1.z
    lrp r3.x, c41.w, r1.x, r1.y
    add r1.x, r3.x, c41.z
    mov r3.xyz, c43
    add r3.xyz, -r3, c42
    mad r1.yzw, r1.y, r3.xxyz, c43.xxyz
    mad r1.yzw, r2.xxyz, -r2.w, r1
    mad r0.xzw, r1.x, r1.yyzw, r0
    mul oC0.xyz, r0.xzww, c66.x
    mov oC0.w, r0.y

// approximately 262 instruction slots used (19 texture, 243 arithmetic)
