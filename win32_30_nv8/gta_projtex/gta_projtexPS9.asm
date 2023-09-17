//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
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
//   float parallaxScaleBias;
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
//   parallaxScaleBias    c66      1
//   specularFactor       c72      1
//   specularColorFactor  c73      1
//   bumpiness            c74      1
//   TextureSampler       s0       1
//   BumpSampler          s1       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0 // LogDepth constants
    def c0, 0, -1, -0, 9.99999975e-006
    def c1, 0.5, -0.5, -0.00200000009, 0.9
    def c2, 9.99999975e-005, 1.5, -0.4548159977, 0.2077075065
    def c3, 0, 0.5, 0.0833333358, 1.00000001e-007
    def c4, 3.99600005, 4, 0.125, 0.25
    def c5, 0.212500006, 0.715399981, 0.0720999986, 0
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
    dcl_texcoord4 v3.xyz
    dcl_texcoord5 v4.xyz
    dcl_color v5.xw
    dcl_texcoord6 v6.xyz
    dcl_texcoord7 v7.xyz
    dcl vPos.xy
    dcl_texcoord9 v9
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
    mov r0.zw, c0.x
    texldl r0, r0, s10
    cmp r0, -r0.y, c0.y, c0.z
    texkill r0
    texld r0, v0, s1
    add r0.xyz, c0.w, v7
    dp3 r0.z, r0, r0
    rsq r0.z, r0.z
    mul r0.xy, r0, r0.z
    mov r1.x, c1.x
    mul r0.z, r1.x, c66.x
    mad r0.z, r0.w, c66.x, -r0.z
    mad_sat r0.xy, r0.z, r0, v0
    texld r1, r0, s1
    texld r0, r0, s0
    add r1.zw, r1.xyxy, c1.y
    mul r1.zw, r1, c74.x
    dp2add r2.x, r1, -r1, -c0.y
    rsq r2.x, r2.x
    rcp r2.x, r2.x
    mul r2.yzw, r1.z, v3.xxyz
    mad r2.xyz, v1, r2.x, r2.yzww
    mad r2.xyz, r1.w, v4, r2
    add r2.xyz, r2, c0.w
    nrm r3.xyz, r2
    dp2add r1.x, r1, r1, c1.z
    cmp r1.x, r1.x, -c0.y, -c0.z
    mul r2.xyz, r0, r1.x
    mul r0.x, r1.x, v5.x
    mul r0.y, r1.x, c73.x
    mul r2.w, r0.w, v5.w
    add r1.xyz, c0.w, v2
    nrm r4.xyz, r1
    mad_sat r0.z, r3.z, c1.y, c1.x
    mov r1.xyz, c38
    mad r1.xyz, r1, r0.z, c37
    dp3 r0.z, -r4, r3
    add r0.z, r0.z, r0.z
    mad r4.xyz, r3, -r0.z, -r4
    mul r5.xyz, c18.w, c18
    dp3 r0.z, r3, -c17
    mul_sat r0.z, r0.z, c1.w
    dp3_sat r0.w, -c17, r4
    add r0.w, r0.w, c2.x
    mov r3.xzw, c2
    add r1.w, r3.x, c72.x
    pow r3.x, r0.w, r1.w
    mul r4.xyz, c61.xyww, v6.y
    mad r4.xyz, v6.x, c60.xyww, r4
    mad r4.xyz, v6.z, c62.xyww, r4
    add r4.xyz, r4, c63.xyww
    dp3 r0.w, c14, v6
    add r6.xyz, -r0.w, -c54
    cmp r6.yzw, r6.xxyz, -c0.y, -c0.z
    mov r6.x, -c0.y
    dp4 r7.x, r6, c57
    dp4 r7.y, r6, c58
    dp4 r8.x, r6, c59
    dp4 r8.y, r6, c56
    mad r4.xy, r4, r7, r8
    add r6.xyz, c15, -v6
    dp3 r0.w, r6, r6
    rsq r0.w, r0.w
    rcp r0.w, r0.w
    rcp r1.w, c53.w
    mul r1.w, r0.w, r1.w
    mul r1.w, r1.w, r1.w
    mul r1.w, r1.w, c2.y
    mov r6.y, c53.y
    mul r8.xy, r6.yy, c98.xy
    add r4.z, r4.z, -c98.z
    mad r3.yz, r8.xxyy, r3.xzww, r4.xxyw
    texld r6, r3.yzzw, s15
    add r3.y, r4.z, -r6.x
    cmp r3.y, r3.y, -c0.y, -c0.z
    mad r3.zw, r8.xyxy, c11.xyxy, r4.xyxy
    texld r7, r3.zwzw, s15
    add r3.z, r4.z, -r7.x
    cmp r3.z, r3.z, -c0.y, -c0.z
    add r3.y, r3.y, r3.z
    mad r3.zw, r8.xyxy, c11, r4.xyxy
    texld r7, r3.zwzw, s15
    add r3.z, r4.z, -r7.x
    cmp r3.z, r3.z, -c0.y, -c0.z
    add r3.y, r3.y, r3.z
    mad r3.zw, r8.xyxy, c10.xyxy, r4.xyxy
    texld r7, r3.zwzw, s15
    add r3.z, r4.z, -r7.x
    cmp r3.z, r3.z, -c0.y, -c0.z
    add r3.y, r3.y, r3.z
    mad r3.zw, r8.xyxy, c10, r4.xyxy
    texld r7, r3.zwzw, s15
    add r3.z, r4.z, -r7.x
    cmp r3.z, r3.z, -c0.y, -c0.z
    add r3.y, r3.y, r3.z
    mad r3.zw, r8.xyxy, c9.xyxy, r4.xyxy
    texld r7, r3.zwzw, s15
    add r3.z, r4.z, -r7.x
    cmp r3.z, r3.z, -c0.y, -c0.z
    add r3.y, r3.y, r3.z
    mad r3.zw, r8.xyxy, c9, r4.xyxy
    texld r7, r3.zwzw, s15
    add r3.z, r4.z, -r7.x
    cmp r3.z, r3.z, -c0.y, -c0.z
    add r3.y, r3.y, r3.z
    mad r3.zw, r8.xyxy, c8.xyxy, r4.xyxy
    texld r7, r3.zwzw, s15
    add r3.z, r4.z, -r7.x
    cmp r3.z, r3.z, -c0.y, -c0.z
    add r3.y, r3.y, r3.z
    mad r3.zw, r8.xyxy, c8, r4.xyxy
    texld r7, r3.zwzw, s15
    add r3.z, r4.z, -r7.x
    cmp r3.z, r3.z, -c0.y, -c0.z
    add r3.y, r3.y, r3.z
    mad r3.zw, r8.xyxy, c7.xyxy, r4.xyxy
    texld r7, r3.zwzw, s15
    add r3.z, r4.z, -r7.x
    cmp r3.z, r3.z, -c0.y, -c0.z
    add r3.y, r3.y, r3.z
    mad r3.zw, r8.xyxy, c7, r4.xyxy
    texld r7, r3.zwzw, s15
    add r3.z, r4.z, -r7.x
    cmp r3.z, r3.z, -c0.y, -c0.z
    add r3.y, r3.y, r3.z
    mad r3.zw, r8.xyxy, c3.xyxy, r4.xyxy
    texld r6, r3.zwzw, s15
    add r3.z, r4.z, -r6.x
    cmp r3.z, r3.z, -c0.y, -c0.z
    add r3.y, r3.y, r3.z
    mad r1.w, r3.y, c3.z, r1.w
    add r0.w, r0.w, -c53.w
    cmp r3.yz, r0.w, c6.xxyw, c6.xzww
    add r0.w, r1.w, r3.z
    cmp_sat r0.w, r0.w, r1.w, r3.y
    mul r3.xyz, r5, r3.x
    mul r3.xyz, r0.w, r3
    mul r4.xyz, r5, r0.z
    mul r4.xyz, r0.w, r4
    mul r3.xyz, r3, c17.w
    mad r1.xyz, r1, r0.x, r4
    mov r1.w, -c0.y
    mul r1, r2, r1
    mad r0.xyz, r0.y, r3, r1
    mul oC0.w, r1.w, c39.x
    add r0.w, c16.w, -v1.w
    add r1.x, -c16.z, c16.w
    rcp r1.x, r1.x
    mul_sat r0.w, r0.w, r1.x
    add r0.w, -r0.w, -c0.y
    mov r1.y, c0.y
    add r1.xy, r1.y, c16
    mul r1.y, r0.w, r1.y
    mad r0.w, r0.w, r1.x, -c0.y
    dp3 r1.x, r0, c5
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
    // ----------------------------------------------------------------- Linear2Log -----------------------------------------------------------------
    if_ne v9.y, c127.y
        rcp r20.z, c128.x
        mul r20.x, v9.w, r20.z
        mul r20.y, c128.y, r20.z
        log r20.x, r20.x
        log r20.y, r20.y
        rcp r20.y, r20.y
    else
        mov r20.x, v9.z
        rcp r20.y, v9.w
    endif
    mul oDepth, r20.x, r20.y
    // ----------------------------------------------------------------------------------------------------------------------------------------------

// approximately 193 instruction slots used (17 texture, 176 arithmetic)
