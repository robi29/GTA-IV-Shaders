//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 Acceleration_Delta;
//   float4 EmitterParamLifeAndSpeed;
//   float3 EmitterParamPos;
//   float3 EmitterParamPosRange;
//   float EmitterParamProbablityPhase2;
//   row_major float4x4 EmitterTransform;
//   float3 EmitterVelocityBoxPos;
//   float4 EmitterVelocityBoxRange;
//   sampler2D InitPositionTexSampler;
//   sampler2D InitVelocityTexSampler;
//   sampler2D NoiseTexSampler;
//   sampler2D ParticleCollisionSampler;
//   sampler2D ParticlePosXYTexSampler;
//   sampler2D ParticlePosZWTexSampler;
//   float2 gCollisionLifeModifier;
//   float3 gCollisionPositionModifier;
//   float3 gCollisionVelocityModifier;
//   row_major float4x4 gDepthViewProjMtx;
//   float4 gDispersalSettings;
//   bool gFirstTimeUpdate;
//   float3 gGustAmplifier;
//   float2 gGustSpacing;
//
//
// Registers:
//
//   Name                         Reg   Size
//   ---------------------------- ----- ----
//   gFirstTimeUpdate             b0       1
//   EmitterTransform             c64      4
//   gDepthViewProjMtx            c68      4
//   Acceleration_Delta           c72      1
//   EmitterParamPos              c73      1
//   EmitterParamPosRange         c74      1
//   EmitterParamLifeAndSpeed     c75      1
//   EmitterParamProbablityPhase2 c76      1
//   EmitterVelocityBoxPos        c77      1
//   EmitterVelocityBoxRange      c78      1
//   gCollisionVelocityModifier   c79      1
//   gCollisionLifeModifier       c80      1
//   gCollisionPositionModifier   c81      1
//   gDispersalSettings           c82      1
//   gGustSpacing                 c83      1
//   gGustAmplifier               c84      1
//   ParticlePosXYTexSampler      s0       1
//   ParticlePosZWTexSampler      s1       1
//   ParticleCollisionSampler     s2       1
//   NoiseTexSampler              s3       1
//   InitPositionTexSampler       s4       1
//   InitVelocityTexSampler       s5       1
//

    ps_3_0
    def c0, 0.200000003, 0.999499977, 0, 0
    def c1, 0.0625, 2, -1, -0
    dcl_texcoord v0.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    if b0
      texld r0, v0, s4
      texld r1, v0, s5
      mov r2.x, r0.w
    else
      texld r0, v0, s0
      texld r1, v0, s1
      mov r2.x, r0.w
    endif
    add r2.x, r2.x, -c72.w
    mad r2.zw, r0.xyxy, c1.x, v0.xyxy
    texld r3, r2.zwzw, s3
    texld r4, v0, s3
    mad r4.yzw, r4.xxyz, c1.y, c1.z
    mov r5.xyz, c78
    mad r5.xyz, r5, r4.yzww, c77
    mad r3.xyz, r3.wzyw, c1.y, c1.z
    mov r6.xyz, c67
    mad r3.xyz, c74, r3, r6
    mov r4.yz, c73
    mul r6.xyz, r4.y, -c66
    mad r3.xyz, r6, -c1.zzww, r3
    mad r3.xyz, r4.z, -c1.wwzw, r3
    add r2.zw, r3.xyxy, -c67.xyxy
    dp2add r0.w, r2.zwzw, r2.zwzw, -c1.w
    rsq r0.w, r0.w
    rcp r0.w, r0.w
    add r0.w, r0.w, -c82.x
    mov r2.z, c1.z
    mad r2.z, r0.w, c82.y, -r2.z
    cmp r0.w, r0.w, r2.z, -c1.z
    lrp r6.xy, r0.w, r3, c67
    mov r6.z, r3.z
    mad r3.xyz, r5, -c0.x, r6
    mad r6.x, c75.z, r3.w, c75.w
    add r0.w, r4.x, -c76.x
    cmp r6.y, r0.w, -c1.w, -c1.z
    mov r5.w, -c1.w
    cmp r1, -r2.x, r5, r1
    cmp r0.xyz, -r2.x, r3, r0
    mov r2.y, -c1.w
    cmp r2.xw, -r2.x, r6.yyzx, r2.yyzx
    mad r0.xyz, r1, c72.w, r0
    mul r3.xyz, r0.y, c69
    mad r3.xyz, r0.x, c68, r3
    mad r3.xyz, r0.z, c70, r3
    add r3.xyz, r3, c71
    add r3.w, -r3.y, -c1.z
    texld r4, r3.xwzw, s2
    add r3.x, -r4.x, -c1.z
    add r3.y, -r3.z, r3.x
    cmp r3.y, r3.y, -c1.z, -c1.w
    add r3.y, r2.x, r3.y
    add r3.x, r3.x, -c71.z
    rcp r3.z, c70.z
    mul r0.w, r3.z, r3.x
    add r4.xyz, r0.xyww, c81
    mad r0.w, r2.w, c80.x, c80.y
    cmp r4.w, -r1_abs.w, r0.w, r2.w
    add r5.w, r1.w, -c1.z
    cmp r0.w, -r1_abs.w, c1.z, c1.w
    cmp r0.w, -r3.y, c1.w, r0.w
    mov r2.xyz, r0
    cmp r2, r0.w, r2, r4
    mov r5.xyz, -c1.w
    cmp r0, r0.w, r1, r5
    mov r1.y, c0.y
    cmp r1.xyz, -r0.w, r1.y, c79
    mul r3.xy, r2.xzzw, c83.x
    texld r3, r3, s3
    mad r3.xyz, r3, c1.y, c1.z
    mov r4.xyz, c72
    mad r3.xyz, r3, c84, r4
    mad r0.xyz, r3, c72.w, r0
    mul oC1.xyz, r1, r0
    mov oC0, r2
    mov oC1.w, r0.w

// approximately 80 instruction slots used (8 texture, 72 arithmetic)
 