//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D EnvironmentSampler;
//   sampler2D TextureSampler;
//   float4 globalScalars;
//   float reflectivePower;
//   float4 stencil;
//
//
// Registers:
//
//   Name               Reg   Size
//   ------------------ ----- ----
//   globalScalars      c39      1
//   stencil            c52      1
//   reflectivePower    c66      1
//   TextureSampler     s0       1
//   EnvironmentSampler s1       1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0	// LogDepth constants
    def c0, 0.176470593, -1, -0, 9.99999975e-006
    def c1, -0.5, 0.5, 0, 0
    def c2, 0, 1, 0.25, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_color v3.xw
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    texld r0, v0, s0
    mul r0.w, r0.w, v3.w
    mul r1.x, r0.w, c39.x
    mov r2.xyz, c0
    mad r0.w, r0.w, -c39.x, r2.x
    cmp r3, r0.w, c0.y, c0.z
    texkill r3
    add r1.yzw, c0.w, v1.xxyz
    dp3 r0.w, r1.yzww, r1.yzww
    rsq r0.w, r0.w
    mul r3.xyz, r1.yzww, r0.w
    add r4.xyz, c0.w, v2
    nrm r5.xyz, r4
    dp3 r2.x, -r5, r3
    add r2.x, r2.x, r2.x
    mad r3.xyz, r3, -r2.x, -r5
    add r3.xyz, r3, c0.w
    dp3 r2.x, r3, r3
    rsq r2.x, r2.x
    mad r2.xw, r3.xyzz, r2.x, -c0.y
    mul r2.xw, r2, c1.x
    texld r3, r2.xwzw, s1
    mad oC0.xyz, r3, c66.x, r0
    mad r0.xyz, r1.yzww, r0.w, -c0.y
    mul oC1.xyz, r0, c1.y
    mov oC0.w, r1.x
    mov oC1.w, r1.x
    mad oC2.xyz, v3.x, c2.xxyw, c2.xzxw
    mov oC2.w, r1.x
    mul oC3, -r2.yzzz, c52.x
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

// approximately 32 instruction slots used (2 texture, 30 arithmetic)
