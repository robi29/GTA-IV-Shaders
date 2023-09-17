//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float4 NearFarPlane;
//   float gAmbientAmount;
//   float4 gAspectRatio;
//   float gBiasToCamera;
//   float4 gDepthFxParams;
//   float gDiffuse;
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
//   float gNormalArc;
//   float gScaleFade;
//   row_major float4x4 gShadowMatrix;
//   float4 gShadowParam0123;
//   float4 gShadowParam14151617;
//   float4 gShadowParam4567;
//   float4 gShadowParam891113;
//   sampler2D gShadowZSamplerDirVS;
//   float gSuperAlpha;
//   float gUseShadows;
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorldView;
//   row_major float4x4 gWorldViewProj;
//   float gWrapBias;
//   float gWrapScale;
//   float4 globalFogColor;
//   float4 globalFogColorN;
//   float4 globalFogParams;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gWorldView           c4       4
//   gWorldViewProj       c8       4
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
//   globalFogParams      c41      1
//   globalFogColor       c42      1
//   globalFogColorN      c43      1
//   gAspectRatio         c47      1
//   gFacetCentre         c54      1
//   gShadowParam14151617 c56      1
//   gShadowParam0123     c57      1
//   gShadowParam4567     c58      1
//   gShadowParam891113   c59      1
//   gShadowMatrix        c60      4
//   gBiasToCamera        c64      1
//   gWrapScale           c65      1
//   gWrapBias            c66      1
//   gDiffuse             c67      1
//   gAmbientAmount       c68      1
//   gSuperAlpha          c69      1
//   gNormalArc           c70      1
//   gScaleFade           c71      1
//   gUseShadows          c72      1
//   NearFarPlane         c128     1
//   gShadowZSamplerDirVS s3       1
//

    vs_3_0
    def c0, 0.100000001, 9.99999997e-007, 0.159154937, 0.5
    def c1, 6.28318548, -3.14159274, 0, 9.99999975e-006
    def c2, -1, 0, 1, 1.11111116
    def c3, 0.111111112, 0, 0, 0
    def c12, 0.5, 0, -0.5, 0.25
    dcl_position v0
    dcl_normal v1
    dcl_color v2
    dcl_texcoord v3
    dcl_texcoord1 v4
    dcl_texcoord2 v5
    dcl_texcoord3 v6
    dcl_2d s3
    dcl_position o0
    dcl_texcoord9 o10
    dcl_color o1
    dcl_texcoord o2
    dcl_texcoord1 o3
    dcl_texcoord2 o4
    dcl_texcoord3 o5
    dcl_texcoord4 o6
    mov r0.x, c0.x
    mul r0.x, r0.x, c64.x
    lrp r1.xyz, r0.x, c15, v0
    mul r0, r1.y, c9
    mad r0, r1.x, c8, r0
    mad r0, r1.z, c10, r0
    add r0, r0, c11
    rcp r1.w, c71.x
    add r2.x, r0.w, -c128.x
    mul_sat r1.w, r1.w, r2.x
    sge r2.x, c0.y, v2.w
    mad r1.w, r2.x, -r1.w, r1.w
    mul r2, r1.w, v1.xyxy
    mul r1.w, r1.w, v2.w
    mad r3.x, v1.z, c0.z, c0.w
    frc r3.x, r3.x
    mad r3.x, r3.x, c1.x, c1.y
    sincos r4.xy, r3.x
    mul r3.xyz, r2.yzww, r4.yyxw
    mad r4.x, r2.x, r4.x, -r3.x
    add r4.y, r3.z, r3.y
    mov r4.zw, c1.z
    mul r2.xy, r4, c47
    mad r0, r4, c47, r0
    mul r3.xyz, r1.y, c5
    mad r3.xyz, r1.x, c4, r3
    mad r3.xyz, r1.z, c6, r3
    add r3.xyz, r3, c7
    add r5.xyz, -r3, c1.w
    nrm r6.xyz, r5
    mul r5.xyz, r6.zxyw, c2.xyyw
    mad r5.xyz, r6.yzxw, c2.yyxw, -r5
    add r5.xyz, r5, c1.w
    nrm r7.xyz, r5
    mul r5.xyz, r6.zxyw, r7.yzxw
    mad r5.xyz, r6.yzxw, r7.zxyw, -r5
    mul r2.xy, r2, r2
    add r2.x, r2.y, r2.x
    rsq r2.x, r2.x
    rcp r2.x, r2.x
    slt r2.x, -r2.x, r2.x
    mov r3.w, c1.w
    mad r4.xy, r4, c47, r3.w
    mul r4.zw, r4.xyxy, r4.xyxy
    add r2.y, r4.w, r4.z
    rsq r2.y, r2.y
    mul r4.xy, r4, r2.y
    mul r2.xy, r2.x, r4
    mul r4.xyz, r5, r2.y
    mad r4.xyz, r7, r2.x, r4
    mad r4.xyz, r6, c70.x, r4
    dp3 r2.x, r4, r4
    rsq r2.x, r2.x
    rcp r2.x, r2.x
    slt r2.x, -r2.x, r2.x
    add r5.xyz, r4, c1.w
    dp3 r2.y, r5, r5
    rsq r2.y, r2.y
    lrp r5.xyz, r2.y, c1.w, -r4
    mad r4.xyz, r2.x, r5, r4
    add r5, -r3.x, c19
    add r6, -r3.y, c20
    add r3, -r3.z, c21
    mul r7, r5, r5
    mad r7, r6, r6, r7
    mad r7, r3, r3, r7
    add r8, r7, c1.w
    rsq r9.x, r8.x
    rsq r9.y, r8.y
    rsq r9.z, r8.z
    rsq r9.w, r8.w
    mov r8.xz, c2
    mad r7, r7, -c25, r8.z
    max r7, r7, c1.z
    mul r7, r7, r7
    mad r7, r7, r7, -c0.x
    max r7, r7, c1.z
    mul r7, r9, r7
    mul r7, r7, c2.w
    min r7, r7, c2.z
    mul r10, r5, -c22
    mad r10, r6, -c23, r10
    mad r10, r3, -c24, r10
    mul r10, r9, r10
    mov r11, c26
    mad_sat r10, r10, r11, c27
    mul r7, r7, r10
    mul r7, r9, r7
    mul r5, r5, r7
    mul r6, r6, r7
    mul r3, r3, r7
    mul r2.x, r7.x, c66.x
    add r2.y, r8.x, c72.x
    if_ge -r2_abs.y, r2_abs.y
      add r2.y, r2.w, r2.z
      mul r7.xyz, r1.y, c61.xyww
      mad r7.xyz, r1.x, c60.xyww, r7
      mad r7.xyz, r1.z, c62.xyww, r7
      add r7.xyz, r7, c63.xyww
      dp3 r2.z, c14, r1
      sge r9.yzw, -r2.z, c54.xxyz
      mov r9.x, c2.z
      dp4 r10.x, r9, c57
      dp4 r10.y, r9, c58
      dp4 r11.x, r9, c59
      dp4 r11.y, r9, c56
      mad r9.xy, r7, r10, r11
      mov r9.zw, c1.z
      texldl r9, r9, s3
      add r2.z, -r7.z, r9.x
      slt r2.z, r2.z, c1.z
      mad r7.xyz, r2.y, c12.xxyw, r1
      mul r8.yzw, r7.y, c61.xxyw
      mad r8.yzw, r7.x, c60.xxyw, r8
      mad r8.yzw, r7.z, c62.xxyw, r8
      add r8.yzw, r8, c63.xxyw
      dp3 r2.w, c14, r7
      sge r7.yzw, -r2.w, c54.xxyz
      mov r7.x, c2.z
      dp4 r9.x, r7, c57
      dp4 r9.y, r7, c58
      dp4 r10.x, r7, c59
      dp4 r10.y, r7, c56
      mad r7.xy, r8.yzzw, r9, r10
      mov r7.zw, c1.z
      texldl r7, r7, s3
      add r2.w, -r8.w, r7.x
      slt r2.w, r2.w, c1.z
      add r2.z, r2.z, r2.w
      mad r7.xyz, r2.y, c12.xzyw, r1
      mul r8.yzw, r7.y, c61.xxyw
      mad r8.yzw, r7.x, c60.xxyw, r8
      mad r8.yzw, r7.z, c62.xxyw, r8
      add r8.yzw, r8, c63.xxyw
      dp3 r2.w, c14, r7
      sge r7.yzw, -r2.w, c54.xxyz
      mov r7.x, c2.z
      dp4 r9.x, r7, c57
      dp4 r9.y, r7, c58
      dp4 r10.x, r7, c59
      dp4 r10.y, r7, c56
      mad r7.xy, r8.yzzw, r9, r10
      mov r7.zw, c1.z
      texldl r7, r7, s3
      add r2.w, -r8.w, r7.x
      slt r2.w, r2.w, c1.z
      add r2.z, r2.z, r2.w
      mad r7.xyz, r2.y, c12.zxyw, r1
      mul r8.yzw, r7.y, c61.xxyw
      mad r8.yzw, r7.x, c60.xxyw, r8
      mad r8.yzw, r7.z, c62.xxyw, r8
      add r8.yzw, r8, c63.xxyw
      dp3 r2.w, c14, r7
      sge r7.yzw, -r2.w, c54.xxyz
      mov r7.x, c2.z
      dp4 r9.x, r7, c57
      dp4 r9.y, r7, c58
      dp4 r10.x, r7, c59
      dp4 r10.y, r7, c56
      mad r7.xy, r8.yzzw, r9, r10
      mov r7.zw, c1.z
      texldl r7, r7, s3
      add r2.w, -r8.w, r7.x
      slt r2.w, r2.w, c1.z
      add r2.z, r2.z, r2.w
      mad r7.xyz, r2.y, c12.zzyw, r1
      mul r8.yzw, r7.y, c61.xxyw
      mad r8.yzw, r7.x, c60.xxyw, r8
      mad r8.yzw, r7.z, c62.xxyw, r8
      add r8.yzw, r8, c63.xxyw
      dp3 r2.w, c14, r7
      sge r7.yzw, -r2.w, c54.xxyz
      mov r7.x, c2.z
      dp4 r9.x, r7, c57
      dp4 r9.y, r7, c58
      dp4 r10.x, r7, c59
      dp4 r10.y, r7, c56
      mad r7.xy, r8.yzzw, r9, r10
      mov r7.zw, c1.z
      texldl r7, r7, s3
      add r2.w, -r8.w, r7.x
      slt r2.w, r2.w, c1.z
      add r2.z, r2.z, r2.w
      mad r7.xyz, r2.y, c12.xxww, r1
      mul r8.yzw, r7.y, c61.xxyw
      mad r8.yzw, r7.x, c60.xxyw, r8
      mad r8.yzw, r7.z, c62.xxyw, r8
      add r8.yzw, r8, c63.xxyw
      dp3 r2.w, c14, r7
      sge r7.yzw, -r2.w, c54.xxyz
      mov r7.x, c2.z
      dp4 r9.x, r7, c57
      dp4 r9.y, r7, c58
      dp4 r10.x, r7, c59
      dp4 r10.y, r7, c56
      mad r7.xy, r8.yzzw, r9, r10
      mov r7.zw, c1.z
      texldl r7, r7, s3
      add r2.w, -r8.w, r7.x
      slt r2.w, r2.w, c1.z
      add r2.z, r2.z, r2.w
      mad r7.xyz, r2.y, c12.xzww, r1
      mul r8.yzw, r7.y, c61.xxyw
      mad r8.yzw, r7.x, c60.xxyw, r8
      mad r8.yzw, r7.z, c62.xxyw, r8
      add r8.yzw, r8, c63.xxyw
      dp3 r2.w, c14, r7
      sge r7.yzw, -r2.w, c54.xxyz
      mov r7.x, c2.z
      dp4 r9.x, r7, c57
      dp4 r9.y, r7, c58
      dp4 r10.x, r7, c59
      dp4 r10.y, r7, c56
      mad r7.xy, r8.yzzw, r9, r10
      mov r7.zw, c1.z
      texldl r7, r7, s3
      add r2.w, -r8.w, r7.x
      slt r2.w, r2.w, c1.z
      add r2.z, r2.z, r2.w
      mad r7.xyz, r2.y, c12.zxww, r1
      mul r8.yzw, r7.y, c61.xxyw
      mad r8.yzw, r7.x, c60.xxyw, r8
      mad r8.yzw, r7.z, c62.xxyw, r8
      add r8.yzw, r8, c63.xxyw
      dp3 r2.w, c14, r7
      sge r7.yzw, -r2.w, c54.xxyz
      mov r7.x, c2.z
      dp4 r9.x, r7, c57
      dp4 r9.y, r7, c58
      dp4 r10.x, r7, c59
      dp4 r10.y, r7, c56
      mad r7.xy, r8.yzzw, r9, r10
      mov r7.zw, c1.z
      texldl r7, r7, s3
      add r2.w, -r8.w, r7.x
      slt r2.w, r2.w, c1.z
      add r2.z, r2.z, r2.w
      mad r1.xyz, r2.y, c12.zzww, r1
      mul r7.xyz, r1.y, c61.xyww
      mad r7.xyz, r1.x, c60.xyww, r7
      mad r7.xyz, r1.z, c62.xyww, r7
      add r7.xyz, r7, c63.xyww
      dp3 r1.x, c14, r1
      sge r9.yzw, -r1.x, c54.xxyz
      mov r9.x, c2.z
      dp4 r1.x, r9, c57
      dp4 r1.y, r9, c58
      dp4 r10.x, r9, c59
      dp4 r10.y, r9, c56
      mad r9.xy, r7, r1, r10
      mov r9.zw, c1.z
      texldl r9, r9, s3
      add r1.x, -r7.z, r9.x
      slt r1.x, r1.x, c1.z
      add r1.x, r2.z, r1.x
      mul r1.x, r1.x, c3.x
    else
      mov r1.x, c2.z
    endif
    dp3 r1.y, r4, -c17
    mad_sat r1.y, r1.y, c65.x, r2.x
    mul r2.xyz, r1.y, c18
    mul r2.xyz, r2, c18.w
    mul r5, r4.x, r5
    mad r5, r4.y, r6, r5
    mad_sat r3, r4.z, r3, r5
    dp4 r5.x, c29, r3
    dp4 r5.y, c30, r3
    dp4 r5.z, c31, r3
    mad r1.xyz, r2, r1.x, r5
    dp3 r2.x, r4, c6
    mad_sat r2.x, r2.x, c12.z, c12.x
    mov r3.xyz, c38
    mad r2.xyz, r3, r2.x, c37
    mad r1.xyz, r2, c68.x, r1
    mul r1.xyz, r1, c67.x
    mul o1.xyz, r1, v2
    mul_sat o1.w, r1.w, c69.x
    add r1.x, -r0.w, c16.w
    add r1.y, -c16.z, c16.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.x, r1.y
    add r1.x, -r1.x, c2.z
    add r1.yz, r8.x, c16.xxyw
    mad o3.zw, r1.x, r1.xyyz, c2.z
    rcp r1.x, c41.x
    mul_sat r1.x, r0.w, r1.x
    add r1.y, r0.w, -c41.x
    add r1.z, -c41.x, c41.y
    rcp r1.z, r1.z
    mul_sat r1.y, r1.y, r1.z
    lrp r2.x, c41.w, r1.x, r1.y
    add o5.w, r2.x, c41.z
    mov r2.xyz, c43
    add r1.xzw, -r2.xyyz, c42.xyyz
    mad o5.xyz, r1.y, r1.xzww, c43
    mov o0, r0
    mov o10.zw, r0
    mov o2, v3
    mov o3.xy, v4
    mul o4, c2.zyyy, v5.z
    mov o6, v6
    mov r20.x, c8.w
    add r20.x, r20.x, c9.w
    add r20.x, r20.x, c10.w
    add o10.y, r20.x, c11.w

// approximately 323 instruction slots used (18 texture, 305 arithmetic)
