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
    def c0, -0.5, 0.5, 0.9, 1.5
    def c1, 0.0833333358, -0.100000001, 1.11111116, 0
    def c2, 0, -1, -0, 9.99999975e-006
    def c3, 640, 576, 0.349999994, 1
    def c4, 3.99600005, 4, 0.125, 0.25
    def c5, 1, -1, 0, -0
    def c6, 0, 0, 0, 0.5
    def c7, 0.2703204087, 0.4206267664, 0.4548159977, 0.2077075065
    def c8, 0.4949107209, -0.07115741914, 0.3778747872, -0.327430367
    def c9, 0.1408662784, -0.4797464868, -0.1408662784, -0.4797464868
    def c10, -0.3778747872, -0.327430367, -0.4949107209, -0.07115741914
    def c11, -0.4548159977, 0.2077075065, -0.2703204087, 0.4206267664
    def c98, 0.5, 2, 0.1, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_color v2.xyz
    dcl_texcoord6 v3.xyz
    dcl_texcoord8 v4.xyw
    dcl_texcoord7 v5
    dcl vPos.xy
    dcl_2d s0
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
    mul r0.xyz, r0, v2
    mad_sat r0.w, r2.z, c0.x, c0.y
    mov r1.xyz, c38
    mad r1.xyz, r1, r0.w, c37
    mul r3.xyz, c18.w, c18
    dp3 r0.w, r2, -c17
    mul_sat r0.w, r0.w, c0.z
    mul r4.xyz, c61.xyww, v3.y
    mad r4.xyz, v3.x, c60.xyww, r4
    mad r4.xyz, v3.z, c62.xyww, r4
    add r4.xyz, r4, c63.xyww
    dp3 r1.w, c14, v3
    add r5.xyz, -r1.w, -c54
    cmp r5.yzw, r5.xxyz, -c2.y, -c2.z
    mov r5.x, -c2.y
    dp4 r6.x, r5, c57
    dp4 r6.y, r5, c58
    dp4 r7.x, r5, c59
    dp4 r7.y, r5, c56
    mad r4.xy, r4, r6, r7
    add r5.xyz, c15, -v3
    dp3 r1.w, r5, r5
    rsq r1.w, r1.w
    rcp r1.w, r1.w
    rcp r2.w, c53.w
    mul r2.w, r1.w, r2.w
    mul r2.w, r2.w, r2.w
    mul r2.w, r2.w, r0.w
    mov r5.y, c53.y
    add r4.z, r4.z, -c98.z
    mad r5.xz, r5.y, c11.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r3.w, r4.z, -r6.x
    cmp r3.w, r3.w, -c2.y, -c2.z
    mad r5.xz, r5.y, c11.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r4.w, r4.z, -r6.x
    cmp r4.w, r4.w, -c2.y, -c2.z
    add r3.w, r3.w, r4.w
    mad r5.xz, r5.y, c10.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r4.w, r4.z, -r6.x
    cmp r4.w, r4.w, -c2.y, -c2.z
    add r3.w, r3.w, r4.w
    mad r5.xz, r5.y, c10.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r4.w, r4.z, -r6.x
    cmp r4.w, r4.w, -c2.y, -c2.z
    add r3.w, r3.w, r4.w
    mad r5.xz, r5.y, c9.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r4.w, r4.z, -r6.x
    cmp r4.w, r4.w, -c2.y, -c2.z
    add r3.w, r3.w, r4.w
    mad r5.xz, r5.y, c9.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r4.w, r4.z, -r6.x
    cmp r4.w, r4.w, -c2.y, -c2.z
    add r3.w, r3.w, r4.w
    mad r5.xz, r5.y, c8.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r4.w, r4.z, -r6.x
    cmp r4.w, r4.w, -c2.y, -c2.z
    add r3.w, r3.w, r4.w
    mad r5.xz, r5.y, c8.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r4.w, r4.z, -r6.x
    cmp r4.w, r4.w, -c2.y, -c2.z
    add r3.w, r3.w, r4.w
    mad r5.xz, r5.y, c7.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r4.w, r4.z, -r6.x
    cmp r4.w, r4.w, -c2.y, -c2.z
    add r3.w, r3.w, r4.w
    mad r5.xz, r5.y, c7.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r4.w, r4.z, -r6.x
    cmp r4.w, r4.w, -c2.y, -c2.z
    add r3.w, r3.w, r4.w
    mad r5.xz, r5.y, c6.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r4.w, r4.z, -r6.x
    cmp r4.w, r4.w, -c2.y, -c2.z
    add r3.w, r3.w, r4.w
    mad r4.xy, r5.y, c6.zwzw, r4
    texld r5, r4, s15
    add r4.x, r4.z, -r5.x
    cmp r4.x, r4.x, -c2.y, -c2.z
    add r3.w, r3.w, r4.x
    mad r2.w, r3.w, c1.x, r2.w
    add r1.w, r1.w, -c53.w
    cmp r4.xy, r1.w, c5, c5.zwzw
    add r1.w, r2.w, r4.y
    cmp_sat r1.w, r1.w, r2.w, r4.x
    mul r3.xyz, r3, r0.w
    mul r3.xyz, r1.w, r3
    mad r1.xyz, r1, v2.x, r3
    add r3, c19, -v3.x
    add r4, c20, -v3.y
    add r5, c21, -v3.z
    mul r6, r3, r3
    mad r6, r4, r4, r6
    mad r6, r5, r5, r6
    add r7, r6, c2.w
    rsq r8.x, r7.x
    rsq r8.y, r7.y
    rsq r8.z, r7.z
    rsq r8.w, r7.w
    mov r7.y, c2.y
    mad r6, r6, -c25, -r7.y
    max r9, r6, c2.x
    mul r6, r9, r9
    mad r6, r6, r6, c1.y
    mul r9, r6, c1.z
    cmp r6, r6, r9, c2.x
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
    add r8, r6, c2.w
    rsq r9.x, r8.x
    rsq r9.y, r8.y
    rsq r9.z, r8.z
    rsq r9.w, r8.w
    mad r6, r6, -c36, -r7.y
    max r7, r6, c2.x
    mul r6, r7, r7
    mad r6, r6, r6, c1.y
    mul r7, r6, c1.z
    cmp r6, r6, r7, c2.x
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
    mul oC0.xyz, r0, r1
    rcp r0.x, v5.w
    mul r0.xy, r0.x, v5
    rcp r0.z, v4.w
    mul r0.zw, r0.z, v4.xyxy
    mul r0.zw, r0, c3.xyxy
    mad r0.xy, r0, c3, -r0.zwzw
    dp2add r0.x, r0, r0, c2.x
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    mad r0.x, r0.x, -c3.z, c3.w
    mul r0.y, r0.x, v5.z
    mul r0.y, r0.y, c39.x
    cmp oC0.w, r0.x, r0.y, c2.x

// approximately 200 instruction slots used (15 texture, 185 arithmetic)
