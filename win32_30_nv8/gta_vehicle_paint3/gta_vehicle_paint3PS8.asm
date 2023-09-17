//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D DirtSampler;
//   sampler2D TextureSampler;
//   sampler2D TextureSampler2;
//   float3 dirtColor;
//   float dirtLevel;
//   float4 globalScalars;
//   float3 matDiffuseColor;
//
//
// Registers:
//
//   Name            Reg   Size
//   --------------- ----- ----
//   globalScalars   c39      1
//   matDiffuseColor c66      1
//   dirtLevel       c72      1
//   dirtColor       c73      1
//   TextureSampler  s0       1
//   TextureSampler2 s1       1
//   DirtSampler     s2       1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0 // LogDepth constants
    def c0, 0, 0, 0, 0
    dcl_texcoord v0
    dcl_color v1
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    texld r0, v0, s0
    mul r0.xyz, r0, c66
    texld r1, v0.zwzw, s1
    lrp r2.xyz, r1.w, r1, r0
    mul r2.w, r0.w, c39.x
    mul r0, r2, v1
    mov r1.x, c72.x
    if_lt -r1.x, c0.x
      texld r1, v0, s2
      mul r1.y, r1.x, c72.x
      lrp r2.xyz, r1.y, c73, r0
      cmp r0.xyz, -r1.x, r0, r2
    endif
    mov oC0, r0
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

// approximately 16 instruction slots used (3 texture, 13 arithmetic)
