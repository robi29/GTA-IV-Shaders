//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D EnvironmentSampler;
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
//   float reflectivePower;
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
//   reflectivePower      c73      1
//   TextureSampler       s0       1
//   EnvironmentSampler   s1       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, -0.5, -0.00999999978, 100, 0.5
    def c1, 1.33333337, 9.99999975e-005, 1.5, 0.0833333358
    def c2, 0, -1, -0, 9.99999975e-006
    def c3, -0.100000001, 1.11111116, 0, 0
    def c4, 3.99600005, 4, 0.125, 0.25
    def c5, 1, -1, 0, -0
    def c6, -0.321940005, -0.932614982, -0.791558981, -0.597710013
    def c7, 0.507430971, 0.0644249991, 0.896420002, 0.412458003
    def c8, 0.519456029, 0.767022014, 0.185461, -0.893123984
    def c9, 0.962339997, -0.194983006, 0.473434001, -0.480026007
    def c10, -0.69591397, 0.457136989, -0.203345001, 0.620715976
    def c11, -0.326211989, -0.405809999, -0.840143979, -0.0735799968
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_color v3
    dcl_texcoord6 v4.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
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
    mov r0.zw, c2.x
    texldl r0, r0, s10
    cmp r0, -r0.y, c2.y, c2.z
    texkill r0
    texld r0, v0, s0
    add r1.xyz, c2.w, v1
    nrm r2.xyz, r1
    add r1.xyz, c2.w, v2
    nrm r3.xyz, r1
    dp3 r1.x, -r3, r2
    add r1.x, r1.x, r1.x
    mad r1.xyz, r2, -r1.x, -r3
    add r3.xyz, r1, c2.w
    dp3 r1.w, r3, r3
    rsq r1.w, r1.w
    mad r3.xy, r3.xzzw, r1.w, -c2.y
    mul r3.xy, r3, c0.x
    texld r3, r3, s1
    mul r3.xyz, r3, c72.x
    mul r3.xyz, r3, c73.x
    mul r4, r0, v3
    mad r0.x, r0.w, v3.w, c0.y
    rcp r0.y, r4.w
    cmp r0.x, r0.x, r0.y, c0.z
    mad r4.xyz, r3, r0.x, r4
    mad_sat r0.x, r2.z, c0.x, c0.w
    mov r3.xyz, c38
    mad r0.xyz, r3, r0.x, c37
    mul r3.xyz, c18.w, c18
    dp3 r0.w, r2, -c17
    add r0.w, r0.w, -c4.w
    mul_sat r0.w, r0.w, c1.x
    dp3_sat r1.w, -c17, r1
    add r1.w, r1.w, c1.y
    mov r5.y, c1.y
    add r2.w, r5.y, c66.x
    pow r3.w, r1.w, r2.w
    mul r5.xyz, c61.xyww, v4.y
    mad r5.xyz, v4.x, c60.xyww, r5
    mad r5.xyz, v4.z, c62.xyww, r5
    add r5.xyz, r5, c63.xyww
    dp3 r1.w, c14, v4
    add r6.xyz, -r1.w, -c54
    cmp r6.yzw, r6.xxyz, -c2.y, -c2.z
    mov r6.x, -c2.y
    dp4 r7.x, r6, c57
    dp4 r7.y, r6, c58
    dp4 r8.x, r6, c59
    dp4 r8.y, r6, c56
    mad r5.xy, r5, r7, r8
    add r6.xyz, c15, -v4
    dp3 r1.w, r6, r6
    rsq r1.w, r1.w
    rcp r1.w, r1.w
    rcp r2.w, c53.w
    mul r2.w, r1.w, r2.w
    mul r2.w, r2.w, r2.w
    mul r2.w, r2.w, c1.z
    mov r6.y, c53.y
    mad r6.xz, r6.y, c11.xyyw, r5.xyyw
    texld r7, r6.xzzw, s15
    add r5.w, r5.z, -r7.x
    cmp r5.w, r5.w, -c2.y, -c2.z
    mad r6.xz, r6.y, c11.zyww, r5.xyyw
    texld r7, r6.xzzw, s15
    add r6.x, r5.z, -r7.x
    cmp r6.x, r6.x, -c2.y, -c2.z
    add r5.w, r5.w, r6.x
    mad r6.xz, r6.y, c10.xyyw, r5.xyyw
    texld r7, r6.xzzw, s15
    add r6.x, r5.z, -r7.x
    cmp r6.x, r6.x, -c2.y, -c2.z
    add r5.w, r5.w, r6.x
    mad r6.xz, r6.y, c10.zyww, r5.xyyw
    texld r7, r6.xzzw, s15
    add r6.x, r5.z, -r7.x
    cmp r6.x, r6.x, -c2.y, -c2.z
    add r5.w, r5.w, r6.x
    mad r6.xz, r6.y, c9.xyyw, r5.xyyw
    texld r7, r6.xzzw, s15
    add r6.x, r5.z, -r7.x
    cmp r6.x, r6.x, -c2.y, -c2.z
    add r5.w, r5.w, r6.x
    mad r6.xz, r6.y, c9.zyww, r5.xyyw
    texld r7, r6.xzzw, s15
    add r6.x, r5.z, -r7.x
    cmp r6.x, r6.x, -c2.y, -c2.z
    add r5.w, r5.w, r6.x
    mad r6.xz, r6.y, c8.xyyw, r5.xyyw
    texld r7, r6.xzzw, s15
    add r6.x, r5.z, -r7.x
    cmp r6.x, r6.x, -c2.y, -c2.z
    add r5.w, r5.w, r6.x
    mad r6.xz, r6.y, c8.zyww, r5.xyyw
    texld r7, r6.xzzw, s15
    add r6.x, r5.z, -r7.x
    cmp r6.x, r6.x, -c2.y, -c2.z
    add r5.w, r5.w, r6.x
    mad r6.xz, r6.y, c7.xyyw, r5.xyyw
    texld r7, r6.xzzw, s15
    add r6.x, r5.z, -r7.x
    cmp r6.x, r6.x, -c2.y, -c2.z
    add r5.w, r5.w, r6.x
    mad r6.xz, r6.y, c7.zyww, r5.xyyw
    texld r7, r6.xzzw, s15
    add r6.x, r5.z, -r7.x
    cmp r6.x, r6.x, -c2.y, -c2.z
    add r5.w, r5.w, r6.x
    mad r6.xz, r6.y, c6.xyyw, r5.xyyw
    texld r7, r6.xzzw, s15
    add r6.x, r5.z, -r7.x
    cmp r6.x, r6.x, -c2.y, -c2.z
    add r5.w, r5.w, r6.x
    mad r5.xy, r6.y, c6.zwzw, r5
    texld r6, r5, s15
    add r5.x, r5.z, -r6.x
    cmp r5.x, r5.x, -c2.y, -c2.z
    add r5.x, r5.w, r5.x
    mad r2.w, r5.x, c1.w, r2.w
    add r1.w, r1.w, -c53.w
    cmp r5.xy, r1.w, c5, c5.zwzw
    add r1.w, r2.w, r5.y
    cmp_sat r1.w, r1.w, r2.w, r5.x
    mul r5.xyz, r3, r3.w
    mul r5.xyz, r1.w, r5
    mul r3.xyz, r3, r0.w
    mul r3.xyz, r1.w, r3
    mad r0.xyz, r0, v3.x, r3
    mov r0.w, c4.w
    mul r0.w, r0.w, c66.x
    add r3, c19, -v4.x
    add r6, c20, -v4.y
    add r7, c21, -v4.z
    mul r8, r3, r3
    mad r8, r6, r6, r8
    mad r8, r7, r7, r8
    add r9, r8, c2.w
    rsq r10.x, r9.x
    rsq r10.y, r9.y
    rsq r10.z, r9.z
    rsq r10.w, r9.w
    mov r9.y, c2.y
    mad r8, r8, -c25, -r9.y
    max r11, r8, c2.x
    mul r8, r11, r11
    mad r8, r8, r8, c3.x
    mul r11, r8, c3.y
    cmp r8, r8, r11, c2.x
    mul r11, r2.x, r3
    mad r11, r6, r2.y, r11
    mad r11, r7, r2.z, r11
    mul r8, r8, r11
    mul_sat r8, r10, r8
    mul r11, r3, -c22
    mad r11, r6, -c23, r11
    mad r11, r7, -c24, r11
    mul r11, r10, r11
    mov r12, c26
    mad_sat r11, r11, r12, c27
    mul r8, r8, r11
    mul r3, r1.x, r3
    mad r3, r1.y, r6, r3
    mad r3, r1.z, r7, r3
    mul r3, r10, r3
    log r6.x, r3_abs.x
    log r6.y, r3_abs.y
    log r6.z, r3_abs.z
    log r6.w, r3_abs.w
    mul r3, r0.w, r6
    exp r6.x, r3.x
    exp r6.y, r3.y
    exp r6.z, r3.z
    exp r6.w, r3.w
    mul r3, r8, r6
    dp4 r6.x, c29, r8
    dp4 r6.y, c30, r8
    dp4 r6.z, c31, r8
    dp4 r7.x, c29, r3
    dp4 r7.y, c30, r3
    dp4 r7.z, c31, r3
    add r0.xyz, r0, r6
    mad r3.xyz, r5, c17.w, r7
    add r5, c32, -v4.x
    add r6, c33, -v4.y
    add r7, c34, -v4.z
    mul r8, r5, r5
    mad r8, r6, r6, r8
    mad r8, r7, r7, r8
    add r10, r8, c2.w
    rsq r11.x, r10.x
    rsq r11.y, r10.y
    rsq r11.z, r10.z
    rsq r11.w, r10.w
    mad r8, r8, -c36, -r9.y
    max r9, r8, c2.x
    mul r8, r9, r9
    mad r8, r8, r8, c3.x
    mul r9, r8, c3.y
    cmp r8, r8, r9, c2.x
    mul r9, r2.x, r5
    mad r9, r6, r2.y, r9
    mad r2, r7, r2.z, r9
    mul r2, r8, r2
    mul_sat r2, r11, r2
    mul r8, r5, -c67
    mad r8, r6, -c68, r8
    mad r8, r7, -c69, r8
    mul r8, r11, r8
    mov r9, c70
    mad_sat r8, r8, r9, c71
    mul r2, r2, r8
    mul r5, r1.x, r5
    mad r5, r1.y, r6, r5
    mad r1, r1.z, r7, r5
    mul r1, r11, r1
    log r5.x, r1_abs.x
    log r5.y, r1_abs.y
    log r5.z, r1_abs.z
    log r5.w, r1_abs.w
    mul r1, r0.w, r5
    exp r5.x, r1.x
    exp r5.y, r1.y
    exp r5.z, r1.z
    exp r5.w, r1.w
    mul r1, r2, r5
    dp4 r5.x, c35, r2
    dp4 r5.y, c64, r2
    dp4 r5.z, c65, r2
    dp4 r2.x, c35, r1
    dp4 r2.y, c64, r1
    dp4 r2.z, c65, r1
    add r0.xyz, r0, r5
    add r1.xyz, r3, r2
    mov r0.w, -c2.y
    mul r0, r4, r0
    mad oC0.xyz, c72.x, r1, r0
    mul oC0.w, r0.w, c39.x

// approximately 255 instruction slots used (16 texture, 239 arithmetic)
 