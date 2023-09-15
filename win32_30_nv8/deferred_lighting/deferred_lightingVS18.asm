//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float gDeferredLightConeAngle;
//   float gDeferredLightConeAngleI;
//   float3 gDeferredLightDirection;
//   float3 gDeferredLightPosition;
//   float gDeferredLightRadius;
//   float3 gDeferredLightTangent;
//   float gDeferredLightType;
//   float gDeferredVolumeRadiusScale;
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorldViewProj;
//
//
// Registers:
//
//   Name                       Reg   Size
//   -------------------------- ----- ----
//   gWorldViewProj             c8       4
//   gViewInverse               c12      4
//   gDeferredLightType         c208     1
//   gDeferredLightPosition     c209     1
//   gDeferredLightDirection    c210     1
//   gDeferredLightTangent      c211     1
//   gDeferredLightRadius       c212     1
//   gDeferredVolumeRadiusScale c213     1
//   gDeferredLightConeAngleI   c214     1
//   gDeferredLightConeAngle    c215     1
//

    vs_3_0
    def c0, -4, 0.159154937, 0.5, 1
    def c1, 6.28318548, -3.14159274, -1.57079637, 1.57079637
    def c2, 9.99999975e-005, -2, 9.99999975e-006, 0.662
    dcl_position v0
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1
    mov r0.xyz, c210
    mul r1.xyz, r0.yzxw, c211.zxyw
    mad r0.xyz, c211.yzxw, r0.zxyw, -r1
    mov r1.xyz, c0
    add r0.w, r1.x, c208.x
    if_ge -r0_abs.w, r0_abs.w
      mad r0.w, c215.x, r1.y, r1.z
      frc r0.w, r0.w
      mad r0.w, r0.w, c1.x, c1.y
      sincos r2.x, r0.w
      mad r0.w, c214.x, r1.y, r1.z
      frc r0.w, r0.w
      mad r0.w, r0.w, c1.x, c1.y
      sincos r1.x, r0.w
      mad r0.w, v0.z, -c1.z, c1.w
      mad r0.w, r0.w, c0.y, c0.z
      frc r0.w, r0.w
      mad r0.w, r0.w, c1.x, c1.y
      sincos r3.x, r0.w
      mad r0.w, r3.x, -r3.x, c0.w
      mul r1.yz, v0.xxyw, v0.xxyw
      add r1.y, r1.z, r1.y
      add r1.y, r1.y, c2.x
      rcp r1.y, r1.y
      mul r0.w, r0.w, r1.y
      rsq r0.w, r0.w
      rcp r0.w, r0.w
      sge r1.y, r2.x, r3.x
      mul r1.z, r0.w, c213.x
      mul r1.zw, r1.z, v0.xyxy
      mul r2.yzw, r0.xxyz, r1.w
      mad r2.yzw, c211.xxyz, r1.z, r2
      mad r3.yzw, c210.xxyz, r2.x, r2
      sge r1.z, r3.x, r1.x
      mad r2.xyz, c210, r1.x, r2.yzww
      mul r1.xw, r0.w, v0.xyzy
      mul r4.xyz, r0, r1.w
      mad r4.xyz, c211, r1.x, r4
      mad r4.xyz, c210, r3.x, r4
      lrp r5.xyz, r1.z, r2, r4
      lrp r2.xyz, r1.y, r3.yzww, r5
    else
      mov r1.y, c2.y
      add r0.w, r1.y, c208.x
      sge r0.w, -r0_abs.w, r0_abs.w
      mul r1.xy, v0, v0
      add r1.x, r1.y, r1.x
      sge r1.y, r1.x, c2.x
      mov_sat r1.z, -v0.z
      add r1.z, -r1.z, c0.w
      mul r1.z, r1.z, c215.x
      mad r1.z, r1.z, c0.y, c0.z
      frc r1.z, r1.z
      mad r1.z, r1.z, c1.x, c1.y
      sincos r3.x, r1.z
      mad r1.z, r3.x, -r3.x, c0.w
      add r1.x, r1.x, c2.x
      rcp r1.x, r1.x
      mul r1.x, r1.z, r1.x
      rsq r1.x, r1.x
      rcp r1.x, r1.x
      mul r1.x, r1.x, c213.x
      mul r1.xz, r1.x, v0.xyyw
      mul r0.xyz, r0, r1.z
      mad r0.xyz, c211, r1.x, r0
      mad r0.xyz, c210, r3.x, r0
      sge r1.x, v0_abs.z, c2.x
      mul r3.xyz, r1.x, c210
      mad r0.xyz, c210, -r1.x, r0
      mad r0.xyz, r1.y, r0, r3
      add r1.xyz, c2.z, v0
      dp3 r1.w, r1, r1
      rsq r1.w, r1.w
      mul r3.xyz, r1, r1.w
      mad r0.xyz, r1, -r1.w, r0
      mad r2.xyz, r0.w, r0, r3
    endif
    mov r0.x, c213.x
    mul r0.x, r0.x, c212.x
    mul r0.x, r0.x, c2.w
    mad r0.xyz, r2, r0.x, c209
    mul r1, r0.y, c9
    mad r1, r0.x, c8, r1
    mad r1, r0.z, c10, r1
    add r1, r1, c11
    add r0.xyz, r0, -c15
    mov o1.xyz, -r0
    mov o0, r1
    mov o10.zw, r1
    mov o1.w, r1.w
    mov r20.x, c8.w
    add r20.x, r20.x, c9.w
    add r20.x, r20.x, c10.w
    add o10.y, r20.x, c11.w

// approximately 119 instruction slots used
