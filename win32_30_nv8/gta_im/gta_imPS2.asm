//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float4 globalScalars;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   globalScalars  c39      1
//   TextureSampler s0       1
//   StippleTexture s10      1
//

    ps_3_0
    def c0, 3.99600005, 4, 0.125, 0.25
    def c1, 0, -1, -0, 0
    dcl_texcoord v0.xy
    dcl_color v1
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s10
    mov_sat r0.x, c39.x
    mul r0.x, r0.x, c0.x
    frc r0.y, r0.x
    mul r0.z, r0.y, c0.y
    frc r0.w, r0.z
    add r1.xy, r0.zxzw, -r0.wyzw
    mul r0.xy, c0.z, vPos
    frc r0.xy, r0_abs
    cmp r0.xy, vPos, r0, -r0
    mul r0.xy, r0, c0.w
    mad r0.xy, r1, c0.w, r0
    mov r0.zw, c1.x
    texldl r0, r0, s10
    cmp r0, -r0.y, c1.y, c1.z
    texkill r0
    texld r0, v0, s0
    mul r0, r0, v1
    mul r0.w, r0.w, c39.x
    mul oC0.xyz, r0, c39.y
    mov oC0.w, r0.w

// approximately 21 instruction slots used (3 texture, 18 arithmetic)
 