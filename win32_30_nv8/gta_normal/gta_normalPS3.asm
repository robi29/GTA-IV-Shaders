//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D TextureSampler;
//   float bumpiness;
//   float4 globalScalars;
//   float specularColorFactor;
//   float specularFactor;
//   float4 stencil;
//
//
// Registers:
//
//   Name                Reg   Size
//   ------------------- ----- ----
//   globalScalars       c39      1
//   stencil             c52      1
//   specularFactor      c66      1
//   specularColorFactor c72      1
//   bumpiness           c73      1
//   TextureSampler      s0       1
//   BumpSampler         s1       1
//

    ps_3_0
    def c0, -0.5, 9.99999975e-006, 0.5, 0.001953125
    def c1, 0.176470593, -1, -0, 1
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord4 v2.xyz
    dcl_texcoord5 v3.xyz
    dcl_color v4.xw
    dcl_2d s0
    dcl_2d s1
    texld r0, v0, s0
    mul r0.w, r0.w, v4.w
    mul r1.x, r0.w, c39.x
    mov r2.xyz, c1
    mad r0.w, r0.w, -c39.x, r2.x
    cmp r3, r0.w, c1.y, c1.z
    texkill r3
    texld r3, v0, s1
    add r0.w, -r3.w, c1.w
    add r0.w, -r3.x, r0.w
    cmp r1.yz, r0.w, r3.xwyw, r3.xxyw
    add r2.xw, r1.yyzz, c0.x
    mul r2.xw, r2, c73.x
    dp2add r0.w, r1.yzzw, -r1.yzzw, c1.w
    rsq r0.w, r0.w
    rcp r0.w, r0.w
    mul r1.yzw, r2.x, v2.xxyz
    mad r1.yzw, v1.xxyz, r0.w, r1
    mad r1.yzw, r2.w, v3.xxyz, r1
    add r1.yzw, r1, c0.y
    dp3 r0.w, r1.yzww, r1.yzww
    rsq r0.w, r0.w
    mad r1.yzw, r1, r0.w, c1.w
    mul oC1.xyz, r1.yzww, c0.z
    mov r1.zw, c0
    mul r0.w, r1.w, c66.x
    rsq r0.w, r0.w
    rcp oC2.y, r0.w
    mov oC0.xyz, r0
    mov oC0.w, r1.x
    mov oC1.w, r1.x
    mul oC2.x, r1.z, c72.x
    mov oC2.z, v4.x
    mov oC2.w, r1.x
    mul oC3, -r2.yzzz, c52.x

// approximately 36 instruction slots used (2 texture, 34 arithmetic)
 