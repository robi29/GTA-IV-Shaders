//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
    vs_3_0
    def c0, 100, 0, 0, 0
    dcl_position v0
    dcl_texcoord v1
    dcl_color v2
    dcl_position o0
    dcl_texcoord o1.xy
    dcl_color o2
    mad o0, v0.xyzx, c0.xxxy, c0.yyyx
    mov o1.xy, v1
    mov o2, v2

// approximately 3 instruction slots used
 