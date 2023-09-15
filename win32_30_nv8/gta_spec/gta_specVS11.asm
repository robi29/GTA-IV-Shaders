//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   row_major float4x4 gWorldViewProj;
//   float3 globalAnimUV0;
//   float3 globalAnimUV1;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   gWorldViewProj c8       4
//   globalAnimUV0  c208     1
//   globalAnimUV1  c209     1
//

    vs_3_0
    def c0, 1, 0, 0, 0
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v3
    dcl_texcoord2 v4
    dcl_texcoord3 v5
    dcl_texcoord4 v6
    dcl_position o0
    dcl_texcoord9 o10
    dcl_texcoord o1.xy
    dcl_color o2
    mov r0.xyz, v0
    mul r1.xyz, r0.y, v4
    mad r0.yw, r0.x, v3.xxzy, r1.xxzy
    mad r0.x, r0.x, v3.z, r1.z
    mad r0.x, r0.z, v5.z, r0.x
    add r0.x, r0.x, v6.z
    mad r0.yz, r0.z, v5.xxyw, r0.xyww
    add r0.yz, r0, v6.xxyw
    mul r1, r0.z, c9
    mad r1, r0.y, c8, r1
    mad r0, r0.x, c10, r1
    add o0, r0, c11
    add o10.zw, r0, c11
    mad r0.xyz, v1.xyxw, c0.xxyw, c0.yyxw
    dp3 o1.x, c208, r0
    dp3 o1.y, c209, r0
    mov o2.x, v3.w
    mov o2.y, v4.w
    mov o2.z, v5.w
    mov o2.w, v6.w
    mov r20.x, c8.w
    add r20.x, r20.x, c9.w
    add r20.x, r20.x, c10.w
    add o10.y, r20.x, c11.w

// approximately 19 instruction slots used
