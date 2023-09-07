# Decompiled GTA IV shaders and fixes

Decompiled all GTA IV shaders and provided numerous fixes and improvements for them. The changelog is [below](#Changelog).

# Other interesting repositories

1. Decompiled shaders by: https://github.com/d3g0n-byte/RAGE-Shader-Editor/releases
2. Recommendation: d3d9.dll from: https://github.com/RaphaelK12/GTA4-Improved-Soft-Shadows
3. Some other shader fixes: https://github.com/Parallellines0451/GTAIV.ShaderFixesCollection
4. FusionFix: https://github.com/ThirteenAG/GTAIV.EFLC.FusionFix

# Changelog

- cascadeConvert
    - Fixed the issue when improper shadow was drawn on water surface or some textures at particular camera angles (thanks to Parallellines)

- deferred_lighting
    - Slightly increased shadows draw distance
    - Increased amount of lighting at very acute angles
    - Restored volumetric light shafts (thanks to Vaani)
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Sharpened dynamic shadows
    - Ported directional shadows filtering from patch 1040 (thanks to Parallellines)
    - Removed artificial lights dimming when dynamic shadows are casted
    - Dimmed shadow texture under vehicles for some artificial lights
    - Fixed pitch black shadow texture under vehicles

- gta_cubemap_reflect
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_cutout_fence
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_decal
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_decal_amb_only
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_decal_dirt
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_decal_glue
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_decal_normal_only
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_default
    - Reflection draw distance increased
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Ported directional shadows filtering from patch 1040 (thanks to Parallellines)

- gta_diffuse_instance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_emissive
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_emissivenight
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_emissivestrong
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Corrected depth bias
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_glass
    - Reflection draw distance increased
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Ported directional shadows filtering from patch 1040 (thanks to Parallellines)

- gta_glass_emissive
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_glass_emissivenight
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_glass_normal_spec_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_glass_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_glass_spec
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_hair_sorted_alpha
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_hair_sorted_alpha_exp
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_im
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_normal
    - Reflection draw distance increased
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Ported directional shadows filtering from patch 1040 (thanks to Parallellines)

- gta_normal_cubemap_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_normal_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_normal_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_normal_reflect_alpha
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_normal_reflect_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_normal_spec
    - Reflection draw distance increased
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Ported directional shadows filtering from patch 1040 (thanks to Parallellines)

- gta_normal_spec_cubemap_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_normal_spec_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_normal_spec_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_normal_spec_reflect_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_normal_spec_reflect_emissive
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_normal_spec_reflect_emissivenight
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_parallax
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_parallax_specmap
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_parallax_steep
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_ped
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_ped_reflect
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_ped_skin
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_ped_skin_blendshape
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_projtex
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_projtex_steep
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_reflect_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_rmptfx_litsprite
    - Added soft particles

- gta_rmptfx_mesh
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_spec
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_spec_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_spec_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_spec_reflect_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_terrain_va_2lyr
    - Increased amount of lighting at very acute angles

- gta_terrain_va_3lyr
    - Increased amount of lighting at very acute angles

- gta_terrain_va_4lyr
    - Increased amount of lighting at very acute angles

- gta_trees
    - Added leaves shadow swaying for FusionFix (thanks to Parallellines)

- gta_vehicle_badges
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_basic
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_chrome
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_disc
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_generic
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_interior
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_interior2
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_lightsemissive
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_mesh
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Increased specular power for chrome elements
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_paint1
    - Fixed normal maps
    - Slightly increased shadows draw distance
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Increased specular power for standard vehicles
    - Implemented fresnel effect for reflections
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_paint2
    - Fixed normal maps
    - Slightly increased shadows draw distance
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Implemented fresnel effect for reflections
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_paint3
    - Fixed normal maps
    - Slightly increased shadows draw distance
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Implemented fresnel effect for reflections
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_rims1
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_rims2
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_rubber
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_shuts
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_tire
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- gta_vehicle_vehglass
    - Slightly increased shadows draw distance
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Ported directional shadows filtering from patch 1040 (thanks to Parallellines)

- gta_wire
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- mirror
    - Fixed distorted mirrors projection when camera is too close to mirror

- rage_default
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)

- rage_postfx
    - Ported changes from VisualIV
    - Remade bloom shader with proper resolution scaling

- shadowZ
    - Fixed dynamic shadows casted by static objects

- shadowZDir
    - Fixed dynamic shadows casted by static objects

- water
    - Fixed shadow offset on water surface
    - Slightly increased shadows draw distance
    - Increased amount of lighting at very acute angles
    - Corrected water transparency and texture tiling
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Ported directional shadows filtering from patch 1040 (thanks to Parallellines)

- waterTex
    - Ported changes from VisualIV
