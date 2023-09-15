//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   samplerCUBE EnvironmentSampler;
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float bumpiness;
//   float4 gDirectionalColour;
//   float4 gDirectionalLight;
//   float4 gFacetCentre;
//   float4 gLightAmbient0;
//   float4 gLightAmbient1;
//   float4 gLightColB;
//   float4 gLightColG;
//   float4 gLightColR;
//   float4 gLightConeOffset;
//   float4 gLightConeOffset2;
//   float4 gLightConeScale;
//   float4 gLightConeScale2;
//   float4 gLightDir2X;
//   float4 gLightDir2Y;
//   float4 gLightDir2Z;
//   float4 gLightDirX;
//   float4 gLightDirY;
//   float4 gLightDirZ;
//   float4 gLightFallOff;
//   float4 gLightPointColB;
//   float4 gLightPointColG;
//   float4 gLightPointColR;
//   float4 gLightPointFallOff;
//   float4 gLightPointPosX;
//   float4 gLightPointPosY;
//   float4 gLightPointPosZ;
//   float4 gLightPosX;
//   float4 gLightPosY;
//   float4 gLightPosZ;
//   row_major float4x4 gShadowMatrix;
//   float4 gShadowParam0123;
//   float4 gShadowParam14151617;
//   float4 gShadowParam18192021;
//   float4 gShadowParam4567;
//   float4 gShadowParam891113;
//   sampler2D gShadowZSamplerDir;
//   row_major float4x4 gViewInverse;
//   float4 globalScalars;
//   float reflectivePower;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gViewInverse         c12      4
//   gDirectionalLight    c17      1
//   gDirectionalColour   c18      1
//   gLightPosX           c19      1
//   gLightPosY           c20      1
//   gLightPosZ           c21      1
//   gLightDirX           c22      1
//   gLightDirY           c23      1
//   gLightDirZ           c24      1
//   gLightFallOff        c25      1
//   gLightConeScale      c26      1
//   gLightConeOffset     c27      1
//   gLightColR           c29      1
//   gLightColG           c30      1
//   gLightColB           c31      1
//   gLightPointPosX      c32      1
//   gLightPointPosY      c33      1
//   gLightPointPosZ      c34      1
//   gLightPointColR      c35      1
//   gLightPointFallOff   c36      1
//   gLightAmbient0       c37      1
//   gLightAmbient1       c38      1
//   globalScalars        c39      1
//   gShadowParam18192021 c53      1
//   gFacetCentre         c54      1
//   gShadowParam14151617 c56      1
//   gShadowParam0123     c57      1
//   gShadowParam4567     c58      1
//   gShadowParam891113   c59      1
//   gShadowMatrix        c60      4
//   gLightPointColG      c64      1
//   gLightPointColB      c65      1
//   bumpiness            c66      1
//   gLightDir2X          c67      1
//   gLightDir2Y          c68      1
//   gLightDir2Z          c69      1
//   gLightConeScale2     c70      1
//   gLightConeOffset2    c71      1
//   reflectivePower      c72      1
//   TextureSampler       s0       1
//   BumpSampler          s1       1
//   EnvironmentSampler   s2       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c127, 0.9999999, 1, 0, 0	// LogDepth constants
    def c0, 1, -0.5, 9.99999975e-006, -0.00999999978
    def c1, 100, -0.5, 0.5, -0.25
    def c2, 0.9, 1, 0, 1.5
    def c3, 0.0833333358, -0.100000001, 1.11111116, 3.99600005
    def c4, 4, 0.125, 0, 0
    def c5, 1, -1, 0, -0
    def c6, 0, 0, 0, 0.5
    def c7, 0.2703204087, 0.4206267664, 0.4548159977, 0.2077075065
    def c8, 0.4949107209, -0.07115741914, 0.3778747872, -0.327430367
    def c9, 0.1408662784, -0.4797464868, -0.1408662784, -0.4797464868
    def c10, -0.3778747872, -0.327430367, -0.4949107209, -0.07115741914
    def c11, -0.4548159977, 0.2077075065, -0.2703204087, 0.4206267664
    def c98, 0.5, 2, 0.1, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3.xyz
    dcl_texcoord5 v4.xyz
    dcl_color v5
    dcl_texcoord6 v6.xyz
    dcl vPos.xy
    dcl_texcoord9 v9
    dcl_2d s0
    dcl_2d s1
    dcl_cube s2
    dcl_2d s10
    dcl_2d s15
    texld r0, v0, s1
    add r0.z, -r0.w, c0.x
    add r0.z, -r0.x, r0.z
    cmp r0.xy, r0.z, r0.wyzw, r0
    texld r1, v0, s0
    add r0.zw, r0.xyxy, c0.y
    mul r0.zw, r0, c66.x
    dp2add r0.x, r0, -r0, c0.x
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    mul r2.xyz, r0.z, v3
    mad r0.xyz, v1, r0.x, r2
    mad r0.xyz, r0.w, v4, r0
    add r0.xyz, r0, c0.z
    nrm r2.xyz, r0
    add r0.xyz, c0.z, v2.xzyw
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    mul r0.xyz, r0, r0.w
    dp3 r0.w, -r0.xzyw, r2
    add r0.w, r0.w, r0.w
    mad r0.xyz, r2.xzyw, -r0.w, -r0
    add r0.xyz, r0, c0.z
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    mul r0.xyz, r0, r0.w
    texld r0, r0, s2
    mul r0.xyz, r0, c72.x
    mul r3, r1, v5
    mad r0.w, r1.w, v5.w, c0.w
    rcp r1.x, r3.w
    cmp r0.w, r0.w, r1.x, c1.x
    mad r3.xyz, r0, r0.w, r3
    mad_sat r0.x, r2.z, c1.y, c1.z
    mov r1.xyz, c38
    mad r0.xyz, r1, r0.x, c37
    mul r1.xyz, c18.w, c18
    dp3 r0.w, r2, -c17
    mul_sat r0.w, r0.w, c2.x
    mul r4.xyz, c61.xyww, v6.y
    mad r4.xyz, v6.x, c60.xyww, r4
    mad r4.xyz, v6.z, c62.xyww, r4
    add r4.xyz, r4, c63.xyww
    dp3 r1.w, c14, v6
    add r5.xyz, -r1.w, -c54
    cmp r5.yzw, r5.xxyz, c2.y, c2.z
    mov r5.x, c0.x
    dp4 r6.x, r5, c57
    dp4 r6.y, r5, c58
    dp4 r7.x, r5, c59
    dp4 r7.y, r5, c56
    mad r4.xy, r4, r6, r7
    add r5.xyz, c15, -v6
    dp3 r1.w, r5, r5
    rsq r1.w, r1.w
    rcp r1.w, r1.w
    rcp r2.w, c53.w
    mul r2.w, r1.w, r2.w
    mul r2.w, r2.w, r2.w
    mul r2.w, r2.w, c2.w
    mov r5.y, c53.y
    mul r7.xy, r5.yy, c98.xy
    add r4.z, r4.z, -c98.z
    mad r5.xz, r7.xy, c11.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r4.w, r4.z, -r6.x
    cmp r4.w, r4.w, c2.y, c2.z
    mad r5.xz, r7.xy, c11.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c2.y, c2.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c10.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c2.y, c2.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c10.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c2.y, c2.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c9.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c2.y, c2.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c9.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c2.y, c2.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c8.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c2.y, c2.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c8.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c2.y, c2.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c7.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c2.y, c2.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c7.zyww, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c2.y, c2.z
    add r4.w, r4.w, r5.x
    mad r5.xz, r7.xy, c6.xyyw, r4.xyyw
    texld r6, r5.xzzw, s15
    add r5.x, r4.z, -r6.x
    cmp r5.x, r5.x, c2.y, c2.z
    add r4.w, r4.w, r5.x
    mad r4.xy, r7.xy, c6.zwzw, r4
    texld r5, r4, s15
    add r4.x, r4.z, -r5.x
    cmp r4.x, r4.x, c2.y, c2.z
    add r4.x, r4.w, r4.x
    mad r2.w, r4.x, c3.x, r2.w
    add r1.w, r1.w, -c53.w
    cmp r4.xy, r1.w, c5, c5.zwzw
    add r1.w, r2.w, r4.y
    cmp_sat r1.w, r1.w, r2.w, r4.x
    mul r1.xyz, r1, r0.w
    mul r1.xyz, r1.w, r1
    mad r0.xyz, r0, v5.x, r1
    add r1, c19, -v6.x
    add r4, c20, -v6.y
    add r5, c21, -v6.z
    mul r6, r1, r1
    mad r6, r4, r4, r6
    mad r6, r5, r5, r6
    add r7, r6, c0.z
    rsq r8.x, r7.x
    rsq r8.y, r7.y
    rsq r8.z, r7.z
    rsq r8.w, r7.w
    mov r7.x, c0.x
    mad r6, r6, -c25, r7.x
    max r9, r6, c2.z
    mul r6, r9, r9
    mad r6, r6, r6, c3.y
    mul r9, r6, c3.z
    cmp r6, r6, r9, c2.z
    mul r9, r2.x, r1
    mad r9, r4, r2.y, r9
    mad r9, r5, r2.z, r9
    mul r6, r6, r9
    mul_sat r6, r8, r6
    mul r1, r1, -c22
    mad r1, r4, -c23, r1
    mad r1, r5, -c24, r1
    mul r1, r8, r1
    mov r4, c26
    mad_sat r1, r1, r4, c27
    mul r1, r6, r1
    dp4 r4.x, c29, r1
    dp4 r4.y, c30, r1
    dp4 r4.z, c31, r1
    add r0.xyz, r0, r4
    add r1, c32, -v6.x
    add r4, c33, -v6.y
    add r5, c34, -v6.z
    mul r6, r1, r1
    mad r6, r4, r4, r6
    mad r6, r5, r5, r6
    add r8, r6, c0.z
    rsq r9.x, r8.x
    rsq r9.y, r8.y
    rsq r9.z, r8.z
    rsq r9.w, r8.w
    mad r6, r6, -c36, r7.x
    max r7, r6, c2.z
    mul r6, r7, r7
    mad r6, r6, r6, c3.y
    mul r7, r6, c3.z
    cmp r6, r6, r7, c2.z
    mul r7, r2.x, r1
    mad r7, r4, r2.y, r7
    mad r2, r5, r2.z, r7
    mul r2, r6, r2
    mul_sat r2, r9, r2
    mul r1, r1, -c67
    mad r1, r4, -c68, r1
    mad r1, r5, -c69, r1
    mul r1, r9, r1
    mov r4, c70
    mad_sat r1, r1, r4, c71
    mul r1, r2, r1
    dp4 r2.x, c35, r1
    dp4 r2.y, c64, r1
    dp4 r2.z, c65, r1
    add r0.xyz, r0, r2
    mov r0.w, c0.x
    mul r0, r3, r0
    mul r0.w, r0.w, c39.x
    mov_sat r1.x, r0.w
    mul r1.x, r1.x, c3.w
    frc r1.y, r1.x
    mul r1.z, r1.y, c4.x
    frc r1.w, r1.z
    add r2.xy, r1.zxzw, -r1.wyzw
    mul r1.xy, c4.y, vPos
    frc r1.xy, r1_abs
    cmp r1.xy, vPos, r1, -r1
    mul r1.xy, r1, -c1.w
    mad r1.xy, r2, -c1.w, r1
    mov r1.zw, c2.z
    texldl r1, r1, s10
    cmp r1, -r1.y, -c2.y, -c2.z
    texkill r1
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

// approximately 219 instruction slots used (17 texture, 202 arithmetic)
