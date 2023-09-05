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
    def c1, 2, 9.99999994e-009, 0, -0.55
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_position o0
    dcl_texcoord o1.x
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
    mul r1, r0.y, c61
    mad r1, r0.x, c60, r1
    mad r1, r0.z, c62, r1
    add r1, r1, c63
    min r0.w, r1.z, c0.y
    add o0.z, -r0.w, c0.y
    abs r0.w, c56.x
    mov r2.xyz, r1
    if_ge -r0.w, r0.w // non-static objects
      add r0.w, r2.z, c59.z
      abs r1.z, c56.y
      sge r1.z, -r1.z, r1.z
      add r1.z, r1.z, c0.w
      mul r0.w, r0.w, r1.z
      add r2.w, r0.w, r0.w
      dp3 r1.z, r2.xyww, r2.xyww
      rsq r1.z, r1.z
      rcp r1.z, r1.z
      mad r0.w, r0.w, -c1.x, r1.z
      rcp r0.w, r0.w
      mul r3.xy, r2, r0.w
      mul r3.w, r2.w, -c57.w
      mul r3.z, r1.z, -c57.w
    else
      mov r3.y, c0.y
      add r0.w, -r3.y, c56.x
      if_ge -r0_abs.w, r0_abs.w // static
        mul r4.z, r2.z, c57.w
        mov r2.w, -c0.w
        mov r4.xy, c57.z
        mul r3.xyz, r2.xyww, r4
        frc r0.w, c56.y
        add r0.w, -r0.w, c56.y
        mova a0.x, r0.w
        mul r2.xy, r3, c208[a0.x]
        add r0.w, r2.y, r2.x
        add r3.w, r0.w, c1.x
        max r3.z, r3.z, c0.z
      else // static
        mov r3.z, c57.z
        add r3.z, r3.z, c1.w
        mul r3.xy, r2, r3.z
        mov r3.w, -r2.z
        mov r0.x, c57.x
        add r0.y, r0.x, -c59.w
        rcp r0.y, r0.y
        mul r0.w, r0.y, c59.w
        mul r0.x, r0.x, c59.w
        mul r0.x, r0.y, r0.x
        mad r3.z, r2.z, r0.w, r0.x
      endif
    endif
    dp4 r0.x, r3, c0.y
    mad o0.x, r0.x, c1.y, r1.x
    mad o0.yw, r1.y, c0.xyzz, c0.xzzy
    mov o1.x, r1.w

// approximately 90 instruction slots used
