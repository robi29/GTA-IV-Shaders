//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float4 gDeferredLightColourAndIntensity;
//   sampler2D gDeferredLightSampler;
//
//
// Registers:
//
//   Name                             Reg   Size
//   -------------------------------- ----- ----
//   gDeferredLightColourAndIntensity c66      1
//   gDeferredLightSampler            s0       1
//

    ps_3_0
    def c0, 1, 0, 0.25, 0
    dcl_texcoord v0.xy
    dcl_2d s0
    mul r0.xyz, c0.xxyw, v0.xyxw
    mov r0.w, c66.z
    texldl r0, r0, s0
    abs r0.w, c66.w
    pow r1.x, r0.w, c0.z
    mul oC0.xyz, r0, r1.x
    mov oC0.w, c0.x

// approximately 10 instruction slots used (2 texture, 8 arithmetic)
