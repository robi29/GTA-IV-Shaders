//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D DiffuseTexSampler;
//   float HybridAdd;
//   float3 LightColor;
//   sampler2D NormalMapTexSampler;
//
//
// Registers:
//
//   Name                Reg   Size
//   ------------------- ----- ----
//   HybridAdd           c64      1
//   LightColor          c65      1
//   DiffuseTexSampler   s0       1
//   NormalMapTexSampler s1       1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0	// LogDepth constants
    def c0, 2, -1, 1, 0
    dcl_color v0
    dcl_texcoord v1
    dcl_texcoord1 v2.xy
    dcl_texcoord2 v3.x
    dcl_texcoord3 v4.x
    dcl_texcoord5 v5.xyz
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    texld r0, v2, s1
    mad r0.xyz, r0, c0.x, c0.y
    dp3_sat r0.x, r0, v5
    mul r0.xyz, r0.x, c65
    texld r1, v1, s0
    texld r2, v1.zwzw, s0
    mov_sat r0.w, v3.x
    lrp r3, r0.w, r2, r1
    mul r1, r3, v0
    mad r1.xyz, r0, r3, r1
    mul r0.xyz, r1.w, r1
    abs r2.x, c64.x
    add r2.y, c0.z, -v4.x
    mul r0.w, r1.w, r2.y
    cmp oC0, -r2.x, r1, r0
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
