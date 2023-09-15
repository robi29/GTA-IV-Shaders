//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float CloudBias;
//   float4 CloudColor;
//   float CloudFadeOut;
//   float CloudShadowStrength;
//   float4 CloudThicknessEdgeSmoothDetailScaleStrength;
//   float CloudThreshold;
//   sampler2D GalaxySampler;
//   float HDRExposure;
//   float3 HDRExposureClamp;
//   float HDRSunExposure;
//   sampler2D HighDetailNoiseSampler;
//   float4 MoonColorConstant;
//   float MoonGlow;
//   sampler2D MoonGlowSampler;
//   float4 MoonLight;
//   float3 MoonPosition;
//   sampler2D MoonSampler;
//   float MoonVisiblity;
//   float3 MoonXVector;
//   float3 MoonYVector;
//   sampler2D PerlinNoiseSampler;
//   float4 StarFieldBrightness;
//   sampler2D StarFieldSampler;
//   float3 SunCentre;
//   float3 SunColor;
//   float4 SunDirection;
//   float SunSize;
//   float4 SunsetColor;
//   float4 TopCloudBiasDetailThresholdHeight;
//   float3 TopCloudColor;
//   float gtaSkyDomeClip;
//   float3 gtaWaterColor;
//
//
// Registers:
//
//   Name                                        Reg   Size
//   ------------------------------------------- ----- ----
//   SunCentre                                   c64      1
//   SunDirection                                c65      1
//   SunColor                                    c66      1
//   gtaSkyDomeClip                              c67      1
//   gtaWaterColor                               c68      1
//   MoonGlow                                    c69      1
//   CloudColor                                  c70      1
//   SunsetColor                                 c71      1
//   CloudThreshold                              c72      1
//   CloudBias                                   c73      1
//   CloudFadeOut                                c74      1
//   TopCloudBiasDetailThresholdHeight           c75      1
//   TopCloudColor                               c76      1
//   CloudShadowStrength                         c77      1
//   CloudThicknessEdgeSmoothDetailScaleStrength c78      1
//   StarFieldBrightness                         c79      1
//   MoonLight                                   c80      1
//   MoonVisiblity                               c81      1
//   SunSize                                     c82      1
//   MoonColorConstant                           c83      1
//   MoonPosition                                c84      1
//   MoonXVector                                 c85      1
//   MoonYVector                                 c86      1
//   HDRExposure                                 c87      1
//   HDRSunExposure                              c88      1
//   HDRExposureClamp                            c89      1
//   MoonSampler                                 s0       1
//   MoonGlowSampler                             s1       1
//   StarFieldSampler                            s2       1
//   GalaxySampler                               s3       1
//   PerlinNoiseSampler                          s4       1
//   HighDetailNoiseSampler                      s5       1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0 // LogDepth constants
    def c0, 12.5799999, -0.0625, 0.5, 0.25
    def c1, -11.6163721, 0.9375, 0.5, 0.349999994
    def c2, 32, 0.600000024, -2, 3
    def c3, 4, 1, 0.200000003, 1.20000005
    def c4, 0.899999976, 0.5, 0.49000001, 0.99000001
    def c5, 0, 1, 64, 1.39999998
    def c6, 0.300000012, 0.699999988, 0.170000002, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord2 v2
    dcl_texcoord3 v3
    dcl_texcoord4 v4.xyz
    dcl_texcoord5 v5.xyz
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    mov r0.w, c65.w
    add_sat r0.x, r0.w, c2.y
    dp3 r0.y, v1, v1
    rsq r0.y, r0.y
    mul r1.xyz, r0.y, v1
    mad r0.yzw, v1.xxyz, r0.y, -c84.xxyz
    add r0.yzw, r0, -c85.xxyz
    add r0.yzw, r0, -c86.xxyz
    dp3 r1.x, r1, c65
    mov r2.xy, c3
    mad_sat r1.y, r1.y, r2.x, -c74.x
    mov r3, c0
    mad r3, r1.x, r3, c1
    mov_sat r3.xyz, r3
    mul r1.x, r3.y, r3.y
    mul r1.x, r1.x, r3.y
    pow r1.z, r3.x, c2.x
    mad r0.x, r1.x, -r0.x, r1.z
    mad r0.x, r3.z, c82.x, r0.x
    mad_sat r1.x, r3.z, c64.y, c64.x
    mul_sat r0.x, r0.x, c0.z
    mul r1.z, r1.x, r1.x
    mad r1.x, r1.x, c2.z, c2.w
    mul r1.x, r1.x, r1.z
    mul r1.x, r1.x, c64.z
    mad r0.x, r0.x, c3.x, r1.x
    mul r1.xzw, r0.x, c66.xyyz
    add_sat r0.x, -r0.x, c3.y
    mul r0.x, r0.x, c88.x
    mul_sat r2.xzw, r0.x, v5.xyyz
    mul r3.xyz, r1.xzww, r1.xzww
    mad r1.xzw, r3.xyyz, r3.xyyz, r1
    mad r1.xzw, r1, c88.x, r2
    dp3 r3.x, c85, r0.yzww
    dp3 r3.y, c86, r0.yzww
    add r0.xy, -r3, c3.y
    cmp r0.xy, r0, c5.x, c5.y
    cmp r0.zw, r3.xyxy, c5.x, c5.y
    add r0.xy, r0.zwzw, r0
    cmp r0.xy, -r0, c5.x, c5.y
    add_sat r0.x, r0.y, r0.x
    add r0.x, -r0.x, c3.y
    mad r0.yz, r3.xxyw, c80.xxyw, c80.xzww
    add r4, r3.xyxy, -c0.z
    mad r4, r4, c4.x, c4.yyzz
    texld r5, r0.yzzw, s0
    mul r0, r0.x, r5
    mul r2.xzw, r0.w, c83.xyyz
    mad r3.xy, r4, c80, c80.zwzw
    texld r5, r3, s1
    add r3.xyz, r2.y, c83
    mul r3.xyz, r3, r5.x
    mul r3.xyz, r3, c69.x
    mad r0.xyz, r0, r2.xzww, r3
    dp3 r2.x, r1.xzww, c6
    mad_sat r2.x, r2.x, -c81.x, r2.y
    mul r2.x, r2.x, r2.x
    texld r5, v4, s4
    texld r6, v2.zwzw, s5
    add r2.y, r6.x, -c0.z
    mul r2.z, r2.y, c78.w
    mad r2.z, r2.z, c75.y, r5.y
    mad_sat r2.z, c75.z, r2.z, -c75.x
    mul r2.z, r2.z, v4.z
    texld r5, v0, s4
    mad r2.w, r2.y, c78.w, r5.x
    mad_sat r2.y, r2.y, c3.z, r5.z
    mov r5.x, c72.x
    mad_sat r2.w, r5.x, r2.w, -c73.x
    pow r5.y, r2.w, c78.x
    mul_sat r2.w, r2.w, c78.y
    mad r5.z, r5.y, -r2.w, c3.y
    mul r2.w, r2.w, r5.y
    mul r2.z, r2.z, r5.z
    mad r5.y, r5.z, r2.z, r2.w
    add r5.zw, -r5.y, c5.xyyw
    mul r1.y, r1.y, r5.y
    mul r2.x, r2.x, r5.z
    mad r0.xyz, r0, r2.x, r1.xzww
    mul r3.xyz, r2.x, r3
    mad r3.xyz, r3, r5.w, c3.y
    add r4.xy, -r4, c4.w
    cmp r4, r4, c5.x, c5.y
    add r4.xy, r4, r4.zwzw
    cmp r4.xy, -r4, c5.x, c5.y
    add r2.x, r4.y, r4.x
    cmp r0.xyz, -r2.x, r0, r1.xzww
    mov r1.z, c5.z
    mul_sat r1.x, r1.z, c83.w
    mad r0.w, r0.w, -r1.x, c3.y
    texld r4, v3, s2
    mad r1.xzw, r4.xyyz, c79.x, -c79.z
    texld r4, v3.zwzw, s3
    mul r5.yzw, r4.xxyz, c79.y
    dp3 r4.w, r5.yzww, c3.w
    mad r1.xzw, r1, r4.w, r1
    mad_sat r1.xzw, r4.xyyz, c79.y, r1
    mul r4.xyz, r0.w, r1.xzww
    cmp r1.xzw, -r2.x, r4.xyyz, r1
    add r0.xyz, r0, r1.xzww
    mul r1.xz, c78.z, v2.xyyw
    texld r4, r1.xzzw, s5
    mul r0.w, r4.x, c78.w
    texld r4, v2, s4
    mad r0.w, r0.w, c3.z, r4.x
    mad r0.w, r5.x, r0.w, -c73.x
    mul_sat r0.w, r0.w, c77.x
    add r1.x, -r0.w, c3.y
    add r4.xyz, -r0.w, c70
    mul r0.w, r2.w, r1.x
    mad r0.w, r0.w, r2.y, r2.y
    mul r0.w, r3.w, r0.w
    mad r1.xzw, c71.xyyz, r0.w, r4.xyyz
    lrp r4.xyz, r2.z, c76, r1.xzww
    mul r1.xzw, r3.xyyz, r4.xyyz
    cmp r1.xzw, -r2.x, r1, r4.xyyz
    lrp r2.xyz, r1.y, r1.xzww, r0
    mul r0.xyz, r2, c87.x
    min r1.xyz, r0, c89
    min r0.xyz, c89, r1
    add r0.w, -c67.x, v1.y
    cmp oC0.xyz, r0.w, r0, c68
    mov oC0.w, c3.y
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

// approximately 127 instruction slots used (9 texture, 118 arithmetic)
