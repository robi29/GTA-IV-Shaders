//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D GBufferTextureSampler0;
//   sampler2D GBufferTextureSampler1;
//   sampler2D GBufferTextureSampler2;
//   sampler2D GBufferTextureSampler3;
//   sampler2D ParabSampler;
//   float4 dReflectionParams;
//   float4 gDeferredProjParams;
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
//   float4 globalScalars;
//   float4 globalScreenSize;
//
//
// Registers:
//
//   Name                   Reg   Size
//   ---------------------- ----- ----
//   gViewInverse           c12      4
//   gDirectionalLight      c17      1
//   gDirectionalColour     c18      1
//   gLightAmbient0         c37      1
//   gLightAmbient1         c38      1
//   globalScalars          c39      1
//   globalScreenSize       c44      1
//   gShadowParam18192021   c53      1
//   gFacetCentre           c54      1
//   gShadowParam14151617   c56      1
//   gShadowParam0123       c57      1
//   gShadowParam4567       c58      1
//   gShadowParam891113     c59      1
//   gShadowMatrix          c60      4
//   gDeferredProjParams    c66      1
//   dReflectionParams      c72      1
//   GBufferTextureSampler0 s0       1
//   GBufferTextureSampler1 s1       1
//   GBufferTextureSampler2 s2       1
//   GBufferTextureSampler3 s4       1
//   ParabSampler           s5       1
//   gShadowZSamplerDir     s15      1
//

    ps_3_0
    def c0, 512, 0.99609375, 7.96875, 63.75
    def c1, 0.25, 256, -127.999992, 9.99999975e-006
    def c2, 0.9, 9.99999975e-005, 512, 1
    def c3, 1, 0, 1.5, 0.25
    def c4, -0.5, 0.5, 0.0199999996, 0.00999999978
    def c5, 4, 0.75, 0.25, 5
    def c6, 10, 0, 0, 0
    def c7, 1, -1, 0, -0
    def c8, -0.25, 1, -1, -0.07
    def c9, 0.159154937, 0.5, 6.28318548, -3.14159274
    def c10, 3, 7.13800001, 1.2, 4.8
    def c11, 0.75, -0.5, 0.5, 0
    def c12, 0.25, 0.5, 0.75, 0.00048828125
    def c13, 0.5, 0.25, 0.125, 1
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s5
    dcl_2d s15
    texld r0, v0, s4
    mad r0.x, r0.x, c66.z, -c66.w
    mul r0.x, r0.x, v1.w
    rcp r0.x, r0.x
    mad r0.yzw, v1.xxyz, -r0.x, c15.xxyz
    dp3 r1.x, c14, r0.yzww
    add r1.xyz, -r1.x, -c54
    cmp r1.yzw, r1.xxyz, c3.x, c3.y
    mov r1.x, c2.w
    dp4 r2.x, r1, c57
    dp4 r2.y, r1, c58
    dp4 r3.x, r1, c59
    dp4 r3.y, r1, c56
    mul r1.xyz, r0.z, c61.xyww
    mad r1.xyz, r0.y, c60.xyww, r1
    mad r1.xyz, r0.w, c62.xyww, r1
    add r0.yzw, -r0, c15.xxyz
    dp3 r0.y, r0.yzww, r0.yzww
    rsq r0.y, r0.y
    rcp r0.y, r0.y
    add r1.xyz, r1, c63.xyww
    mad r0.zw, r1.xyxy, r2.xyxy, r3.xyxy

    add r1.z, r1.z, c8.w            // depth bias

    mov r1.xy, c53.yy
    max r1.xy, r1.xy, c12.ww        // prevents from too sharp shadows when using ShadowResFix
    mul r1.xy, r1.xy, c10.zw        // *2.4 instead of *3 because CSM resolutions are multiples of 256 instead of 320

    add r7.xyz, r0.z, -c12.xyz
    cmp r7.w, r7.x, c13.x, c13.w    // cascade 1-2
    cmp r7.w, r7.y, c13.y, r7.w     // cascade 2-3
    cmp r7.w, r7.z, c13.z, r7.w     // cascade 3-4
    mul r1.xy, r1.xy, r7.w          // texel size multiplier

    mov r2.xy, c10.xy
    mul r2.xy, r2.xy, c44.xy        // r2.xy * screen dimensions
    dp2add r2.y, v0, r2, c3.y       // v0.x * r2.x + v0.y * r2.y
    mad r2.y, r2.y, c9.x, c9.y
    frc r2.y, r2.y
    mad r2.y, r2.y, c9.z, c9.w      // r2.y * 2pi - pi
    sincos r3.xy, r2.y              // sine & cosine of r2.y
    mul r4, r3.yxxy, c8.xxyz
    mul r3, r3.yxxy, c11.xxyz

    mad r5.xy, r4.xy, r1.xy, r0.zw  // offset * texel size + UV
    texld r5, r5, s15               // sample #1
    mov r6.x, r5.x                  // copy to r6

    mad r5.xy, r4.zw, r1.xy, r0.zw  // offset * texel size + UV
    texld r5, r5, s15               // sample #2
    mov r6.y, r5.x                  // copy to r6

    mad r5.xy, r3.xy, r1.xy, r0.zw  // offset * texel size + UV
    texld r5, r5, s15               // sample #3
    mov r6.z, r5.x                  // copy to r6

    mad r5.xy, r3.zw, r1.xy, r0.zw  // offset * texel size + UV
    texld r5, r5, s15               // sample #4
    mov r6.w, r5.x                  // copy to r6

    add r6, r1.z, -r6
    cmp r6, r6, c3.x, c3.y          // depth bias
    dp4 r0.z, r6, c3.x              // sum

    rcp r0.w, c53.w
    mul r0.w, r0.y, r0.w
    add r0.y, r0.y, -c53.w
    cmp r1.xy, r0.y, c7, c7.zwzw
    mul r0.y, r0.w, r0.w
    mul r0.y, r0.y, r0.y
    mad r0.y, r0.z, c3.w, r0.y
    add r0.z, r1.y, r0.y
    cmp_sat r0.y, r0.z, r0.y, r1.x
    texld r1, v0, s1
    mul r2.xyz, r1.w, c0.yzww
    frc r2.xyz, r2
    add r3.xyz, r2, r2
    mad r3.xy, r2.yzzw, -c1.x, r3
    mad r1.xyz, r1, c1.y, r3
    add r1.xyz, r1, c1.z
    nrm r2.xyz, r1
    mad r1.xyz, v1, -r0.x, c1.w
    mul r0.xzw, r0.x, v1.xyyz
    nrm r3.xyz, r1
    dp3 r1.x, r3, r2
    add r1.y, r1.x, r1.x
    add r1.x, -r1_abs.x, c2.w
    mul r1.x, r1.x, r1.x
    mul r1.x, r1.x, r1.x
    mad r1.x, r1.x, c5.y, c5.z
    mad r1.yzw, r2.xxyz, -r1.y, r3.xxyz
    dp3_sat r2.w, -c17, r1.yzww
    add r2.w, r2.w, c2.y
    texld r4, v0, s2
    mul r3.w, r4.y, r4.y
    mad r4.y, r3.w, c2.z, c2.y
    mul r3.w, r3.w, c0.x
    mul_sat r3.w, r3.w, c72.x
    mad r5.w, r3.w, -c5.x, c5.x
    pow r3.w, r2.w, r4.y
    mul r6.xyz, c18.w, c18
    mul r7.xyz, r3.w, r6
    mul r7.xyz, r0.y, r7
    dp3 r0.x, r3, -r0.xzww
    mul_sat r0.xz, r0.x, c4.zyww
    mad r1.yzw, r3.xxyz, r0.x, r1
    add r0.x, -r0.z, c2.w
    add r1.yzw, r1, c1.w
    nrm r3.xyz, r1.yzww
    mul_sat r0.z, r3.z, c5.w
    mov_sat r0.w, r3.z
    add r0.w, r0.w, c2.w
    add r0.w, r0.w, r0.w
    rcp r0.w, r0.w
    mad r1.yz, r3.xxyw, r0.w, c4.y
    add r5.xy, -r1.yzzw, c2.w
    mov r5.z, c3.y
    texldl r3, r5, s5
    mul r1.yzw, r0.z, r3.xxyz
    mul r0.xzw, r0.x, r1.yyzw
    mul r0.xzw, r4.z, r0
    mul r0.xzw, r0, c39.w
    mul r0.xzw, r1.x, r0
    mul r0.xzw, r0, c6.x
    add r1.x, c17.w, c17.w
    mad r0.xzw, r7.xyyz, r1.x, r0
    add r1.x, r4.x, r4.x
    mul r0.xzw, r0, r1.x
    dp3 r1.x, r2, -c17
    mad_sat r1.y, r2.z, c4.x, c4.y
    mov r2.xyz, c38
    mad r1.yzw, r2.xxyz, r1.y, c37.xxyz
    mul r1.yzw, r4.z, r1
    mul_sat r1.x, r1.x, c2.x
    mul r2.xyz, r6, r1.x
    mad r1.xyz, r2, r0.y, r1.yzww
    texld r2, v0, s0
    mad oC0.xyz, r2, r1, r0.xzww
    mov oC0.w, c2.w

// approximately 166 instruction slots used (18 texture, 148 arithmetic)
