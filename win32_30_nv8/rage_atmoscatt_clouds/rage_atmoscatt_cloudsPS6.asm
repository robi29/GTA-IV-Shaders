//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float3 HDRExposureClamp;
//   float HDRSunExposure;
//   float3 SunCentre;
//   float3 SunColor;
//   float4 SunDirection;
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   SunCentre        c64      1
//   SunDirection     c65      1
//   SunColor         c66      1
//   HDRSunExposure   c67      1
//   HDRExposureClamp c68      1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0 // LogDepth constants
    def c0, 1, 0.5, -2, 3
    def c1, 4, 0, 0, 0
    dcl_texcoord v0.w
    dcl_texcoord1 v1.zw
    dcl_texcoord9 v9
    mov r0.xy, v1.zwzw
    mov r0.z, v0.w
    nrm r1.xyz, r0
    nrm r0.xyz, c65
    dp3 r0.x, r1, r0
    add r0.x, r0.x, c0.x
    mov r0.y, c0.y
    mad r0.x, r0.x, r0.y, -c64.x
    add r0.y, -c64.x, c64.y
    rcp r0.y, r0.y
    mul_sat r0.x, r0.y, r0.x
    mad r0.y, r0.x, c0.z, c0.w
    mul r0.x, r0.x, r0.x
    mul r0.x, r0.x, r0.y
    mul r0.x, r0.x, c64.z
    mul r0.x, r0.x, c1.x
    mul r0.xyz, r0.x, c66
    mul r1.xyz, r0, r0
    mad r0.xyz, r1, r1, r0
    mul r0.xyz, r0, c67.x
    min oC0.xyz, c68, r0
    mov oC0.w, c0.x
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

// approximately 26 instruction slots used
