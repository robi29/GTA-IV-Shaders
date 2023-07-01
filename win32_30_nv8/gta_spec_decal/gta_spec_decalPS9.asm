//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D SpecSampler;
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
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
//   specMapIntMask       c73      1
//   TextureSampler       s0       1
//   SpecSampler          s1       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, 0, -1, -0, 9.99999975e-006
    def c1, -0.5, 0.5, 0.9, 9.99999975e-005
    def c2, 1.5, -0.4548159977, 0.2077075065, 0.0833333358
    def c3, 3.99600005, 4, 0.125, 0.25
    def c4, 0.212500006, 0.715399981, 0.0720999986, 0
    def c5, 0, 0.5, 1.00000001e-007, 0
    def c6, 1, -1, 0, -0
    def c7, 0.4548159977, 0.2077075065, 0, 0
    def c8, 0.3778747872, -0.327430367, 0.2703204087, 0.4206267664
    def c9, -0.1408662784, -0.4797464868, 0.4949107209, -0.07115741914
    def c10, -0.4949107209, -0.07115741914, 0.1408662784, -0.4797464868
    def c11, -0.2703204087, 0.4206267664, -0.3778747872, -0.327430367
    def c98, 0.5, 2, 0.1, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord3 v2.xyz
    dcl_color v3.xw
    dcl_texcoord6 v4.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s10
    dcl_2d s15
    mov_sat r0.x, c39.x
    mul r0.x, r0.x, c3.x
    frc r0.y, r0.x
    mul r0.z, r0.y, c3.y
    frc r0.w, r0.z
    add r1.xy, r0.zxzw, -r0.wyzw
    mul r0.xy, c3.z, vPos
    frc r0.xy, r0_abs
    cmp r0.xy, vPos, r0, -r0
    mul r0.xy, r0, c3.w
    mad r0.xy, r1, c3.w, r0
    mov r0.zw, c0.x
    texldl r0, r0, s10
    cmp r0, -r0.y, c0.y, c0.z
    texkill r0
    texld r0, v0, s0
    add r1.xyz, c0.w, v1
    nrm r2.xyz, r1
    texld r1, v0, s1
    dp3 r1.x, r1, c73
    mul r1.x, r1.x, c72.x
    mul r0.w, r0.w, v3.w
    add r3.xyz, c0.w, v2
    nrm r4.xyz, r3
    mad_sat r1.y, r2.z, c1.x, c1.y
    mov r3.xyz, c38
    mad r3.xyz, r3, r1.y, c37
    dp3 r1.y, -r4, r2
    add r1.y, r1.y, r1.y
    mad r4.xyz, r2, -r1.y, -r4
    mul r5.xyz, c18.w, c18
    dp3 r1.y, r2, -c17
    mul_sat r1.y, r1.y, c1.z
    dp3_sat r1.z, -c17, r4
    add r1.z, r1.z, c1.w
    mov r2.w, c1.w
    mad r1.w, r1.w, c66.x, r2.w
    pow r2.x, r1.z, r1.w
    mul r2.yzw, c61.xxyw, v4.y
    mad r2.yzw, v4.x, c60.xxyw, r2
    mad r2.yzw, v4.z, c62.xxyw, r2
    add r2.yzw, r2, c63.xxyw
    dp3 r1.z, c14, v4
    add r4.xyz, -r1.z, -c54
    cmp r4.yzw, r4.xxyz, -c0.y, -c0.z
    mov r4.x, -c0.y
    dp4 r6.x, r4, c57
    dp4 r6.y, r4, c58
    dp4 r7.x, r4, c59
    dp4 r7.y, r4, c56
    mad r1.zw, r2.xyyz, r6.xyxy, r7.xyxy
    add r4.xyz, c15, -v4
    dp3 r2.y, r4, r4
    rsq r2.y, r2.y
    rcp r2.y, r2.y
    rcp r2.z, c53.w
    mul r2.z, r2.y, r2.z
    mul r2.z, r2.z, r2.z
    mul r2.z, r2.z, c2.x
    mov r4.y, c53.y
    add r2.w, r2.w, -c98.z
    mad r4.xz, r4.y, c2.yyzw, r1.zyww
    texld r6, r4.xzzw, s15
    add r3.w, r2.w, -r6.x
    cmp r3.w, r3.w, -c0.y, -c0.z
    mad r4.xz, r4.y, c11.xyyw, r1.zyww
    texld r6, r4.xzzw, s15
    add r4.x, r2.w, -r6.x
    cmp r4.x, r4.x, -c0.y, -c0.z
    add r3.w, r3.w, r4.x
    mad r4.xz, r4.y, c11.zyww, r1.zyww
    texld r6, r4.xzzw, s15
    add r4.x, r2.w, -r6.x
    cmp r4.x, r4.x, -c0.y, -c0.z
    add r3.w, r3.w, r4.x
    mad r4.xz, r4.y, c10.xyyw, r1.zyww
    texld r6, r4.xzzw, s15
    add r4.x, r2.w, -r6.x
    cmp r4.x, r4.x, -c0.y, -c0.z
    add r3.w, r3.w, r4.x
    mad r4.xz, r4.y, c10.zyww, r1.zyww
    texld r6, r4.xzzw, s15
    add r4.x, r2.w, -r6.x
    cmp r4.x, r4.x, -c0.y, -c0.z
    add r3.w, r3.w, r4.x
    mad r4.xz, r4.y, c9.xyyw, r1.zyww
    texld r6, r4.xzzw, s15
    add r4.x, r2.w, -r6.x
    cmp r4.x, r4.x, -c0.y, -c0.z
    add r3.w, r3.w, r4.x
    mad r4.xz, r4.y, c9.zyww, r1.zyww
    texld r6, r4.xzzw, s15
    add r4.x, r2.w, -r6.x
    cmp r4.x, r4.x, -c0.y, -c0.z
    add r3.w, r3.w, r4.x
    mad r4.xz, r4.y, c8.xyyw, r1.zyww
    texld r6, r4.xzzw, s15
    add r4.x, r2.w, -r6.x
    cmp r4.x, r4.x, -c0.y, -c0.z
    add r3.w, r3.w, r4.x
    mad r4.xz, r4.y, c8.zyww, r1.zyww
    texld r6, r4.xzzw, s15
    add r4.x, r2.w, -r6.x
    cmp r4.x, r4.x, -c0.y, -c0.z
    add r3.w, r3.w, r4.x
    mad r4.xz, r4.y, c7.xyyw, r1.zyww
    texld r6, r4.xzzw, s15
    add r4.x, r2.w, -r6.x
    cmp r4.x, r4.x, -c0.y, -c0.z
    add r3.w, r3.w, r4.x
    mad r4.xz, r4.y, c7.zyww, r1.zyww
    texld r6, r4.xzzw, s15
    add r4.x, r2.w, -r6.x
    cmp r4.x, r4.x, -c0.y, -c0.z
    add r3.w, r3.w, r4.x
    mad r1.zw, r4.y, c5.xyxy, r1
    texld r4, r1.zwzw, s15
    add r1.z, r2.w, -r4.x
    cmp r1.z, r1.z, -c0.y, -c0.z
    add r1.z, r3.w, r1.z
    mad r1.z, r1.z, c2.w, r2.z
    add r1.w, r2.y, -c53.w
    cmp r2.yz, r1.w, c6.xxyw, c6.xzww
    add r1.w, r1.z, r2.z
    cmp_sat r1.z, r1.w, r1.z, r2.y
    mul r2.xyz, r5, r2.x
    mul r2.xyz, r1.z, r2
    mul r4.xyz, r5, r1.y
    mul r1.yzw, r1.z, r4.xxyz
    mul r2.xyz, r2, c17.w
    mad r3.xyz, r3, v3.x, r1.yzww
    mov r3.w, -c0.y
    mul r0, r0, r3
    mad r0.xyz, r1.x, r2, r0
    mul oC0.w, r0.w, c39.x
    add r0.w, c16.w, -v1.w
    add r1.x, -c16.z, c16.w
    rcp r1.x, r1.x
    mul_sat r0.w, r0.w, r1.x
    add r0.w, -r0.w, -c0.y
    mov r1.y, c0.y
    add r1.xy, r1.y, c16
    mul r1.y, r0.w, r1.y
    mad r0.w, r0.w, r1.x, -c0.y
    dp3 r1.x, r0, c4
    lrp r2.xyz, r0.w, r0, r1.x
    add r0.x, r1.x, c5.z
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

// approximately 171 instruction slots used (16 texture, 155 arithmetic)
