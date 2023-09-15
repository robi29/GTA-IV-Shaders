//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D SpecSampler;
//   sampler2D TextureSampler;
//   float bumpiness;
//   float4 globalScalars;
//   float parallaxScaleBias;
//   float3 specMapIntMask;
//   float specularColorFactor;
//   float specularFactor;
//   float4 stencil;
//
//
// Registers:
//
//   Name                Reg   Size
//   ------------------- ----- ----
//   globalScalars       c39      1
//   stencil             c52      1
//   parallaxScaleBias   c66      1
//   specularFactor      c72      1
//   specularColorFactor c73      1
//   specMapIntMask      c74      1
//   bumpiness           c75      1
//   TextureSampler      s0       1
//   BumpSampler         s1       1
//   SpecSampler         s2       1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0	// LogDepth constants
    def c0, 9.99999975e-006, 0.5, 0.176470593, -0.5
    def c1, 0.001953125, 0, 0, 0
    def c2, -1, -0, 1, -0.00200000009
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord4 v2.xyz
    dcl_texcoord5 v3.xyz
    dcl_color v4.xw
    dcl_texcoord7 v5.xyz
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    texld r0, v0, s1
    add r0.xyz, c0.x, v5
    dp3 r0.z, r0, r0
    rsq r0.z, r0.z
    mul r0.xy, r0, r0.z
    mov r1.yz, c0
    mul r0.z, r1.y, c66.x
    mad r0.z, r0.w, c66.x, -r0.z
    mad r0.xy, r0.z, r0, v0
    texld r2, r0, s0
    mul r0.z, r2.w, v4.w
    mul r0.w, r0.z, c39.x
    mad r0.z, r0.z, -c39.x, r1.z
    cmp r1, r0.z, c2.x, c2.y
    texkill r1
    texld r1, r0, s1
    add r0.xy, r1, c0.w
    mul r0.xy, r0, c75.x
    dp2add r0.z, r1, -r1, c2.z
    rsq r0.z, r0.z
    rcp r0.z, r0.z
    mul r3.xyz, r0.x, v2
    mad r3.xyz, v1, r0.z, r3
    mad r0.xyz, r0.y, v3, r3
    add r0.xyz, r0, c0.x
    dp3 r1.z, r0, r0
    rsq r1.z, r1.z
    texld r3, v0, s2
    mul r1.w, r3.w, c72.x
    dp3 r2.w, r3, c74
    mul r2.w, r2.w, c73.x
    dp2add r1.x, r1, r1, c2.w
    cmp r1.x, r1.x, -c2.x, -c2.y
    mul oC0.xyz, r2, r1.x
    mul oC2.z, r1.x, v4.x
    mul r1.x, r2.w, r1.x
    mad r0.xyz, r0, r1.z, c2.z
    mul oC1.xyz, r0, c0.y
    mul oC2.x, r1.x, c0.y
    mul r0.x, r1.w, c1.x
    rsq r0.x, r0.x
    rcp oC2.y, r0.x
    mov oC0.w, r0.w
    mov oC1.w, r0.w
    mov oC2.w, r0.w
    mov r0.xy, c2
    mul oC3, -r0.xyyy, c52.x
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

// approximately 49 instruction slots used (4 texture, 45 arithmetic)
