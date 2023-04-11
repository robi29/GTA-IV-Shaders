//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float4 gDepthFxParams;
//   float4 gDirectionalColour;
//   float4 gDirectionalLight;
//   float4 gFacetCentre;
//   float4 gLightAmbient0;
//   float4 gLightAmbient1;
//   float4 gLightColB;
//   float4 gLightColG;
//   float4 gLightColR;
//   float4 gLightConeOffset;
//   float4 gLightConeScale;
//   float4 gLightDirX;
//   float4 gLightDirY;
//   float4 gLightDirZ;
//   float4 gLightFallOff;
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
//   float4 globalFogColor;
//   float4 globalFogColorN;
//   float4 globalFogParams;
//   float4 globalScalars;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gViewInverse         c12      4
//   gDepthFxParams       c16      1
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
//   gLightAmbient0       c37      1
//   gLightAmbient1       c38      1
//   globalScalars        c39      1
//   globalFogParams      c41      1
//   globalFogColor       c42      1
//   globalFogColorN      c43      1
//   gShadowParam18192021 c53      1
//   gFacetCentre         c54      1
//   gShadowParam14151617 c56      1
//   gShadowParam0123     c57      1
//   gShadowParam4567     c58      1
//   gShadowParam891113   c59      1
//   gShadowMatrix        c60      4
//   TextureSampler       s0       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, -0.5, 0.5, -0.25, 1.33333337
    def c1, 1, 0, 1.5, 0.0833333358
    def c2, 9.99999975e-006, -0.100000001, 1.11111116, 3.99600005
    def c3, 4, 0.125, 1.00000001e-007, 0
    def c4, 0.212500006, 0.715399981, 0.0720999986, 0
    def c5, 1, -1, 0, -0
    def c6, -0.321940005, -0.932614982, -0.791558981, -0.597710013
    def c7, 0.507430971, 0.0644249991, 0.896420002, 0.412458003
    def c8, 0.519456029, 0.767022014, 0.185461, -0.893123984
    def c9, 0.962339997, -0.194983006, 0.473434001, -0.480026007
    def c10, -0.69591397, 0.457136989, -0.203345001, 0.620715976
    def c11, -0.326211989, -0.405809999, -0.840143979, -0.0735799968
    dcl_color v0.xw
    dcl_texcoord v1.xy
    dcl_texcoord1 v2.xyz
    dcl_texcoord2 v3
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s10
    dcl_2d s15
    texld r0, v1, s0
    mul r0.w, r0.w, v0.w
    mad_sat r1.x, v3.z, c0.x, c0.y
    mov r2.xyz, c38
    mad r1.xyz, r2, r1.x, c37
    mul r2.xyz, c18.w, c18
    dp3 r1.w, v3, -c17
    add r1.w, r1.w, c0.z
    mul_sat r1.w, r1.w, c0.w
    mul r3.xyz, c61.xyww, v2.y
    mad r3.xyz, v2.x, c60.xyww, r3
    mad r3.xyz, v2.z, c62.xyww, r3
    add r3.xyz, r3, c63.xyww
    dp3 r2.w, c14, v2
    add r4.xyz, -r2.w, -c54
    cmp r4.yzw, r4.xxyz, c1.x, c1.y
    mov r4.x, c1.x
    dp4 r5.x, r4, c57
    dp4 r5.y, r4, c58
    dp4 r6.x, r4, c59
    dp4 r6.y, r4, c56
    mad r3.xy, r3, r5, r6
    add r4.xyz, c15, -v2
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r2.w, r2.w
    rcp r3.w, c53.w
    mul r3.w, r2.w, r3.w
    mul r3.w, r3.w, r3.w
    mul r3.w, r3.w, c1.z
    mov r4.y, c53.y
    mad r4.xz, r4.y, c11.xyyw, r3.xyyw
    texld r5, r4.xzzw, s15
    add r4.x, r3.z, -r5.x
    cmp r4.x, r4.x, c1.x, c1.y
    mad r4.zw, r4.y, c11, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c10.xyxy, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c10, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c9.xyxy, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c9, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c8.xyxy, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c8, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c7.xyxy, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c7, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c6.xyxy, r3.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r3.z, -r5.x
    cmp r4.z, r4.z, c1.x, c1.y
    add r4.x, r4.x, r4.z
    mad r3.xy, r4.y, c6.zwzw, r3
    texld r5, r3, s15
    add r3.x, r3.z, -r5.x
    cmp r3.x, r3.x, c1.x, c1.y
    add r3.x, r4.x, r3.x
    mad r3.x, r3.x, c1.w, r3.w
    add r2.w, r2.w, -c53.w
    cmp r3.yz, r2.w, c5.xxyw, c5.xzww
    add r2.w, r3.x, r3.z
    cmp_sat r2.w, r2.w, r3.x, r3.y
    mul r2.xyz, r2, r1.w
    mul r2.xyz, r2.w, r2
    mad r1.xyz, r1, v0.x, r2
    add r2, c19, -v2.x
    add r3, c20, -v2.y
    add r4, c21, -v2.z
    mul r5, r2, r2
    mad r5, r3, r3, r5
    mad r5, r4, r4, r5
    add r6, r5, c2.x
    rsq r7.x, r6.x
    rsq r7.y, r6.y
    rsq r7.z, r6.z
    rsq r7.w, r6.w
    mov r6.x, c1.x
    mad r5, r5, -c25, r6.x
    max r8, r5, c1.y
    mul r5, r8, r8
    mad r5, r5, r5, c2.y
    mul r8, r5, c2.z
    mul r9, r2, v3.x
    mad r9, r3, v3.y, r9
    mad r9, r4, v3.z, r9
    mul r8, r8, r9
    mul r8, r7, r8
    cmp_sat r5, r5, r8, c1.y
    mul r2, r2, -c22
    mad r2, r3, -c23, r2
    mad r2, r4, -c24, r2
    mul r2, r7, r2
    mov r3, c26
    mad_sat r2, r2, r3, c27
    mul r2, r5, r2
    dp4 r3.x, c29, r2
    dp4 r3.y, c30, r2
    dp4 r3.z, c31, r2
    add r1.xyz, r1, r3
    mov r1.w, c1.x
    mul r2, r0, r1
    mul r0.w, r2.w, c39.x
    mov_sat r1.w, r0.w
    mul r1.w, r1.w, c2.w
    frc r2.w, r1.w
    mul r3.x, r2.w, c3.x
    frc r3.y, r3.x
    add r3.x, r3.x, -r3.y
    add r3.y, r1.w, -r2.w
    mul r3.zw, c3.y, vPos.xyxy
    frc r3.zw, r3_abs
    cmp r3.zw, vPos.xyxy, r3, -r3
    mul r3.zw, r3, -c0.z
    mad r3.xy, r3, -c0.z, r3.zwzw
    mov r3.zw, c1.y
    texldl r3, r3, s10
    cmp r3, -r3.y, -c1.x, -c1.y
    texkill r3
    add r1.w, c16.w, -v3.w
    add r2.w, -c16.z, c16.w
    rcp r2.w, r2.w
    mul_sat r1.w, r1.w, r2.w
    add r1.w, -r1.w, c1.x
    add r3.xy, -r6.x, c16
    mul r2.w, r1.w, r3.y
    mad r1.w, r1.w, r3.x, c1.x
    dp3 r2.x, r2, c4
    mad r0.xyz, r0, r1, -r2.x
    mad r0.xyz, r1.w, r0, r2.x
    add r1.x, r2.x, c3.z
    pow r3.x, r1_abs.x, r2.w
    mul r1.xyz, r0, r3.x
    rcp r1.w, c41.x
    mul_sat r1.w, r1.w, v3.w
    add r2.x, -c41.x, v3.w
    add r2.y, -c41.x, c41.y
    rcp r2.y, r2.y
    mul_sat r2.x, r2.x, r2.y
    lrp r3.y, c41.w, r1.w, r2.x
    add r1.w, r3.y, c41.z
    mov r4.xyz, c43
    add r2.yzw, -r4.xxyz, c42.xxyz
    mad r2.xyz, r2.x, r2.yzww, c43
    mad r0.xyz, r0, -r3.x, r2
    mad oC0.xyz, r1.w, r0, r1
    mov oC0.w, r0.w

// approximately 182 instruction slots used (15 texture, 167 arithmetic)
 