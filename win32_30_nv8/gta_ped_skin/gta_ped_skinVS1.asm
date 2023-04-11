//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float2 facetMask[4];
//   float4x3 gBoneMtx[48];
//   row_major float4x4 gShadowMatrix;
//   float4 gShadowParam0123;
//   float4 gShadowParam14151617;
//   float4 gShadowParam891113;
//   row_major float4x4 gWorld;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gWorld               c0       4
//   gShadowParam14151617 c56      1
//   gShadowParam0123     c57      1
//   gShadowParam891113   c59      1
//   gShadowMatrix        c60      4
//   gBoneMtx             c64    144
//   facetMask            c208     4
//

    vs_3_0
    def c0, 765.005859, 1, 0, -0.5
    def c1, 2, -3, 0, 0
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_position o0
    dcl_texcoord1 o1
    mul r0, c0.x, v2
    mova a0, r0
    mul r0, v1.y, c64[a0.y]
    mul r1, v1.y, c65[a0.y]
    mul r2, v1.y, c66[a0.y]
    mad r0, c64[a0.x], v1.x, r0
    mad r1, c65[a0.x], v1.x, r1
    mad r2, c66[a0.x], v1.x, r2
    mad r0, c64[a0.z], v1.z, r0
    mad r1, c65[a0.z], v1.z, r1
    mad r2, c66[a0.z], v1.z, r2
    mad r0, c64[a0.w], v1.w, r0
    mad r1, c65[a0.w], v1.w, r1
    mad r2, c66[a0.w], v1.w, r2
    mad r3, v0.xyzx, c0.yyyz, c0.zzzy
    dp4 r0.x, r3, r0
    dp4 r0.y, r3, r1
    dp4 r0.z, r3, r2
    add r0.xyz, r0, c3
    abs r0.w, c56.x
    sge r1.x, -r0.w, r0.w
    if_ge -r0.w, r0.w
      mul r1.yzw, r0.y, c61.xxyz
      mad r1.yzw, r0.x, c60.xxyz, r1
      mad r1.yzw, r0.z, c62.xxyz, r1
      add r2.xyz, r1.yzww, c63
      add r0.w, r2.z, c59.z
      abs r1.y, c56.y
      sge r1.y, -r1.y, r1.y
      add r1.y, r1.y, c0.w
      mul r0.w, r0.w, r1.y
      add r2.w, r0.w, r0.w
      dp3 r1.y, r2.xyww, r2.xyww
      rsq r1.y, r1.y
      rcp r1.y, r1.y
      mad r0.w, r0.w, -c1.x, r1.y
      rcp r0.w, r0.w
      mul r3.xy, r2, r0.w
      mul r3.w, r2.w, -c57.w
      mul r3.z, r1.y, -c57.w
    else
      mov r1.y, c0.y
      add r0.w, -r1.y, c56.x
      if_ge -r0_abs.w, r0_abs.w
        mul r1.yzw, r0.y, c61.xxyz
        mad r1.yzw, r0.x, c60.xxyz, r1
        mad r1.yzw, r0.z, c62.xxyz, r1
        add r2.xyz, r1.yzww, c63
        mul r4.z, r2.z, c57.w
        mov r2.w, -c0.w
        mov r4.xy, c57.z
        mul r3.xyz, r2.xyww, r4
        frc r0.w, c56.y
        add r0.w, -r0.w, c56.y
        mova a0.x, r0.w
        mul r1.yz, r3.xxyw, c208[a0.x].xxyw
        add r0.w, r1.z, r1.y
        add r3.w, r0.w, c1.x
        max r3.z, r3.z, c0.z
      else
        mul r1.yzw, r0.y, c61.xxyz
        mad r1.yzw, r0.x, c60.xxyz, r1
        mad r1.yzw, r0.z, c62.xxyz, r1
        add r1.yzw, r1, c63.xxyz
        mul r3.xy, r1.yzzw, c57.z
        mov r3.w, -r1.w
        mov r2.x, c57.x
        add r0.w, r2.x, -c59.w
        rcp r0.w, r0.w
        mul r1.y, r0.w, c59.w
        mul r1.z, r2.x, c59.w
        mul r0.w, r0.w, r1.z
        mad r3.z, r1.w, r1.y, r0.w
      endif
    endif
    mov r2.x, c56.x
    add r0.w, r2.x, c1.y
    sge r0.w, -r0_abs.w, r0_abs.w
    mad r1.y, r3.w, -c57.w, -r3.w
    mad r2.z, r0.w, r1.y, r3.w
    mov r2.x, r3.w
    mov r2.y, r0.z
    mad r1.yzw, r3.xwwz, c0.xzyy, c0.xyzz
    lrp r4.xyz, r1.x, r1.yzww, r2
    mov o0.xyz, r3
    mov o0.w, r4.x
    mov o1.xy, r0
    mov o1.zw, r4.xyyz

// approximately 92 instruction slots used
 