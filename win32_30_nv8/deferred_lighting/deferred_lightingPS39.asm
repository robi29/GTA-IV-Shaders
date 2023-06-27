//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D gDeferredLightSampler;
//   float4 gooDeferredLightScreenSize;
//
//
// Registers:
//
//   Name                       Reg   Size
//   -------------------------- ----- ----
//   gooDeferredLightScreenSize c66      1
//   gDeferredLightSampler      s0       1
//

    ps_3_0
    def c0, 1, 0, 0, 0
    dcl vPos.xy
    dcl_2d s0
    mul r0.x, c66.z, vPos.x
    mov r0.w, c66.w
    mad r0.y, vPos.y, -r0.w, c0.x
    texld oC0, r0, s0

// approximately 4 instruction slots used (1 texture, 3 arithmetic)
