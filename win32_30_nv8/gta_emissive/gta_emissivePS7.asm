//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float emissiveMultiplier;
//   float4 globalFogColor;
//   float4 globalFogParams;
//   float4 globalScalars;
//
//
// Registers:
//
//   Name               Reg   Size
//   ------------------ ----- ----
//   globalScalars      c39      1
//   globalFogParams    c41      1
//   globalFogColor     c42      1
//   emissiveMultiplier c66      1
//   TextureSampler     s0       1
//   StippleTexture     s10      1
//

    ps_3_0
    def c0, -512, 3.99600005, 4, 0.125
    def c1, 0.25, 0, -1, -0
    def c2, 64, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.w
    dcl_texcoord3 v2.z
    dcl_color v3
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s10
    add r0, c0.x, v2.z
    texkill r0
    texld r0, v0, s0
    mul r0.w, r0.w, v3.w
    mul r0.w, r0.w, c39.x
    mov_sat r1.x, r0.w
    mul r1.x, r1.x, c0.y
    frc r1.y, r1.x
    mul r1.z, r1.y, c0.z
    frc r1.w, r1.z
    add r2.xy, r1.zxzw, -r1.wyzw
    mul r1.xy, c0.w, vPos
    frc r1.xy, r1_abs
    cmp r1.xy, vPos, r1, -r1
    mul r1.xy, r1, c1.x
    mad r1.xy, r2, c1.x, r1
    mov r1.zw, c1.y
    texldl r1, r1, s10
    cmp r1, -r1.y, c1.z, c1.w
    texkill r1
    mul r0.xyz, r0, v3
    mul r1.xyz, r0, c66.x
    add r1.w, -c41.x, v1.w
    add r2.x, -c41.x, c41.y
    rcp r2.x, r2.x
    mul_sat r1.w, r1.w, r2.x
    mov r2.x, c66.x
    mad r0.xyz, r0, -r2.x, c42
    mad r0.xyz, r1.w, r0, r1
    add r1.x, c2.x, -v1.w
    mul_sat r1.x, r1.x, c1.x
    mul oC0.w, r0.w, r1.x
    mov oC0.xyz, r0

// approximately 34 instruction slots used (3 texture, 31 arithmetic)
 