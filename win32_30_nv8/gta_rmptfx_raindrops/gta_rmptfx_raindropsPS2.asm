//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D DiffuseTexSampler;
//   sampler2D FrameMapTexSampler;
//   sampler2D NormalMapTexSampler;
//   float SpecularPower;
//   float gBlurAmount;
//   float gDiffuse;
//   float4 gDirectionalColour;
//   float4 gDirectionalLight;
//   float gLightIntensityClamp;
//   float gNormalArc;
//   float gNormalHeight;
//   float gRefraction;
//   float gShadowAmount;
//   float4 globalScreenSize;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gDirectionalLight    c17      1
//   gDirectionalColour   c18      1
//   globalScreenSize     c44      1
//   gNormalArc           c66      1
//   gLightIntensityClamp c72      1
//   gDiffuse             c73      1
//   gBlurAmount          c74      1
//   gRefraction          c75      1
//   gNormalHeight        c76      1
//   SpecularPower        c77      1
//   gShadowAmount        c78      1
//   DiffuseTexSampler    s0       1
//   FrameMapTexSampler   s1       1
//   NormalMapTexSampler  s2       1
//

    ps_3_0
    def c0, 0.5, 2, -1, 0.159154937
    def c1, 6.28318548, -3.14159274, 0, 10
    def c2, 9.99999975e-006, 0.125, 0, 0
    def c3, -0.00326212007, -0.00405809982, -0.00695913984, 0.00457136985
    def c4, -0.00203344994, 0.00620716019, 0.00962339994, -0.00194982998
    def c5, 0.00519456016, 0.00767021999, 0.00185461005, -0.00893124007
    def c6, 0.00896419957, 0.00412457995, -0.00791558996, -0.00597710023
    dcl_color v0
    dcl_texcoord v1
    dcl_texcoord1 v2.xy
    dcl_texcoord2 v3.xyz
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    mad r0.x, v3.z, c0.w, c0.x
    frc r0.x, r0.x
    mad r0.x, r0.x, c1.x, c1.y
    sincos r1.xy, r0.x
    texld r0, v2, s2
    mad r0.xyz, r0, c0.y, c0.z
    mul r0.w, r1.y, r0.y
    mad r2.x, r0.x, r1.x, -r0.w
    dp2add r2.y, r0, r1.yxzw, c1.z
    mov r0.w, c1.w
    mul r0.x, r0.w, c75.x
    mul r0.yw, r2.xxzy, r0.x
    mul r1.x, r0.z, c76.x
    mov r2.z, r0.z
    mul r1.yzw, r2.xxyz, r0.x
    mov r0.x, c2.x
    mad r1.yzw, r1, c76.x, r0.x
    nrm r2.xyz, r1.yzww
    dp3 r0.x, r2, -c17
    max r1.y, r0.x, -c72.x
    min r0.x, c72.x, r1.y
    mul r0.yz, r0.xyww, r1.x
    mul r0.y, r0.y, c44.z
    add r1.xy, -c0.z, v3
    mad r2.x, r1.x, c0.x, r0.y
    mad r0.y, r1.y, -c0_abs.x, c0_abs.z
    mad r2.y, r0.z, c44.w, r0.y
    mov r1.x, c74.x
    mad r0.yz, r1.x, c3.xxyw, r2.xxyw
    texld r3, r0.yzzw, s1
    texld r4, r2, s1
    add r0.yzw, r3.xxyz, r4.xxyz
    mad r1.yz, r1.x, c3.xzww, r2.xxyw
    texld r3, r1.yzzw, s1
    add r0.yzw, r0, r3.xxyz
    mad r1.yz, r1.x, c4.xxyw, r2.xxyw
    texld r3, r1.yzzw, s1
    add r0.yzw, r0, r3.xxyz
    mad r1.yz, r1.x, c4.xzww, r2.xxyw
    texld r3, r1.yzzw, s1
    add r0.yzw, r0, r3.xxyz
    mad r1.yz, r1.x, c5.xxyw, r2.xxyw
    texld r3, r1.yzzw, s1
    add r0.yzw, r0, r3.xxyz
    mad r1.yz, r1.x, c5.xzww, r2.xxyw
    texld r3, r1.yzzw, s1
    add r0.yzw, r0, r3.xxyz
    mad r1.yz, r1.x, c6.xxyw, r2.xxyw
    mad r1.xw, r1.x, c6.zyzw, r2.xyzy
    texld r2, r1.xwzw, s1
    texld r1, r1.yzzw, s1
    add r0.yzw, r0, r1.xxyz
    add r0.yzw, r2.xxyz, r0
    mul r0.yzw, r0, v0.xxyz
    add r1.x, -r0.x, -c0.z
    mad r0.x, c66.x, r1.x, r0.x
    pow r1.x, r0_abs.x, c77.x
    mul r0.x, r0.x, c18.x
    mul r0.x, r0.x, c18.w
    mul r0.x, r0.x, c78.x
    min r1.y, r0.x, c1.z
    mul r0.x, r1.x, c18.x
    mul r0.x, r0.x, c18.w
    mul r0.x, r0.x, c73.x
    mad r0.xyz, r0.yzww, c2.y, r0.x
    add r0.xyz, r1.y, r0
    texld r1, v1, s0
    texld r2, v1.zwzw, s0
    lrp r3.x, c0.x, r2.w, r1.w
    mul_sat r0.w, r3.x, v0.w
    max oC0, r0, c1.z

// approximately 83 instruction slots used (12 texture, 71 arithmetic)
