//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float4 g_ImposterSize;
//   sampler2D imposterSampler;
//   float3 normTable[16];
//
//
// Registers:
//
//   Name            Reg   Size
//   --------------- ----- ----
//   g_ImposterSize  c66      1
//   normTable       c72     16
//   imposterSampler s0       1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0 // LogDepth constants
    def c0, 15.9377499, 16, 255.003998, 0.0625
    def c1, -0, -1, -2, -3
    def c2, -4, -5, -6, -7
    def c3, -8, -9, -10, -11
    def c4, -12, -13, -14, -15
    def c5, -1, 1, 0, -0
    def c6, 9.99999975e-006, 0.5, 0, 0
    dcl_color v0.w
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_texcoord4 v5
    dcl_texcoord5 v6.xyz
    dcl_texcoord6 v7.xyz
    dcl_texcoord7 v8.xyz
    dcl_texcoord9 v9
    dcl_2d s0
    texld r0, v1, s0
    mul r1, r0, c0.x
    frc r1, r1
    mul r1, r1, c0.y
    mad r0, r0, c0.z, -r1
    mul r0, r0, c0.w
    dp4 r2.x, r0, v5
    dp4 r0.x, r0, v3
    dp4 r0.y, r1, v4
    dp4 r0.z, r1, v2
    add r0.x, r0.x, r0.z
    add r0.y, r2.x, r0.y
    mov_sat r0.z, r0.y
    mul r0.z, r0.z, v1.w
    mov_sat r0.w, r0.x
    mad r0.z, r0.w, v1.z, r0.z
    mul oC0.w, r0.z, v0.w
    frc r0.z, r0.x
    add r0.x, r0.x, -r0.z
    add r1, r0.x, c1
    mov r2, c5
    cmp r3.xyz, -r1_abs.x, c72, r2.z
    cmp r3.xyz, -r1_abs.y, c73, r3
    cmp r1.xyz, -r1_abs.z, c74, r3
    cmp r1.xyz, -r1_abs.w, c75, r1
    add r3, r0.x, c2
    cmp r1.xyz, -r3_abs.x, c76, r1
    cmp r1.xyz, -r3_abs.y, c77, r1
    cmp r1.xyz, -r3_abs.z, c78, r1
    cmp r1.xyz, -r3_abs.w, c79, r1
    add r3, r0.x, c3
    add r4, r0.x, c4
    cmp r0.xzw, -r3_abs.x, c80.xyyz, r1.xyyz
    cmp r0.xzw, -r3_abs.y, c81.xyyz, r0
    cmp r0.xzw, -r3_abs.z, c82.xyyz, r0
    cmp r0.xzw, -r3_abs.w, c83.xyyz, r0
    cmp r0.xzw, -r4_abs.x, c84.xyyz, r0
    cmp r0.xzw, -r4_abs.y, c85.xyyz, r0
    cmp r0.xzw, -r4_abs.z, c86.xyyz, r0
    cmp r0.xzw, -r4_abs.w, c87.xyyz, r0
    frc r1.x, r0.y
    add r0.y, r0.y, -r1.x
    add r1, r0.y, c1
    cmp r3.xyz, -r1_abs.x, c72, r2.z
    cmp r3.xyz, -r1_abs.y, c73, r3
    cmp r1.xyz, -r1_abs.z, c74, r3
    cmp r1.xyz, -r1_abs.w, c75, r1
    add r3, r0.y, c2
    cmp r1.xyz, -r3_abs.x, c76, r1
    cmp r1.xyz, -r3_abs.y, c77, r1
    cmp r1.xyz, -r3_abs.z, c78, r1
    cmp r1.xyz, -r3_abs.w, c79, r1
    add r3, r0.y, c3
    add r4, r0.y, c4
    cmp r1.xyz, -r3_abs.x, c80, r1
    cmp r1.xyz, -r3_abs.y, c81, r1
    cmp r1.xyz, -r3_abs.z, c82, r1
    cmp r1.xyz, -r3_abs.w, c83, r1
    cmp r1.xyz, -r4_abs.x, c84, r1
    cmp r1.xyz, -r4_abs.y, c85, r1
    cmp r1.xyz, -r4_abs.z, c86, r1
    cmp r1.xyz, -r4_abs.w, c87, r1
    mul r1.xyz, r1, v1.w
    mad r0.xyz, r0.xzww, v1.z, r1
    add r0.xyz, r0, c6.x
    nrm r1.xyz, r0
    mul r0.xyz, r1.y, v7
    mad r0.xyz, v6, r1.x, r0
    mad r0.xyz, v8, r1.z, r0
    mad oC1.xyz, r0, c6.y, c6.y
    mad r0, c66.w, r2.xyzz, r2.ywww
    texldl r0, r0, s0
    mov oC0.xyz, r0
    mov oC1.w, c5.z
    mov oC2, c6.zyyz
    mov oC3, c5.z
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

// approximately 79 instruction slots used (3 texture, 76 arithmetic)
