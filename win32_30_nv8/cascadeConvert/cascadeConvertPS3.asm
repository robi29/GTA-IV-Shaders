//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D ConvertSampler;
//   float4 gShadowParam18192021;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gShadowParam18192021 c53      1
//   ConvertSampler       s0       1
//

    ps_3_0
    def c0, 0.200000003, 0.333333343, 0, 0
    def c1, -0.25, -2, 0, -1
    dcl_texcoord v0.xy
    dcl_2d s0
    mov r0.yzw, c1
    mad r1.xy, c53.x, r0_abs.yzzw, v0
    texld r1, r1, s0
    mad r0.xy, c53.x, r0.yzzw, v0
    texld r2, r0, s0
    mad r0.xy, c53.x, r0.wzzw, v0
    texld r3, r0, s0
    add r0.xy, r2, r3
    texld r2, v0, s0
    add r0.xy, r0, r2
    add r1.zw, r3.xyxy, r2.xyxy
    mad r0.zw, c53.x, r0_abs.xywz, v0.xyxy
    texld r2, r0.zwzw, s0
    add r0.xy, r0, r2
    add r0.zw, r1, r2.xyxy
    mul r0.zw, r0, c0.y
    add r0.xy, r1, r0
    mul r0.xy, r0, c0.x
    add r1.x, c1.x, v0.x
    cmp oC0.xy, r1.x, r0.zwzw, r0
    mov oC0.zw, -c1.w

// approximately 21 instruction slots used (5 texture, 16 arithmetic)
