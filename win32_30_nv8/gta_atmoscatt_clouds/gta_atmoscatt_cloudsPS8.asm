//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float CloudBias;
//   float4 CloudColor;
//   float CloudFadeOut;
//   float CloudInscatteringRange;
//   float CloudShadowStrength;
//   float4 CloudThicknessEdgeSmoothDetailScaleStrength;
//   float CloudThreshold;
//   sampler2D GalaxySampler;
//   float HDRExposure;
//   float3 HDRExposureClamp;
//   float3 HDRSunExposure;
//   sampler2D HighDetailNoiseSampler;
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
//   float3 gtaSkyDomeFade;
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
//   gtaSkyDomeFade                              c67      1
//   gtaWaterColor                               c68      1
//   CloudColor                                  c69      1
//   SunsetColor                                 c70      1
//   CloudThreshold                              c71      1
//   CloudBias                                   c72      1
//   CloudFadeOut                                c73      1
//   TopCloudBiasDetailThresholdHeight           c74      1
//   TopCloudColor                               c75      1
//   CloudShadowStrength                         c76      1
//   CloudInscatteringRange                      c77      1
//   CloudThicknessEdgeSmoothDetailScaleStrength c78      1
//   StarFieldBrightness                         c79      1
//   SunSize                                     c80      1
//   HDRExposure                                 c81      1
//   HDRSunExposure                              c82      1
//   HDRExposureClamp                            c83      1
//   StarFieldSampler                            s0       1
//   GalaxySampler                               s1       1
//   PerlinNoiseSampler                          s2       1
//   HighDetailNoiseSampler                      s3       1
//

    ps_3_0
    def c0, 0.200000003, 0, 0.25, 0.349999994
    def c1, 9.99999975e-006, 1, -11.6163721, 32
    def c2, 0.9375, 0.5, 12.5799999, -0.0625
    def c3, 0.600000024, -2, 3, 4
    def c4, 1.20000005, 0, 0, 0
    dcl_texcoord_pp v0.xy
    dcl_texcoord1_pp v1.xyz
    dcl_texcoord2_pp v2
    dcl_texcoord3_pp v3
    dcl_texcoord4_pp v4.xyz
    dcl_texcoord5_pp v5.xyz
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    texld_pp r0, v3, s0
    mad_pp r0.xyz, r0, c79.x, -c79.z
    texld_pp r1, v3.zwzw, s1
    mul_pp r2.xyz, r1, c79.y
    dp3 r0.w, r2, c4.x
    mad r0.xyz, r0, r0.w, r0
    mad_sat_pp r0.xyz, r1, c79.y, r0
    mov r1.xw, c3
    add_sat r0.w, r1.x, c65.w
    mov r1.yz, c2.xxyw
    mov r2.y, c1.y
    add_sat r2.x, r2.y, -c82.y
    mul r1.x, r2.x, c1.z
    add r3.xyz, c1.x, v1
    nrm_pp r4.xyz, r3
    dp3_pp r3.y, r4, c65
    mad_sat_pp r1.w, r4.y, r1.w, -c73.x
    mul r3.x, r2.x, r3.y
    mad_sat r1.xyz, r3.xyyw, c2.zwyw, r1
    mul r2.x, r1.y, r1.y
    mul r1.y, r1.y, r2.x
    pow r2.x, r1.x, c1.w
    mad r0.w, r1.y, -r0.w, r2.x
    mad r0.w, r1.z, c80.x, r0.w
    mad_sat r1.x, r1.z, c64.y, c64.x
    mul_sat r0.w, r0.w, c2.y
    mul r1.y, r1.x, r1.x
    mad r1.x, r1.x, c3.y, c3.z
    mul r1.x, r1.y, r1.x
    mul r1.x, r1.x, c64.z
    mad_pp r0.w, r0.w, c3.w, r1.x
    mul_pp r1.xyz, r0.w, c66
    add_sat_pp r0.w, -r0.w, c1.y
    mul_pp r0.w, r0.w, c82.x
    mul_sat_pp r2.xzw, r0.w, v5.xyyz
    mul r3.xzw, r1_abs.xyyz, r1_abs.xyyz
    mad_pp r1.xyz, r3.xzww, r3.xzww, r1
    mad_pp r1.xyz, r1, c82.x, r2.xzww
    add_pp r0.xyz, r0, r1
    mad r0.w, r3.y, c0.z, c0.w
    mul_pp r1.x, r3.y, r3.y
    mul r1.yz, c78.z, v2.xxyw
    texld r3, r1.yzzw, s3
    mul r1.y, r3.x, c78.w
    texld_pp r3, v2, s2
    mad_pp r1.y, r1.y, c0.x, r3.x
    mov r2.x, c71.x
    mad r1.y, r2.x, r1.y, -c72.x
    mul_sat_pp r1.y, r1.y, c76.x
    add r1.z, -r1.y, c1.y
    texld_pp r3, v0, s2
    texld_pp r4, v2.zwzw, s3
    add_pp r2.z, r4.x, -c2.y
    mad_pp r2.w, r2.z, c78.w, r3.x
    mad_sat r3.x, r2.z, c0.x, r3.z
    mul_pp r2.z, r2.z, c78.w
    mad_sat_pp r2.x, r2.x, r2.w, -c72.x
    pow r3.y, r2.x, c78.x
    mul_sat r2.x, r2.x, c78.y
    mul_pp r2.w, r3.y, r2.x
    mad r2.x, r3.y, -r2.x, c1.y
    mul r1.z, r1.z, r2.w
    mad_pp r1.z, r1.z, r3.x, r3.x
    mul_pp r0.w, r0.w, r1.z
    mad r1.z, r1.y, -c2.y, r2.x
    max r3.x, r1.z, c0.y
    mul r1.x, r1.x, r3.x
    mad_pp r1.x, r1.x, c77.x, r2.y
    mad r1.xyz, r1.x, c69, -r1.y
    mad_pp r1.xyz, c70, r0.w, r1
    texld_pp r3, v4, s2
    mad_pp r0.w, r2.z, c74.y, r3.y
    mad_sat r0.w, c74.z, r0.w, -c74.x
    mul_pp r0.w, r0.w, v4.z
    mul_pp r0.w, r2.x, r0.w
    mad_pp r2.x, r2.x, r0.w, r2.w
    lrp_pp r2.yzw, r0.w, c75.xxyz, r1.xxyz
    mul_pp r0.w, r1.w, r2.x
    lrp_pp r1.xyz, r0.w, r2.yzww, r0
    mul_pp r0.xyz, r1, c81.x
    min_pp r1.xyz, r0, c83
    min_pp r0.xyz, c83, r1
    add r1.xyz, -r0, c68
    add r0.w, c67.x, -v1.y
    mul_sat r0.w, r0.w, c67.y
    mad oC0.xyz, r0.w, r1, r0
    mov oC0.w, c1.y

// approximately 93 instruction slots used (7 texture, 86 arithmetic)
