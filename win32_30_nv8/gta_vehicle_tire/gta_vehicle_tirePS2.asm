//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D DirtSampler;
//   float3 LuminanceConstants;
//   sampler2D SpecSampler;
//   sampler2D TextureSampler;
//   float3 dirtColor;
//   float dirtLevel;
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
//   dirtLevel            c72      1
//   dirtColor            c73      1
//   specMapIntMask       c74      1
//   reflectivePowerED    c75      1
//   LuminanceConstants   c76      1
//   TextureSampler       s0       1
//   DirtSampler          s1       1
//   BumpSampler          s2       1
//   SpecSampler          s4       1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, 1, -0.5, 3, 9.99999975e-006
    def c1, -0.5, 0.5, 9.99999975e-005, 50
    def c2, 12.5, 1.39999998, 0, -0.25
    def c3, 0, 1, -0, 1.33333337
    def c4, 1.5, -0.326211989, -0.405809999, 0.0833333358
    def c5, -0.791558981, -0.597710013, -0.100000001, 1.11111116
    def c6, 1, -1, 0, -0
    def c7, 0.212500006, 0.715399981, 0.0720999986, 1.00000001e-007
    def c8, 0.896420002, 0.412458003, -0.321940005, -0.932614982
    def c9, 0.185461, -0.893123984, 0.507430971, 0.0644249991
    def c10, 0.473434001, -0.480026007, 0.519456029, 0.767022014
    def c11, -0.203345001, 0.620715976, 0.962339997, -0.194983006
    def c12, -0.840143979, -0.0735799968, -0.69591397, 0.457136989
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3.xyz
    dcl_texcoord5 v4.xyz
    dcl_color v5
    dcl_texcoord2 v6.xyz
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s15
    texld r0, v0, s2
    add r0.z, -r0.w, c0.x
    add r0.z, -r0.x, r0.z
    cmp r0.xy, r0.z, r0.wyzw, r0
    texld r1, v0, s0
    add r0.zw, r0.xyxy, c0.y
    mul r0.zw, r0, c0.z
    dp2add r0.x, r0, -r0, c0.x
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    mul r2.xyz, r0.z, v3
    mad r0.xyz, v1, r0.x, r2
    mad r0.xyz, r0.w, v4, r0
    add r0.xyz, r0, c0.w
    nrm r2.xyz, r0
    texld r0, v0, s4
    mul r0.w, r0.w, c75.x
    mul r2.w, r0.w, c2.x
    dp3 r0.x, r0, c74
    mul r0.x, r0.x, c75.x
    mul r0.x, r0.x, c2.y
    mul r1.xyz, r1, c66
    mul r1, r1, v5
    dp3 r0.y, v5, c76
    mul r0.y, r0.y, c39.z
    mov r0.z, c2.z
    if_lt -c72.x, r0.z
      texld r3, v0, s1
      mul r0.z, r3.x, c72.x
      mov r4.x, c0.x
      mad r4.x, r3.x, -c72.x, r4.x
      lrp r4.yzw, r0.z, c73.xxyz, r1.xxyz
      mad r5, r1.xxyz, c3.xyyy, c3.yzzz
      cmp r3, -r3.x, r5, r4
      mov r1.xyz, r3.yzww
    else
      mov r3.x, c0.x
    endif
    mul r0.x, r0.x, r3.x
    add r3.xyz, c0.w, v2
    nrm r4.xyz, r3
    mad_sat r0.z, r2.z, c1.x, c1.y
    mov r3.xyz, c38
    mad r3.xyz, r3, r0.z, c37
    dp3 r0.z, -r4, r2
    add r0.z, r0.z, r0.z
    mad r5.xyz, r2, -r0.z, -r4
    mul r6.xyz, c18.w, c18
    dp3 r0.z, r2, -c17
    add r0.z, r0.z, c2.w
    mul_sat r0.z, r0.z, c3.w
    dp3_sat r3.w, -c17, r5
    add r3.w, r3.w, c1.z
    mad r0.w, r0.w, c1.w, c1.z
    pow r4.w, r3.w, r0.w
    mul r7.xyz, c61.xyww, v6.y
    mad r7.xyz, v6.x, c60.xyww, r7
    mad r7.xyz, v6.z, c62.xyww, r7
    add r7.xyz, r7, c63.xyww
    dp3 r0.w, c14, v6
    add r8.xyz, -r0.w, -c54
    cmp r8.yzw, r8.xxyz, c3.y, c3.x
    mov r8.x, c0.x
    dp4 r9.x, r8, c57
    dp4 r9.y, r8, c58
    dp4 r10.x, r8, c59
    dp4 r10.y, r8, c56
    mad r7.xy, r7, r9, r10
    add r8.xyz, c15, -v6
    dp3 r0.w, r8, r8
    rsq r0.w, r0.w
    rcp r0.w, r0.w
    rcp r3.w, c53.w
    mul r3.w, r0.w, r3.w
    mul r3.w, r3.w, r3.w
    mul r3.w, r3.w, r4.x
    mov r8.y, c53.y
    mad r8.xz, r8.y, c4.yyzw, r7.xyyw
    texld r9, r8.xzzw, s15
    add r5.w, r7.z, -r9.x
    cmp r5.w, r5.w, c3.y, c3.x
    mad r8.xz, r8.y, c12.xyyw, r7.xyyw
    texld r9, r8.xzzw, s15
    add r6.w, r7.z, -r9.x
    cmp r6.w, r6.w, c3.y, c3.x
    add r5.w, r5.w, r6.w
    mad r8.xz, r8.y, c12.zyww, r7.xyyw
    texld r9, r8.xzzw, s15
    add r6.w, r7.z, -r9.x
    cmp r6.w, r6.w, c3.y, c3.x
    add r5.w, r5.w, r6.w
    mad r8.xz, r8.y, c11.xyyw, r7.xyyw
    texld r9, r8.xzzw, s15
    add r6.w, r7.z, -r9.x
    cmp r6.w, r6.w, c3.y, c3.x
    add r5.w, r5.w, r6.w
    mad r8.xz, r8.y, c11.zyww, r7.xyyw
    texld r9, r8.xzzw, s15
    add r6.w, r7.z, -r9.x
    cmp r6.w, r6.w, c3.y, c3.x
    add r5.w, r5.w, r6.w
    mad r8.xz, r8.y, c10.xyyw, r7.xyyw
    texld r9, r8.xzzw, s15
    add r6.w, r7.z, -r9.x
    cmp r6.w, r6.w, c3.y, c3.x
    add r5.w, r5.w, r6.w
    mad r8.xz, r8.y, c10.zyww, r7.xyyw
    texld r9, r8.xzzw, s15
    add r6.w, r7.z, -r9.x
    cmp r6.w, r6.w, c3.y, c3.x
    add r5.w, r5.w, r6.w
    mad r8.xz, r8.y, c9.xyyw, r7.xyyw
    texld r9, r8.xzzw, s15
    add r6.w, r7.z, -r9.x
    cmp r6.w, r6.w, c3.y, c3.x
    add r5.w, r5.w, r6.w
    mad r8.xz, r8.y, c9.zyww, r7.xyyw
    texld r9, r8.xzzw, s15
    add r6.w, r7.z, -r9.x
    cmp r6.w, r6.w, c3.y, c3.x
    add r5.w, r5.w, r6.w
    mad r8.xz, r8.y, c8.xyyw, r7.xyyw
    texld r9, r8.xzzw, s15
    add r6.w, r7.z, -r9.x
    cmp r6.w, r6.w, c3.y, c3.x
    add r5.w, r5.w, r6.w
    mad r8.xz, r8.y, c8.zyww, r7.xyyw
    texld r9, r8.xzzw, s15
    add r6.w, r7.z, -r9.x
    cmp r6.w, r6.w, c3.y, c3.x
    add r5.w, r5.w, r6.w
    mad r7.xy, r8.y, c5, r7
    texld r8, r7, s15
    add r6.w, r7.z, -r8.x
    cmp r6.w, r6.w, c3.y, c3.x
    add r5.w, r5.w, r6.w
    mad r3.w, r5.w, c4.w, r3.w
    add r0.w, r0.w, -c53.w
    cmp r7.xy, r0.w, c6, c6.zwzw
    add r0.w, r3.w, r7.y
    cmp_sat r0.w, r0.w, r3.w, r7.x
    mul r7.xyz, r6, r4.w
    mul r7.xyz, r0.w, r7
    mul r6.xyz, r6, r0.z
    mul r6.xyz, r0.w, r6
    mad r0.yzw, r3.xxyz, r0.y, r6.xxyz
    add r3, c19, -v6.x
    add r6, c20, -v6.y
    add r8, c21, -v6.z
    mul r9, r3, r3
    mad r9, r6, r6, r9
    mad r9, r8, r8, r9
    add r10, r9, c0.w
    rsq r11.x, r10.x
    rsq r11.y, r10.y
    rsq r11.z, r10.z
    rsq r11.w, r10.w
    mov r10.x, c0.x
    mad r9, r9, -c25, r10.x
    max r12, r9, c2.z
    mul r9, r12, r12
    mad r9, r9, r9, c5.z
    mul r12, r9, c5.w
    cmp r9, r9, r12, c2.z
    mul r12, r2.x, r3
    mad r12, r6, r2.y, r12
    mad r12, r8, r2.z, r12
    mul r9, r9, r12
    mul_sat r9, r11, r9
    mul r12, r3, -c22
    mad r12, r6, -c23, r12
    mad r12, r8, -c24, r12
    mul r12, r11, r12
    mov r13, c26
    mad_sat r12, r12, r13, c27
    mul r9, r9, r12
    mul r3, r5.x, r3
    mad r3, r5.y, r6, r3
    mad r3, r5.z, r8, r3
    mul r3, r11, r3
    log r6.x, r3_abs.x
    log r6.y, r3_abs.y
    log r6.z, r3_abs.z
    log r6.w, r3_abs.w
    mul r3, r2.w, r6
    exp r6.x, r3.x
    exp r6.y, r3.y
    exp r6.z, r3.z
    exp r6.w, r3.w
    mul r3, r9, r6
    dp4 r6.x, c29, r9
    dp4 r6.y, c30, r9
    dp4 r6.z, c31, r9
    dp4 r8.x, c29, r3
    dp4 r8.y, c30, r3
    dp4 r8.z, c31, r3
    add r0.yzw, r0, r6.xxyz
    mad r3.xyz, r7, c17.w, r8
    add r6, c32, -v6.x
    add r7, c33, -v6.y
    add r8, c34, -v6.z
    mul r9, r6, r6
    mad r9, r7, r7, r9
    mad r9, r8, r8, r9
    add r11, r9, c0.w
    rsq r12.x, r11.x
    rsq r12.y, r11.y
    rsq r12.z, r11.z
    rsq r12.w, r11.w
    mad r9, r9, -c36, r10.x
    max r11, r9, c2.z
    mul r9, r11, r11
    mad r9, r9, r9, c5.z
    mul r11, r9, c5.w
    cmp r9, r9, r11, c2.z
    mul r11, r2.x, r6
    mad r11, r7, r2.y, r11
    mad r11, r8, r2.z, r11
    mul r9, r9, r11
    mul_sat r9, r12, r9
    mul r11, r6, -c67
    mad r11, r7, -c68, r11
    mad r11, r8, -c69, r11
    mul r11, r12, r11
    mov r13, c70
    mad_sat r11, r11, r13, c71
    mul r9, r9, r11
    mul r6, r5.x, r6
    mad r6, r5.y, r7, r6
    mad r5, r5.z, r8, r6
    mul r5, r12, r5
    log r6.x, r5_abs.x
    log r6.y, r5_abs.y
    log r6.z, r5_abs.z
    log r6.w, r5_abs.w
    mul r5, r2.w, r6
    exp r6.x, r5.x
    exp r6.y, r5.y
    exp r6.z, r5.z
    exp r6.w, r5.w
    mul r5, r9, r6
    dp4 r6.x, c35, r9
    dp4 r6.y, c64, r9
    dp4 r6.z, c65, r9
    dp4 r7.x, c35, r5
    dp4 r7.y, c64, r5
    dp4 r7.z, c65, r5
    add r5.xyz, r0.yzww, r6
    add r0.yzw, r3.xxyz, r7.xxyz
    dp3 r2.x, r4, r2
    add r2.x, -r2_abs.x, c0.x
    mul r2.x, r2.x, r2.x
    mul r2.x, r2.x, r2.x
    mad_sat r2.x, r2.x, -c0.y, -c0.y
    mul r0.x, r0.x, r2.x
    mov r5.w, c0.x
    mul r1, r1, r5
    mad r0.xyz, r0.x, r0.yzww, r1
    mul oC0.w, r1.w, c39.x
    add r0.w, c16.w, -v1.w
    add r1.x, -c16.z, c16.w
    rcp r1.x, r1.x
    mul_sat r0.w, r0.w, r1.x
    add r0.w, -r0.w, c0.x
    add r1.xy, -r10.x, c16
    mul r1.y, r0.w, r1.y
    mad r0.w, r0.w, r1.x, c0.x
    dp3 r1.x, r0, c7
    lrp r2.xyz, r0.w, r0, r1.x
    add r0.x, r1.x, c7.w
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

// approximately 296 instruction slots used (16 texture, 280 arithmetic)
 