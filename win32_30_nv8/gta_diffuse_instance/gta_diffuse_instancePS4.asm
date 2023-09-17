//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
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
//   TextureSampler       s0       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0 // LogDepth constants
    def c0, -0.5, 0.5, -0.25, 0.9
    def c1, 1, 0, 1.5, 0.0833333358
    def c2, 1, -1, 0, -0
    def c3, 3.99600005, 4, 0.125, 1.00000001e-007
    def c4, 0.212500006, 0.715399981, 0.0720999986, 0
    def c5, 0, 0, 0, 0.5
    def c6, 0.2703204087, 0.4206267664, 0.4548159977, 0.2077075065
    def c7, 0.4949107209, -0.07115741914, 0.3778747872, -0.327430367
    def c8, 0.1408662784, -0.4797464868, -0.1408662784, -0.4797464868
    def c9, -0.3778747872, -0.327430367, -0.4949107209, -0.07115741914
    def c10, -0.4548159977, 0.2077075065, -0.2703204087, 0.4206267664
    def c98, 0.5, 2, 0.1, 0
    dcl_color v0.xw
    dcl_texcoord v1.xy
    dcl_texcoord1 v2.xyz
    dcl_texcoord2 v3
    dcl vPos.xy
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s10
    dcl_2d s15
    texld r0, v1, s0
    mul r0.w, r0.w, v0.w
    mad_sat r1.x, v3.z, c0.x, c0.y
    mov r2.xyz, c38
    mad r1.xyz, r2, r1.x, c37
    mul r2.xyz, c18.w, c18
    dp3 r1.w, v3, -c17
    mul_sat r1.w, r1.w, c0.w
    mul r3.xyz, c61.xyww, v2.y
    mad r3.xyz, v2.x, c60.xyww, r3
    mad r3.xyz, v2.z, c62.xyww, r3
    add r3.xyz, r3, c63.xyww
    dp3 r2.w, c14, v2
    add r4.xyz, -r2.w, -c54
    cmp r4.yzw, r4.xxyz, c1.x, c1.y
    mov r4.x, c1.x
    dp4 r5.x, r4, c57
    dp4 r5.y, r4, c58
    dp4 r6.x, r4, c59
    dp4 r6.y, r4, c56
    mad r3.xy, r3, r5, r6
    add r4.xyz, c15, -v2
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r2.w, r2.w
    rcp r3.w, c53.w
    mul r3.w, r2.w, r3.w
    mul r3.w, r3.w, r3.w
    mul r3.w, r3.w, c1.z
    mov r4.y, c53.y
    mul r6.xy, r4.yy, c98.xy
    add r3.z, r3.z, -c98.z
    mad r4.xz, r6.xy, c10.xyyw, r3.xyyw
    texld r5, r4.xzzw, s15
    add r4.x, r3.z, -r5.x
    cmp r4.x, r4.x, c1.x, c1.y
    mad r4.zw, r6.xyxy, c10, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r6.xyxy, c9.xyxy, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r6.xyxy, c9, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r6.xyxy, c8.xyxy, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r6.xyxy, c8, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r6.xyxy, c7.xyxy, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r6.xyxy, c7, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r6.xyxy, c6.xyxy, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r6.xyxy, c6, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r6.xyxy, c5.xyxy, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r3.xy, r6.xy, c5.zwzw, r3
    texld r5, r3, s15
    add r3.x, r3.z, -r5.x
    cmp r3.x, r3.x, c1.x, c1.y
    add r3.x, r4.x, r3.x
    mad r3.x, r3.x, c1.w, r3.w
    add r2.w, r2.w, -c53.w
    cmp r3.yz, r2.w, c2.xxyw, c2.xzww
    add r2.w, r3.x, r3.z
    cmp_sat r2.w, r2.w, r3.x, r3.y
    mul r2.xyz, r2, r1.w
    mul r2.xyz, r2.w, r2
    mad r1.xyz, r1, v0.x, r2
    mov r1.w, c1.x
    mul r2, r0, r1
    mul r0.w, r2.w, c39.x
    mov_sat r1.w, r0.w
    mul r1.w, r1.w, c3.x
    frc r2.w, r1.w
    mul r3.x, r2.w, c3.y
    frc r3.y, r3.x
    add r3.x, r3.x, -r3.y
    add r3.y, r1.w, -r2.w
    mul r3.zw, c3.z, vPos.xyxy
    frc r3.zw, r3_abs
    cmp r3.zw, vPos.xyxy, r3, -r3
    mul r3.zw, r3, -c0.z
    mad r3.xy, r3, -c0.z, r3.zwzw
    mov r3.zw, c1.y
    texldl r3, r3, s10
    cmp r3, -r3.y, -c1.x, -c1.y
    texkill r3
    add r1.w, c16.w, -v3.w
    add r2.w, -c16.z, c16.w
    rcp r2.w, r2.w
    mul_sat r1.w, r1.w, r2.w
    add r1.w, -r1.w, c1.x
    mov r3.x, c1.x
    add r3.xy, -r3.x, c16
    mul r2.w, r1.w, r3.y
    mad r1.w, r1.w, r3.x, c1.x
    dp3 r2.x, r2, c4
    mad r0.xyz, r0, r1, -r2.x
    mad r0.xyz, r1.w, r0, r2.x
    add r1.x, r2.x, c3.w
    pow r3.x, r1_abs.x, r2.w
    mul r1.xyz, r0, r3.x
    rcp r1.w, c41.x
    mul_sat r1.w, r1.w, v3.w
    add r2.x, -c41.x, v3.w
    add r2.y, -c41.x, c41.y
    rcp r2.y, r2.y
    mul_sat r2.x, r2.x, r2.y
    lrp r3.y, c41.w, r1.w, r2.x
    add r1.w, r3.y, c41.z
    mov r4.xyz, c43
    add r2.yzw, -r4.xxyz, c42.xxyz
    mad r2.xyz, r2.x, r2.yzww, c43
    mad r0.xyz, r0, -r3.x, r2
    mad oC0.xyz, r1.w, r0, r1
    mov oC0.w, r0.w
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

// approximately 149 instruction slots used (15 texture, 134 arithmetic)
