//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D TextureSampler;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   TextureSampler s0       1
//

    ps_3_0
    dcl_texcoord v0.xy
    dcl_color v1
    dcl_2d s0
    texld r0, v0, s0
    mul oC0, r0, v1

// approximately 2 instruction slots used (1 texture, 1 arithmetic)
