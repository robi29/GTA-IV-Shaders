//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float4 gShadowParam14151617;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gShadowParam14151617 c56      1
//

    ps_3_0
    def c0, 0.00999999978, 0, 0, 0
    dcl_texcoord1 v0.zw
    add r0.x, c0.x, -v0.z
    abs r0.y, c56.x
    cmp r0, -r0.y, r0.x, c0.y
    texkill r0
    mov oC0, v0.w

// approximately 5 instruction slots used
 