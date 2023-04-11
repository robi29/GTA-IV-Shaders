//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   row_major float4x4 gWorldInstanceInverseTranspose;
//   row_major float4x4 gWorldInstanceMatrix;
//   row_major float4x4 gWorldViewProj;
//
//
// Registers:
//
//   Name                           Reg   Size
//   ------------------------------ ----- ----
//   gWorldViewProj                 c8       4
//   gWorldInstanceMatrix           c208     4
//   gWorldInstanceInverseTranspose c212     3
//

    vs_3_0
    def c0, 9.99999975e-006, 0, 0, 0
    dcl_position v0
    dcl_normal v1
    dcl_color v2
    dcl_texcoord v3
    dcl_position o0
    dcl_color o1
    dcl_texcoord o2.xy
    dcl_texcoord1 o3.xyz
    dcl_texcoord2 o4
    mul r0.xyz, c213, v1.y
    mad r0.xyz, v1.x, c212, r0
    mad r0.xyz, v1.z, c214, r0
    add r0.xyz, r0, c0.x
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    mul o4.xyz, r0, r0.w
    mul r0.xyz, c209, v0.y
    mad r0.xyz, v0.x, c208, r0
    mad r0.xyz, v0.z, c210, r0
    add r0.xyz, r0, c211
    mul r1, r0.y, c9
    mad r1, r0.x, c8, r1
    mad r1, r0.z, c10, r1
    mov o3.xyz, r0
    add r0, r1, c11
    mov o0, r0
    mov o4.w, r0.w
    mov o1, v2
    mov o2.xy, v3

// approximately 20 instruction slots used
 