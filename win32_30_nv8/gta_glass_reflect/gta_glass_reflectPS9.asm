//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D EnvironmentSampler;
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
//   reflectivePower      c73      1
//   TextureSampler       s0       1
//   EnvironmentSampler   s1       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, 0, -1, -0, 9.99999975e-006
    def c1, -0.5, -0.00999999978, 100, 0.5
    def c2, 1.33333337, 9.99999975e-005, 1.5, 0.0833333358
    def c3, 3.99600005, 4, 0.125, 0.25
    def c4, 0.212500006, 0.715399981, 0.0720999986, 1.00000001e-007
    def c5, 1, -1, 0, -0
    def c6, 0, 0, 0, 0.5
    def c7, 0.2703204087, 0.4206267664, 0.4548159977, 0.2077075065
    def c8, 0.4949107209, -0.07115741914, 0.3778747872, -0.327430367
    def c9, 0.1408662784, -0.4797464868, -0.1408662784, -0.4797464868
    def c10, -0.3778747872, -0.327430367, -0.4949107209, -0.07115741914
    def c11, -0.4548159977, 0.2077075065, -0.2703204087, 0.4206267664
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
    add r1.xyz, c0.w, v2
    nrm r3.xyz, r1
    dp3 r1.x, -r3, r2
    add r1.x, r1.x, r1.x
    mad r1.xyz, r2, -r1.x, -r3
    add r3.xyz, r1, c0.w
    dp3 r1.w, r3, r3
    rsq r1.w, r1.w
    mad r3.xy, r3.xzzw, r1.w, -c0.y
    mul r3.xy, r3, c1.x
    texld r3, r3, s1
    mul r3.xyz, r3, c72.x
    mul r3.xyz, r3, c73.x
    mul r4.w, r0.w, v3.w
    mad r0.w, r0.w, v3.w, c1.y
    rcp r1.w, r4.w
    cmp r0.w, r0.w, r1.w, c1.z
    mad r4.xyz, r3, r0.w, r0
    mad_sat r0.x, r2.z, c1.x, c1.w
    mov r3.xyz, c38
    mad r0.xyz, r3, r0.x, c37
    mul r3.xyz, c18.w, c18
    dp3 r0.w, r2, -c17
    add r0.w, r0.w, -c3.w
    mul_sat r0.w, r0.w, c2.x
    dp3_sat r1.x, -c17, r1
    add r1.x, r1.x, c2.y
    mov r1.y, c2.y
    add r1.y, r1.y, c66.x
    pow r2.x, r1.x, r1.y
    mul r1.xyz, c61.xyww, v4.y
    mad r1.xyz, v4.x, c60.xyww, r1
    mad r1.xyz, v4.z, c62.xyww, r1
    add r1.xyz, r1, c63.xyww
    dp3 r1.w, c14, v4
    add r2.yzw, -r1.w, -c54.xxyz
    cmp r5.yzw, r2, -c0.y, -c0.z
    mov r5.x, -c0.y
    dp4 r6.x, r5, c57
    dp4 r6.y, r5, c58
    dp4 r7.x, r5, c59
    dp4 r7.y, r5, c56
    mad r1.xy, r1, r6, r7
    add r2.yzw, c15.xxyz, -v4.xxyz
    dp3 r1.w, r2.yzww, r2.yzww
    rsq r1.w, r1.w
    rcp r1.w, r1.w
    rcp r2.y, c53.w
    mul r2.y, r1.w, r2.y
    mul r2.y, r2.y, r2.y
    mul r2.y, r2.y, c2.z
    mov r5.y, c53.y
    mad r2.zw, r5.y, c11.xyxy, r1.xyxy
    texld r6, r2.zwzw, s15
    add r2.z, r1.z, -r6.x
    cmp r2.z, r2.z, -c0.y, -c0.z
    mad r5.xz, r5.y, c11.zyww, r1.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r1.z, -r6.x
    cmp r2.w, r2.w, -c0.y, -c0.z
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c10.xyyw, r1.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r1.z, -r6.x
    cmp r2.w, r2.w, -c0.y, -c0.z
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c10.zyww, r1.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r1.z, -r6.x
    cmp r2.w, r2.w, -c0.y, -c0.z
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c9.xyyw, r1.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r1.z, -r6.x
    cmp r2.w, r2.w, -c0.y, -c0.z
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c9.zyww, r1.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r1.z, -r6.x
    cmp r2.w, r2.w, -c0.y, -c0.z
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c8.xyyw, r1.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r1.z, -r6.x
    cmp r2.w, r2.w, -c0.y, -c0.z
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c8.zyww, r1.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r1.z, -r6.x
    cmp r2.w, r2.w, -c0.y, -c0.z
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c7.xyyw, r1.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r1.z, -r6.x
    cmp r2.w, r2.w, -c0.y, -c0.z
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c7.zyww, r1.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r1.z, -r6.x
    cmp r2.w, r2.w, -c0.y, -c0.z
    add r2.z, r2.z, r2.w
    mad r5.xz, r5.y, c6.xyyw, r1.xyyw
    texld r6, r5.xzzw, s15
    add r2.w, r1.z, -r6.x
    cmp r2.w, r2.w, -c0.y, -c0.z
    add r2.z, r2.z, r2.w
    mad r1.xy, r5.y, c6.zwzw, r1
    texld r5, r1, s15
    add r1.x, r1.z, -r5.x
    cmp r1.x, r1.x, -c0.y, -c0.z
    add r1.x, r2.z, r1.x
    mad r1.x, r1.x, c2.w, r2.y
    add r1.y, r1.w, -c53.w
    cmp r1.yz, r1.y, c5.xxyw, c5.xzww
    add r1.z, r1.x, r1.z
    cmp_sat r1.x, r1.z, r1.x, r1.y
    mul r1.yzw, r3.xxyz, r2.x
    mul r1.yzw, r1.x, r1
    mul r2.xyz, r3, r0.w
    mul r2.xyz, r1.x, r2
    mul r1.xyz, r1.yzww, c17.w
    mad r0.xyz, r0, v3.x, r2
    mov r0.w, -c0.y
    mul r0, r4, r0
    mad r0.xyz, c72.x, r1, r0
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
    add r0.x, r1.x, c4.w
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

// approximately 180 instruction slots used (16 texture, 164 arithmetic)
 