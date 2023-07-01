//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D EnvironmentSampler;
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float bumpiness;
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
//   specularFactor       c66      1
//   specularColorFactor  c72      1
//   bumpiness            c73      1
//   reflectivePower      c74      1
//   TextureSampler       s0       1
//   BumpSampler          s1       1
//   EnvironmentSampler   s2       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, 0, -1, -0, 1
    def c1, -0.5, 9.99999975e-006, -0.00999999978, 100
    def c2, -0.5, 0.5, 0.9, 9.99999975e-005
    def c3, 1.5, -0.4548159977, 0.2077075065, 0.0833333358
    def c4, 3.99600005, 4, 0.125, 0.25
    def c5, 0.212500006, 0.715399981, 0.0720999986, 0
    def c6, 0, 0.5, 1.00000001e-007, 0
    def c7, 0.4548159977, 0.2077075065, 0, 0
    def c8, 0.3778747872, -0.327430367, 0.2703204087, 0.4206267664
    def c9, -0.1408662784, -0.4797464868, 0.4949107209, -0.07115741914
    def c10, -0.4949107209, -0.07115741914, 0.1408662784, -0.4797464868
    def c11, -0.2703204087, 0.4206267664, -0.3778747872, -0.327430367
    def c98, 0.5, 2, 0.1, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3.xyz
    dcl_texcoord5 v4.xyz
    dcl_color v5.xw
    dcl_texcoord6 v6.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
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
    mov r0.zw, c0.x
    texldl r0, r0, s10
    cmp r0, -r0.y, c0.y, c0.z
    texkill r0
    texld r0, v0, s1
    add r0.z, -r0.w, c0.w
    add r0.z, -r0.x, r0.z
    cmp r0.xy, r0.z, r0.wyzw, r0
    texld r1, v0, s0
    add r0.zw, r0.xyxy, c1.x
    mul r0.zw, r0, c73.x
    dp2add r0.x, r0, -r0, c0.w
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    mul r2.xyz, r0.z, v3
    mad r0.xyz, v1, r0.x, r2
    mad r0.xyz, r0.w, v4, r0
    add r0.xyz, r0, c1.y
    nrm r2.xyz, r0
    add r0.xyz, c1.y, v2
    nrm r3.xyz, r0
    dp3 r0.x, -r3, r2
    add r0.x, r0.x, r0.x
    mad r0.xyz, r2, -r0.x, -r3
    add r3.xyz, r0, c1.y
    dp3 r0.w, r3, r3
    rsq r0.w, r0.w
    mad r3.xy, r3.xzzw, r0.w, c0.w
    mul r3.xy, r3, c1.x
    texld r3, r3, s2
    mul r3.xyz, r3, c72.x
    mul r3.xyz, r3, c74.x
    mul r4.w, r1.w, v5.w
    mad r0.w, r1.w, v5.w, c1.z
    rcp r1.w, r4.w
    cmp r0.w, r0.w, r1.w, c1.w
    mad r4.xyz, r3, r0.w, r1
    mad_sat r0.w, r2.z, c2.x, c2.y
    mov r1.xyz, c38
    mad r1.xyz, r1, r0.w, c37
    mul r3.xyz, c18.w, c18
    dp3 r0.w, r2, -c17
    mul_sat r0.w, r0.w, c2.z
    dp3_sat r0.x, -c17, r0
    add r0.x, r0.x, c2.w
    mov r1.w, c2.w
    add r0.y, r1.w, c66.x
    pow r1.w, r0.x, r0.y
    mul r0.xyz, c61.xyww, v6.y
    mad r0.xyz, v6.x, c60.xyww, r0
    mad r0.xyz, v6.z, c62.xyww, r0
    add r0.xyz, r0, c63.xyww
    dp3 r2.x, c14, v6
    add r2.xyz, -r2.x, -c54
    cmp r2.yzw, r2.xxyz, c0.w, c0.x
    mov r2.x, c0.w
    dp4 r5.x, r2, c57
    dp4 r5.y, r2, c58
    dp4 r6.x, r2, c59
    dp4 r6.y, r2, c56
    mad r0.xy, r0, r5, r6
    add r2.xyz, c15, -v6
    dp3 r2.x, r2, r2
    rsq r2.x, r2.x
    rcp r2.x, r2.x
    rcp r2.y, c53.w
    mul r2.y, r2.x, r2.y
    mul r2.y, r2.y, r2.y
    mul r2.y, r2.y, c3.x
    mov r5.y, c53.y
    add r0.z, r0.z, -c98.z
    mad r2.zw, r5.y, c3.xyyz, r0.xyxy
    texld r6, r2.zwzw, s15
    add r2.z, r0.z, -r6.x
    cmp r2.z, r2.z, c0.w, c0.x
    mad r5.xz, r5.y, c11.xyyw, r0.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r0.z, -r6.x
    cmp r2.w, r2.w, c0.w, c0.x
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c11.zyww, r0.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r0.z, -r6.x
    cmp r2.w, r2.w, c0.w, c0.x
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c10.xyyw, r0.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r0.z, -r6.x
    cmp r2.w, r2.w, c0.w, c0.x
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c10.zyww, r0.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r0.z, -r6.x
    cmp r2.w, r2.w, c0.w, c0.x
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c9.xyyw, r0.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r0.z, -r6.x
    cmp r2.w, r2.w, c0.w, c0.x
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c9.zyww, r0.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r0.z, -r6.x
    cmp r2.w, r2.w, c0.w, c0.x
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c8.xyyw, r0.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r0.z, -r6.x
    cmp r2.w, r2.w, c0.w, c0.x
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c8.zyww, r0.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r0.z, -r6.x
    cmp r2.w, r2.w, c0.w, c0.x
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c7.xyyw, r0.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r0.z, -r6.x
    cmp r2.w, r2.w, c0.w, c0.x
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c7.zyww, r0.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r0.z, -r6.x
    cmp r2.w, r2.w, c0.w, c0.x
    add r2.z, r2.z, r2.w
    mad r0.xy, r5.y, c6, r0
    texld r5, r0, s15
    add r0.x, r0.z, -r5.x
    cmp r0.x, r0.x, c0.w, c0.x
    add r0.x, r2.z, r0.x
    mad r0.x, r0.x, c3.w, r2.y
    add r0.y, r2.x, -c53.w
    cmp r0.yz, r0.y, c0.xwyw, c0.xxzw
    add r0.z, r0.x, r0.z
    cmp_sat r0.x, r0.z, r0.x, r0.y
    mul r2.xyz, r3, r1.w
    mul r2.xyz, r0.x, r2
    mul r0.yzw, r3.xxyz, r0.w
    mul r0.xyz, r0.x, r0.yzww
    mul r2.xyz, r2, c17.w
    mad r0.xyz, r1, v5.x, r0
    mov r0.w, c0.w
    mul r0, r4, r0
    mad r0.xyz, c72.x, r2, r0
    mul oC0.w, r0.w, c39.x
    add r0.w, c16.w, -v1.w
    add r1.x, -c16.z, c16.w
    rcp r1.x, r1.x
    mul_sat r0.w, r0.w, r1.x
    add r0.w, -r0.w, c0.w
    mov r1.y, c0.y
    add r1.xy, r1.y, c16
    mul r1.y, r0.w, r1.y
    mad r0.w, r0.w, r1.x, c0.w
    dp3 r1.x, r0, c5
    lrp r2.xyz, r0.w, r0, r1.x
    add r0.x, r1.x, c6.z
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

// approximately 193 instruction slots used (17 texture, 176 arithmetic)
