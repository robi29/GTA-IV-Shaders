//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D TextureSampler_layer0;
//   sampler2D TextureSampler_layer1;
//   sampler2D TextureSampler_layer2;
//   float4 globalScalars;
//   float4 stencil;
//
//
// Registers:
//
//   Name                  Reg   Size
//   --------------------- ----- ----
//   globalScalars         c39      1
//   stencil               c52      1
//   TextureSampler_layer0 s0       1
//   TextureSampler_layer1 s1       1
//   TextureSampler_layer2 s2       1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0 // LogDepth constants
    def c0, 0.5, 0, 1, 0.1 // reflection intensity
    dcl_texcoord v0.xy
    dcl_texcoord3 v1.xy
    dcl_texcoord4 v2.xy
    dcl_color v3
    dcl_color1 v4.yz
    dcl_texcoord2 v5.xyz
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    texld r0, v0, s0
    texld r1, v1, s1
    mul r0.w, r1.w, v4.y
    lrp r2.xyz, r0.w, r1, r0
    texld r0, v2, s2
    mul r0.w, r0.w, v4.z
    lrp r1.xyz, r0.w, r0, r2
    mul oC0.xyz, r1, v3
    mov oC0.w, c39.x
    mad oC1.xyz, v5, c0.x, c0.x
    mov oC1.w, c39.x
    mad oC2.xyz, v3.w, c0.yyzw, c0.ywyw
    mov oC2.w, c39.x
    mov r0.yz, c0
    mul oC3, r0.zyyy, c52.x
    // ----------------------------------------------------------------- Linear2Log -----------------------------------------------------------------
    if_ne v9.y, c127.y
        rcp r20.z, c128.x
        mul r20.x, v9.w, r20.z
        mul r20.y, c128.y, r20.z
        log r20.x, r20.x
        log r20.y, r20.y
        rcp r20.y, r20.y
    else
        mov r20.x, v9.z
        rcp r20.y, v9.w
    endif
    mul oDepth, r20.x, r20.y
    // ----------------------------------------------------------------------------------------------------------------------------------------------

// approximately 15 instruction slots used (3 texture, 12 arithmetic)
