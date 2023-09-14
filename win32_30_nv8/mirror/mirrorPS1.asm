//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D ReflectTextureSampler;
//   float gInvColorExpBias;
//   float4 globalScalars;
//
//
// Registers:
//
//   Name                  Reg   Size
//   --------------------- ----- ----
//   globalScalars         c39      1
//   gInvColorExpBias      c46      1
//   ReflectTextureSampler s0       1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0	// LogDepth constants
    def c0, -1.75, -0.5, -0.285714298, 0.5
    dcl_texcoord v0.xyw
    dcl_texcoord9 v9
    dcl_2d s0
    mov r0.y, v0_abs.w
    rcp r0.x, r0.y
    mul r0.x, r0.x, c0.y
    cmp r0.x, r0.y, r0.x, c0.z
    mad r0.xy, v0, r0.x, c0.w
    texld r0, r0, s0
    mul oC0.xyz, r0, c39.y
    mov oC0.w, c46.x
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

// approximately 8 instruction slots used (1 texture, 7 arithmetic)
