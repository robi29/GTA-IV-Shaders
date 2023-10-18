//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D GBufferStencilTextureSampler;
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
//   Name                         Reg   Size
//   ---------------------------- ----- ----
//   gViewInverse                 c12      4
//   gDirectionalLight            c17      1
//   gDirectionalColour           c18      1
//   gLightAmbient0               c37      1
//   gLightAmbient1               c38      1
//   globalScalars                c39      1
//   globalScreenSize             c44      1
//   gShadowParam18192021         c53      1
//   gFacetCentre                 c54      1
//   gShadowParam14151617         c56      1
//   gShadowParam0123             c57      1
//   gShadowParam4567             c58      1
//   gShadowParam891113           c59      1
//   gShadowMatrix                c60      4
//   gDeferredProjParams          c66      1
//   dReflectionParams            c72      1
//   GBufferTextureSampler0       s0       1
//   GBufferTextureSampler1       s1       1
//   GBufferTextureSampler2       s2       1
//   GBufferTextureSampler3       s4       1
//   GBufferStencilTextureSampler s5       1
//   ParabSampler                 s6       1
//   gShadowZSamplerDir           s15      1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0 // LogDepth constants
    def c0, 0, 512, 4096, 0.00200000009
    def c1, 0.99609375, 7.96875, 63.75, 0.25
    def c2, 256, -127.999992, 0.000392156857, 4
    def c3, 2, 0.5, 1, 9.99999975e-006
    def c4, 0.9, 9.99999975e-005, 1, 0
    def c5, 1.5, -0.4548159977, 0.2077075065, 0.0625
    def c6, 0, 0.5, -0.5, 0.5
    def c7, 0.0199999996, 0.00999999978, 0.75, 0.25
    def c8, 5, 10, 1.5, 0.4
    def c9, -0.125, 1, -1, 0
    def c10, 0.159154937, 0.5, 6.28318548, -3.14159274
    def c11, 3, 7.13800001, 0.00012207031, 0.00048828125
    def c12, 0.875, -0.5, 0.5, 0
    def c13, 0.25, 0.5, 0.75, 4.8
    def c16, 1, 0.5, 0.1, 0.16       // x,y = cascade 1,2 blur | z,w = cascade 1,2 bias
    def c98, 0.21, 0.054, 0.39, 0.62 // x,y = cascade 3,4 blur | z,w = cascade 3,4 bias
    def c101, -0.375, 0.75, -0.75, 0
    def c102, 0.625, -0.25, 0.25, 0

    // Optimized config
    def c99, 49, 1.4, 0, 0.045
    def c100, -33, 6, 0, 1

    defi i0, 12, 0, 0, 0
    defi i1, 12, 0, 0, 0

    // RTX 3060Ti config
    //def c99, 94, 1.4, 0, 0.045
    //def c100, -63, 6, 0, 1

    //defi i0, 22, 0, 0, 0
    //defi i1, 22, 0, 0, 0

    // RTX 3080 config
    //def c99, 130, 1.4, 0, 0.045
    //def c100, -87, 6, 0, 1

    //defi i0, 30, 0, 0, 0
    //defi i1, 30, 0, 0, 0

    // RTX 4090 config
    //def c99, 175, 1.4, 0, 0.045
    //def c100, -117, 6, 0, 1

    //defi i0, 40, 0, 0, 0
    //defi i1, 40, 0, 0, 0

    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s5
    dcl_2d s6
    dcl_2d s15
    texld r0, v0, s4
    // ----------------------------------------------------------------- Log2Linear -----------------------------------------------------------------
    if_ne r0.x, c127.y
        rcp r20.x, c128.x
        mul r20.x, r20.x, c128.y
        pow r20.x, r20.x, r0.x
        mul r20.x, r20.x, c128.x // W_clip
        
        add r20.y, r20.x, -c128.x
        add r20.z, c128.y, -c128.x
        mul r20.y, r20.y, c128.y
        mul r20.z, r20.z, r20.x
        rcp r20.z, r20.z
        mul r20.w, r20.y, r20.z // Linear depth
        
        min r0, r20.w, c127.x // FP error hack
    endif
    // ----------------------------------------------------------------------------------------------------------------------------------------------
    mad r0.x, r0.x, c66.z, -c66.w
    mul r0.x, r0.x, v1.w
    rcp r0.x, r0.x
    mad r0.yzw, v1.xxyz, -r0.x, c15.xxyz
    dp3 r1.x, c14, r0.yzww
    add r1.xyz, -r1.x, -c54
    cmp r1.yzw, r1.xxyz, c4.z, c4.w
    mov r1.x, c3.z
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

    texld r16, v0, s1
    mul r17.xyz, r16.w, c1
    frc r17.xyz, r17
    add r18.xyz, r17, r17
    mad r18.xy, r17.yzzw, -c1.w, r18
    mad r16.xyz, r16, c2.x, r18
    add r16.xyz, r16, c2.y
    nrm r17.xyz, r16

    mov r13.y, c100.z // blockers

    add r27.xyz, r0.z, -c13.xyz
    cmp r28.xy, r27.x, c16.yw, c16.xz   // cascade 1-2
    cmp r28.xy, r27.y, c98.xz, r28.xy   // cascade 2-3
    cmp r28.xy, r27.z, c98.yw, r28.xy   // cascade 3-4
    mul r21.xy, c53.xy, r28.x           // texel size multiplier

    mul r20.xy, r28.xx, c100.xy // pcss texel step

    if_ge r28.y, c98.z
        dp3 r15.x, r17, -c17
        if_ge r28.y, c98.w
            mul_sat r15.x, r15.x, c8.z
        else
            mad_sat r15.x, r15.x, c8.z, c8.w
        endif
        mul r28.y, r28.y, r15.x
    endif

    add r21.z, r1.z, -r28.y // depth bias

    mov r15.xy, r20.xx // x - i1 loop index, y - i0 loop index
    mov r14.x, c100.z // sum

    rep i0
        mul r13.w, r15.y, c99.w

        rep i1
            mad r11.xy, c53.xy, r15.xy, r0.zw
            texld r10, r11.xy, s15

            add r11.x, r10.x, -r21.z

            if_gt r11.x, r13.w
                min r11.x, r11.x, c99.x // < 49
                add r14.x, r14.x, r11.x
                add r13.y, r13.y, c100.w
            endif

            add r15.x, r15.x, r20.y // j++
        endrep
        add r15.y, r15.y, r20.y // i++
        mov r15.x, r20.x // j = -33
    endrep

    // avg if any blockers
    if_gt r13.y, c100.z
        rcp r13.y, r13.y
        mul r14.x, r14.x, r13.y
        mul r14.x, r14.x, c99.y // x * 1.4
    else
        mov r14.x, c100.z
    endif

    mad r21.xy, r21.xy, r14.xx, c53.xy

    mov r22.xy, c11.xy
    mul r22.xy, r22.xy, c44.xy          // r22.xy * screen dimensions
    dp2add r22.y, v0, r22, c4.w         // v0.x * r22.x + v0.y * r22.y
    mad r22.y, r22.y, c10.x, c10.y
    frc r22.y, r22.y
    mad r22.y, r22.y, c10.z, c10.w      // r22.y * 2pi - pi
    sincos r23.xy, r22.y                // sine & cosine of r22.y
    mul r19, r23.yxxy, -c101.xxyz
    mul r20, r23.yxxy, -c102.xxyz
    mul r31, r23.yxxy, c101.xxyz
    mul r30, r23.yxxy, c102.xxyz
    mul r28, r23.yxxy, -c9.xxyz
    mul r27, r23.yxxy, -c12.xxyz
    mul r24, r23.yxxy, c9.xxyz
    mul r23, r23.yxxy, c12.xxyz

    mad r25.xy, r24.xy, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #1
    mov r26.x, r25.x                    // copy to r26

    mad r25.xy, r24.zw, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #2
    mov r26.y, r25.x                    // copy to r26

    mad r25.xy, r23.xy, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #3
    mov r26.z, r25.x                    // copy to r26

    mad r25.xy, r23.zw, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #4
    mov r26.w, r25.x                    // copy to r26

    add r26, r21.z, -r26
    cmp r26, r26, c4.z, c4.w            // depth bias
    dp4 r29.x, r26, c4.z                // sum 4 samples

    mad r25.xy, r27.xy, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #5
    mov r26.x, r25.x                    // copy to r26

    mad r25.xy, r27.zw, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #6
    mov r26.y, r25.x                    // copy to r26

    mad r25.xy, r28.xy, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #7
    mov r26.z, r25.x                    // copy to r26

    mad r25.xy, r28.zw, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #8
    mov r26.w, r25.x                    // copy to r26

    add r26, r21.z, -r26
    cmp r26, r26, c4.z, c4.w            // depth bias
    dp4 r29.y, r26, c4.z                // sum 4 samples

    mad r25.xy, r30.xy, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #9
    mov r26.x, r25.x                    // copy to r26

    mad r25.xy, r30.zw, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #10
    mov r26.y, r25.x                    // copy to r26

    mad r25.xy, r31.xy, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #11
    mov r26.z, r25.x                    // copy to r26

    mad r25.xy, r31.zw, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #12
    mov r26.w, r25.x                    // copy to r26

    add r26, r21.z, -r26
    cmp r26, r26, c4.z, c4.w            // depth bias
    dp4 r29.z, r26, c4.z                // sum 4 samples

    mad r25.xy, r20.xy, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #13
    mov r26.x, r25.x                    // copy to r26

    mad r25.xy, r20.zw, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #14
    mov r26.y, r25.x                    // copy to r26

    mad r25.xy, r19.xy, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #15
    mov r26.z, r25.x                    // copy to r26

    mad r25.xy, r19.zw, r21.xy, r0.zw   // offset * texel size + UV
    texld r25, r25, s15                 // sample #16
    mov r26.w, r25.x                    // copy to r26

    add r26, r21.z, -r26
    cmp r26, r26, c4.z, c4.w            // depth bias
    dp4 r29.w, r26, c4.z                // sum 4 samples

    dp4 r0.z, r29, c5.w                 // sum 16 samples * 1/16

    rcp r0.w, c53.w
    mul r0.w, r0.y, r0.w
    add r0.y, r0.y, -c53.w
    cmp r1.xy, r0.y, c9, c9.zwzw
    mul r0.y, r0.w, r0.w
    mad r0.y, r0.y, r0.y, r0.z
    add r0.z, r1.y, r0.y
    cmp_sat r0.y, r0.z, r0.y, r1.x
    mad r1.xyz, v1, -r0.x, c3.w
    mul r0.xzw, r0.x, v1.xyyz
    nrm r3.xyz, r1
    dp3 r1.x, r3, r17
    add r1.y, r1.x, r1.x
    add r1.x, -r1_abs.x, c3.z
    mul r1.x, r1.x, r1.x
    mul r1.x, r1.x, r1.x
    mad r1.x, r1.x, c7.z, c7.w
    mad r1.yzw, r17.xxyz, -r1.y, r3.xxyz
    dp3_sat r2.w, -c17, r1.yzww
    add r2.w, r2.w, c4.y
    mul r3.w, r17.z, c2.w
    mov_sat r3.w, r3.w
    mul r3.w, r3.w, c72.y
    texld r4, v0, s5
    add r4.x, -r4.x, c2.z
    cmp r3.w, r4.x, r3.w, c0.x
    texld r4, v0, s2
    mul r4.y, r4.y, r4.y
    mul r5.xy, r4.y, c0.yzzw
    min r4.w, r5.y, c2.x
    mad r4.y, r4.y, -c0.y, r4.w
    mad r4.y, r3.w, r4.y, r5.x
    max r6.x, r5.x, r4.y
    add r4.y, r6.x, c4.y
    pow r5.x, r2.w, r4.y
    mul r5.yzw, c18.w, c18.xxyz
    mul r6.yzw, r5.x, r5
    mul r6.yzw, r0.y, r6
    dp3 r0.x, r3, -r0.xzww
    mul_sat r0.xz, r0.x, c7.xyyw
    add r0.z, -r0.z, c3.z
    mad r1.yzw, r3.xxyz, r0.x, r1
    add r1.yzw, r1, c3.w
    nrm r3.xyz, r1.yzww
    mul_sat r0.x, r3.z, c8.x
    mov_sat r0.w, r3.z
    add r0.w, r0.w, c3.z
    add r0.w, r0.w, r0.w
    rcp r0.w, r0.w
    mad r1.yz, r3.xxyw, r0.w, c3.y
    add r7.xy, -r1.yzzw, c3.z
    mul_sat r0.w, r6.x, c72.x
    mul r1.y, r6.x, c0.w
    min r2.w, r1.y, c1.w
    mad r1.y, r4.x, -c3.x, r2.w
    mad r7.w, r0.w, -c2.w, c2.w
    mov r7.z, c0.x
    texldl r7, r7, s6
    mul r3.xyz, r0.x, r7
    mul r0.xzw, r0.z, r3.xyyz
    mul r0.xzw, r4.z, r0
    mul r0.xzw, r0, c39.w
    mul r0.xzw, r1.x, r0
    mul r0.xzw, r0, c8.y
    add r1.x, c17.w, c17.w
    mad r0.xzw, r6.yyzw, r1.x, r0
    add r1.x, r4.x, r4.x
    mad r1.y, r3.w, r1.y, r1.x
    mad r1.z, r3.w, -c3.y, c3.z
    max r2.w, r1.x, r1.y
    mul r0.xzw, r0, r2.w
    dp3 r1.x, r17, -c17
    mad_sat r1.y, r17.z, c6.z, c6.w
    mov r2.xyz, c38
    mad r2.xyz, r2, r1.y, c37
    mul r2.xyz, r4.z, r2
    mul_sat r1.x, r1.x, c4.x
    mul r1.xyw, r5.yzzw, r1.x
    mad r1.xyw, r1, r0.y, r2.xyzz
    texld r2, v0, s0
    mul r2.xyz, r1.z, r2
    mad oC0.xyz, r2, r1.xyww, r0.xzww
    mov oC0.w, c3.z

// approximately 183 instruction slots used (19 texture, 164 arithmetic)
