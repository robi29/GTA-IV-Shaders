//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float4 gBoneDamage0[14];
//   bool gBoneDamageEnabled;
//   float4x3 gBoneMtx[48];
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorld;
//   row_major float4x4 gWorldViewProj;
//
//
// Registers:
//
//   Name               Reg   Size
//   ------------------ ----- ----
//   gBoneDamageEnabled b11      1
//   gWorld             c0       4
//   gWorldViewProj     c8       4
//   gViewInverse       c12      4
//   gBoneMtx           c64    144
//   gBoneDamage0       c208    14
//

    vs_3_0
    def c226, 765.005859, 63.7504883, 4, 0
    def c222, 1, 0, 0, 0
    def c223, 0, 1, 0, 0
    def c224, 0, 0, 1, 0
    def c225, 0, 0, 0, 1
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_texcoord v3
    dcl_normal v4
    dcl_tangent v5
    dcl_color v6
    dcl_position1 v7
    dcl_normal1 v8
    dcl_tangent1 v9
    dcl_position o0
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_texcoord3 o3.xyz
    dcl_texcoord4 o4.xyz
    dcl_texcoord5 o5.xyz
    dcl_color o6
    dcl_texcoord6 o7.x
    dcl_texcoord2 o8
    mov r0.xyz, v0
    add r0.xyz, r0, v7
    mov r1.xyz, v4
    add r1.xyz, r1, v8
    mov r2, v5
    add r2, r2, v9
    mul r3, v2, c226.x
    mova a0.w, r3.y
    mul r4, v1.y, c64[a0.w]
    mova a0.w, r3.y
    mul r5, v1.y, c65[a0.w]
    mova a0.w, r3.y
    mul r6, v1.y, c66[a0.w]
    mova a0.w, r3.x
    mad r4, c64[a0.w], v1.x, r4
    mova a0.w, r3.x
    mad r5, c65[a0.w], v1.x, r5
    mova a0.w, r3.x
    mad r6, c66[a0.w], v1.x, r6
    mova a0.w, r3.z
    mad r4, c64[a0.w], v1.z, r4
    mova a0.w, r3.z
    mad r5, c65[a0.w], v1.z, r5
    mova a0.w, r3.z
    mad r6, c66[a0.w], v1.z, r6
    mova a0.w, r3.w
    mad r4, c64[a0.w], v1.w, r4
    mova a0.w, r3.w
    mad r5, c65[a0.w], v1.w, r5
    mova a0.w, r3.w
    mad r3, c66[a0.w], v1.w, r6
    if b11
      mul r6, v2, c226.y
      frc r7, r6
      mul r8, r7, c226.z
      frc r9, r8
      add r8, r8, -r9
      add r6, r6, -r7
      mova a0.w, r6.x
      mov r7, c208[a0.w]
      mova a0.w, r8.x
      dp4 r7.x, r7, c222[a0.w]
      mova a0.w, r6.y
      mov r9, c208[a0.w]
      mova a0.w, r8.y
      dp4 r7.y, r9, c222[a0.w]
      mova a0.w, r6.z
      mov r9, c208[a0.w]
      mova a0.w, r8.z
      dp4 r7.z, r9, c222[a0.w]
      mova a0.w, r6.w
      mov r6, c208[a0.w]
      mova a0.w, r8.w
      dp4 r7.w, r6, c222[a0.w]
      dp4 o7.x, r7, v1
    else
      mov o7.x, c222.w
    endif
    mov r0.w, c222.x
    dp4 r6.x, r0, r4
    dp4 r6.y, r0, r5
    dp4 r6.z, r0, r3
    add o3.xyz, -r6, c15
    dp3 r0.x, r1, r4
    dp3 r0.y, r1, r5
    dp3 r0.z, r1, r3
    dp3 r1.x, r2, r4
    dp3 r1.y, r2, r5
    dp3 r1.z, r2, r3
    mul r2.xyz, r0.yzxw, r1.zxyw
    mad r2.xyz, r1.yzxw, r0.zxyw, -r2
    mul o5.xyz, r2.w, r2
    mul r2, r6.y, c9
    mad r2, r6.x, c8, r2
    mad r2, r6.z, c10, r2
    add r2, r2, c11
    add o8.xyz, r6, c3
    mov o0, r2
    mov o1.xy, v3
    mov o2.w, r2.w
    mov o2.xyz, r0
    mov o4.xyz, r1
    mov o6, v6
    mov o8.w, c222.x

// approximately 86 instruction slots used
 