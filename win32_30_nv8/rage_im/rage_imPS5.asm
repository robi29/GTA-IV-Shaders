//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D TransparentSrcMapSampler;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   TransparentSrcMapSampler s0       1
//

    ps_3_0
    dcl_texcoord v0.xy
    dcl_2d s0
    texld oC0, v0, s0

// approximately 1 instruction slot used (1 texture, 0 arithmetic)
