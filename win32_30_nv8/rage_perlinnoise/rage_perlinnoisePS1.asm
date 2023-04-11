//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float Brightness;
//   float ClumpBump;
//   float Contrast;
//   float Frequency1;
//   float Frequency2;
//   sampler2D Noise1Sampler;
//   float NoiseWarp;
//   float Persistance;
//   float Phase;
//   float2 Velocity1;
//   float2 Velocity2;
//
//
// Registers:
//
//   Name          Reg   Size
//   ------------- ----- ----
//   Velocity1     c64      1
//   Velocity2     c65      1
//   Frequency1    c66      1
//   Frequency2    c67      1
//   Contrast      c68      1
//   Brightness    c69      1
//   NoiseWarp     c70      1
//   Persistance   c71      1
//   Phase         c72      1
//   ClumpBump     c73      1
//   Noise1Sampler s0       1
//

    ps_3_0
    def c0, -0.5, 0, 12, 0.5
    def c1, 0.125, 0, -1, 1
    defi i0, 2, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_2d s0
    add r0, c0.x, v0.xyxy
    dp2add r1.x, r0.zwzw, r0.zwzw, c0.y
    pow r2.x, r1.x, c70.x
    rsq r1.x, r1.x
    mul r0, r0, r1.x
    mul r0, r0, r2.x
    mad r0, r0, c0.z, c0.w
    mul r1, r0, c1.x
    mov r0.x, c72.x
    mul r2.xy, r0.x, c64
    mul r2.zw, r0.x, c65.xyxy
    mad r0, r0.zwzw, c1.x, r2
    mov r3.x, c66.x
    mov r3.z, c67.x
    mul r4, r1, r3.xxzz
    mad r1, r1, r3.xxzz, r2
    texld r5, r0, s0
    texld r0, r0.zwzw, s0
    texld r6, r1, s0
    texld r1, r1.zwzw, s0
    mov r5.xz, r5.xyyw
    mov r5.yw, r0.xxzy
    mov r0.w, c0.w
    mul r0.x, r0.w, c71.x
    mov r6.xz, r6.xyyw
    mov r6.yw, r1.xxzy
    dp2add r0.y, r6, r0.x, c0.y
    dp2add r0.y, r5, c0.w, r0.y
    dp2add r0.z, r6.zwzw, r0.x, c0.y
    dp2add r0.z, r5.zwzw, c0.w, r0.z
    mul r1, r3.xxzz, r4
    mul r0.x, r0.x, c71.x
    mov r4, r1
    mov r5.xy, r0.yzzw
    mov r0.w, r0.x
    rep i0
      add r6, r2, r4
      mul r7, r3.xxzz, r4
      mad r8, r4, r3.xxzz, r2
      texld r9, r6, s0
      texld r6, r6.zwzw, s0
      texld r10, r8, s0
      texld r8, r8.zwzw, s0
      mov r9.xz, r9.xyyw
      mov r9.yw, r6.xxzy
      dp2add r3.y, r9, r0.w, r5.x
      dp2add r3.w, r9.zwzw, r0.w, r5.y
      mul r5.w, r0.w, c71.x
      mov r6.xz, r10.xyyw
      mov r6.yw, r8.xxzy
      dp2add r5.x, r6, r5.w, r3.y
      dp2add r5.y, r6.zwzw, r5.w, r3.w
      mul r4, r3.xxzz, r7
      mul r0.w, r5.w, c71.x
    endrep
    add r0.x, -r0.y, r5.x
    add r5.z, r0.x, r0.x
    add_sat r0.xyz, r5, -c68.x
    mul r0.xy, r0, c69.x
    mov r1.zw, c1
    mad r0.z, r0.z, c69.x, r1.z
    mad r0.w, c73.x, r0.z, r1.w
    mov_sat oC0.xyz, r0.xyww
    mov oC0.w, c1.w

// approximately 78 instruction slots used (8 texture, 70 arithmetic)
 