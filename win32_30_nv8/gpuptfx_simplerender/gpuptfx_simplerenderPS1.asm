//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D DiffuseSampler;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   DiffuseSampler s0       1
//

    ps_3_0
    dcl_texcoord v0.xy
    dcl_2d s0
    texld oC0, v0, s0

// approximately 1 instruction slot used (1 texture, 0 arithmetic)
