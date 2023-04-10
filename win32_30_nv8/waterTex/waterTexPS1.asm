//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D NoiseTextureSampler;
//   sampler2D NormalTextureSampler;
//   float waterSimParam[8];
//   float waterTexResValue;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   waterTexResValue     c66      1
//   waterSimParam        c72      8
//   NormalTextureSampler s0       1
//   NoiseTextureSampler  s1       1
//

    ps_3_0
    def c0, 0.00390625, 0.707106769, 2, -1
    def c1, 0.146446615, 0.5, 0, -0.5
    dcl_texcoord v0.xy
    dcl_color v1
    dcl_2d s0
    dcl_2d s1
    mov r0.xy, v0
    add r0.zw, r0.xyxy, v1.xyxy
    texld r1, r0.zwzw, s1
    mad r0.z, r1.x, c0.z, c0.w
    add r0.w, r1.z, -v1.z
    mul r0.z, r0.z, v1.w
    mul r0.z, r0.z, c77.x
    cmp r0.z, r0.w, c1.z, r0.z
    mov r1.x, c0.x
    mad r2.yz, c66.x, -r1.x, r0.xyxw
    texld r3, r2.zyzw, s0
    mov r2.xw, v0.yyzx
    texld r4, r2.wyzw, s0
    texld r5, r2.zxzw, s0
    mad r0.w, r3.x, c0.y, r4.x
    mov r3.z, r2.y
    mad r3.x, c66.x, r1.x, r0.x
    texld r6, r3.xzzw, s0
    mad r0.x, r6.x, c0.y, r0.w
    add r0.x, r5.x, r0.x
    mov r3.y, v0.y
    texld r6, r3, s0
    add r0.x, r0.x, r6.x
    mad r2.x, c66.x, r1.x, r0.y
    texld r1, r2.zxzw, s0
    mad r0.x, r1.x, c0.y, r0.x
    mov r2.y, v0.x
    texld r1, r2.yxzw, s0
    mov r3.w, r2.x
    texld r2, r3.xwzw, s0
    add r0.x, r0.x, r1.x
    mad r0.x, r2.x, c0.y, r0.x
    texld r2, v0, s0
    mad r0.x, r0.x, c1.x, -r2.x
    add r0.y, -r2.x, c1.y
    mul r0.y, r0.y, c73.x
    mad r0.x, r0.x, c72.x, r0.y
    add r0.x, r0.z, r0.x
    mul r0.x, r0.x, c75.x
    mul r0.y, r0.x, c79.x
    mad oC0.y, r0.x, c79.x, r2.y
    mul r0.x, r0.y, c79.x
    add r0.y, r2.y, c1.w
    mul r0.y, r0.y, c76.x
    mad r0.y, r0.y, c79.x, r2.x
    mad oC0.x, r0.x, c1.y, r0.y
    add r0.x, -r5.x, r2.x
    add r0.y, r6.x, -r2.x
    add r0.x, r0.x, r0.y
    mad oC0.z, r0.x, c1.y, c1.y
    add r0.x, -r4.x, r2.x
    add r0.y, r1.x, -r2.x
    add r0.x, r0.x, r0.y
    mad oC0.w, r0.x, c1.y, c1.y

// approximately 54 instruction slots used (10 texture, 44 arithmetic)
 