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
//   matDiffuseColor      c66      1
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
    def c0, 9.99999975e-005, 50, 1.5, 0.0833333358
    def c1, 1, -0.5, 9.99999975e-006, 0
    def c2, -0.5, 0.5, -0.25, 1.33333337
    def c3, 0.212500006, 0.715399981, 0.0720999986, 1.00000001e-007
    def c4, 1, -1, 0, -0
    def c5, -0.321940005, -0.932614982, -0.791558981, -0.597710013
    def c6, 0.507430971, 0.0644249991, 0.896420002, 0.412458003
    def c7, 0.519456029, 0.767022014, 0.185461, -0.893123984
    def c8, 0.962339997, -0.194983006, 0.473434001, -0.480026007
    def c9, -0.69591397, 0.457136989, -0.203345001, 0.620715976
    def c10, -0.326211989, -0.405809999, -0.840143979, -0.0735799968
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3.xyz
    dcl_texcoord5 v4.xyz
    dcl_color v5
    dcl_texcoord2 v6.xyz
    dcl_texcoord7 v7.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s15
    texld r0, v0, s2
    add r0.z, -r0.w, c1.x
    add r0.z, -r0.x, r0.z
    cmp r0.xy, r0.z, r0.wyzw, r0
    texld r1, v0, s0
    add r0.zw, r0.xyxy, c1.y
    dp2add r0.x, r0, -r0, c1.x
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    mul r2.xyz, r0.z, v3
    mad r0.xyz, v1, r0.x, r2
    mad r0.xyz, r0.w, v4, r0
    add r0.xyz, r0, c1.z
    nrm r2.xyz, r0
    texld r0, v0, s4
    mul r0.w, r0.w, c75.x
    dp3 r0.x, r0, c74
    mul r0.x, r0.x, c75.x
    mul r1.xyz, r1, c66
    mul r1, r1, v5
    dp3 r0.y, v5, c76
    mul r0.y, r0.y, c39.z
    mov r3.xw, c1
    if_lt -c72.x, r3.w
      texld r4, v7, s1
      mul r0.z, r4.x, c72.x
      mad r5.x, r4.x, -c72.x, r3.x
      lrp r5.yzw, r0.z, c73.xxyz, r1.xxyz
      mad r6, r1.xxyz, c1.wxxx, c1.xwww
      cmp r4, -r4.x, r6, r5
      mov r1.xyz, r4.yzww
    else
      mov r4.x, c1.x
    endif
    mul r0.x, r0.x, r4.x
    add r3.yzw, c1.z, v2.xxyz
    nrm r4.xyz, r3.yzww
    mad_sat r0.z, r2.z, c2.x, c2.y
    mov r5.xyz, c38
    mad r3.yzw, r5.xxyz, r0.z, c37.xxyz
    dp3 r0.z, -r4, r2
    add r0.z, r0.z, r0.z
    mad r5.xyz, r2, -r0.z, -r4
    mul r6.xyz, c18.w, c18
    dp3 r0.z, r2, -c17
    add r0.z, r0.z, c2.z
    mul_sat r0.z, r0.z, c2.w
    dp3_sat r2.w, -c17, r5
    add r2.w, r2.w, c0.x
    mad r0.w, r0.w, c0.y, c0.x
    pow r4.w, r2.w, r0.w
    mul r5.xyz, c61.xyww, v6.y
    mad r5.xyz, v6.x, c60.xyww, r5
    mad r5.xyz, v6.z, c62.xyww, r5
    add r5.xyz, r5, c63.xyww
    dp3 r0.w, c14, v6
    add r7.xyz, -r0.w, -c54
    cmp r7.yzw, r7.xxyz, c1.x, c1.w
    mov r7.x, c1.x
    dp4 r8.x, r7, c57
    dp4 r8.y, r7, c58
    dp4 r9.x, r7, c59
    dp4 r9.y, r7, c56
    mad r5.xy, r5, r8, r9
    add r7.xyz, c15, -v6
    dp3 r0.w, r7, r7
    rsq r0.w, r0.w
    rcp r0.w, r0.w
    rcp r2.w, c53.w
    mul r2.w, r0.w, r2.w
    mul r2.w, r2.w, r2.w
    mul r2.w, r2.w, r2.w
    mov r7.y, c53.y
    mad r7.xz, r7.y, c10.xyyw, r5.xyyw
    texld r8, r7.xzzw, s15
    add r5.w, r5.z, -r8.x
    cmp r5.w, r5.w, c1.x, c1.w
    mad r7.xz, r7.y, c10.zyww, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.x, c1.w
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c9.xyyw, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.x, c1.w
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c9.zyww, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.x, c1.w
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c8.xyyw, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.x, c1.w
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c8.zyww, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.x, c1.w
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c7.xyyw, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.x, c1.w
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c7.zyww, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.x, c1.w
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c6.xyyw, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.x, c1.w
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c6.zyww, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.x, c1.w
    add r5.w, r5.w, r6.w
    mad r7.xz, r7.y, c5.xyyw, r5.xyyw
    texld r8, r7.xzzw, s15
    add r6.w, r5.z, -r8.x
    cmp r6.w, r6.w, c1.x, c1.w
    add r5.w, r5.w, r6.w
    mad r5.xy, r7.y, c5.zwzw, r5
    texld r7, r5, s15
    add r5.x, r5.z, -r7.x
    cmp r5.x, r5.x, c1.x, c1.w
    add r5.x, r5.w, r5.x
    mad r2.w, r5.x, c0.w, r2.w
    add r0.w, r0.w, -c53.w
    cmp r5.xy, r0.w, c4, c4.zwzw
    add r0.w, r2.w, r5.y
    cmp_sat r0.w, r0.w, r2.w, r5.x
    mul r5.xyz, r6, r4.w
    mul r5.xyz, r0.w, r5
    mul r6.xyz, r6, r0.z
    mul r6.xyz, r0.w, r6
    mul r5.xyz, r5, c17.w
    mad r6.xyz, r3.yzww, r0.y, r6
    dp3 r0.y, r4, r2
    add r0.y, -r0_abs.y, c1.x
    mul r0.y, r0.y, r0.y
    mul r0.y, r0.y, r0.y
    mad_sat r0.y, r0.y, -c1.y, -c1.y
    mul r0.x, r0.x, r0.y
    mov r6.w, c1.x
    mul r1, r1, r6
    mad r0.xyz, r0.x, r5, r1
    mul oC0.w, r1.w, c39.x
    add r0.w, c16.w, -v1.w
    add r1.x, -c16.z, c16.w
    rcp r1.x, r1.x
    mul_sat r0.w, r0.w, r1.x
    add r0.w, -r0.w, c1.x
    add r1.xy, -r3.x, c16
    mul r1.y, r0.w, r1.y
    mad r0.w, r0.w, r1.x, c1.x
    dp3 r1.x, r0, c3
    lrp r2.xyz, r0.w, r0, r1.x
    add r0.x, r1.x, c3.w
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

// approximately 190 instruction slots used (16 texture, 174 arithmetic)
 