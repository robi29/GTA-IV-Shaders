# Decompiled GTA IV shaders and fixes

Decompiled all GTA IV shaders and provided numerous fixes and improvements for them. The changelog is [below](#Changelog).

# Installation guide

Download 7zip archive from [releases](https://github.com/robi29/GTA-IV-Shaders/releases), unpack the archive and copy fxc files to "Grand Theft Auto IV\common\shaders\win32_30_nv8" and "Grand Theft Auto IV\common\shaders\win32_30_atidx10".

# Other interesting repositories

1. Decompiled shaders by: https://github.com/d3g0n-byte/RAGE-Shader-Editor/releases
2. Recommendation: d3d9.dll from: https://github.com/RaphaelK12/GTA4-Improved-Soft-Shadows
3. Some other shader fixes: https://github.com/Parallellines0451/GTAIV.ShaderFixesCollection
4. FusionFix: https://github.com/ThirteenAG/GTAIV.EFLC.FusionFix

# Changelog

- cascadeConvert
    - Fixed the issue when improper shadow was drawn on water surface or some textures at particular camera angles (thanks to Parallellines)
    - Removed improper blur before the shadowmap is sampled by lighting (kudos to Parallellines)

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
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)
    - Implemented percentage-closer soft shadows (PCSS)
    - Improved shadows depth bias for 2nd and 3rd cascades (kudos to Parallellines)
    - Fixed shadow banding occuring at soft PCSS

- gpuptfx_simplerender
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_atmoscatt_clouds
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_cubemap_reflect
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_cutout_fence
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_decal
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_decal_amb_only
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_decal_dirt
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_decal_glue
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_decal_normal_only
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_default
    - Reflection draw distance increased
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Ported directional shadows filtering from patch 1040 (thanks to Parallellines)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_diffuse_instance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_emissive
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_emissivenight
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed invisible lamp glass at day (thanks to Parallellines)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_emissivestrong
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Corrected depth bias
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_glass
    - Reflection draw distance increased
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Ported directional shadows filtering from patch 1040 (thanks to Parallellines)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_glass_emissive
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_glass_emissivenight
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_glass_normal_spec_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_glass_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_glass_spec
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_grass
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_hair_sorted_alpha
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_hair_sorted_alpha_exp
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_im
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_normal
    - Reflection draw distance increased
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Ported directional shadows filtering from patch 1040 (thanks to Parallellines)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_normal_cubemap_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_normal_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_normal_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_normal_reflect_alpha
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_normal_reflect_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_normal_spec
    - Reflection draw distance increased
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Ported directional shadows filtering from patch 1040 (thanks to Parallellines)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)
    - Fixed too much specular on building windows and some terrains

- gta_normal_spec_cubemap_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_normal_spec_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_normal_spec_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_normal_spec_reflect_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_normal_spec_reflect_emissive
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_normal_spec_reflect_emissivenight
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_parallax
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_parallax_specmap
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_parallax_steep
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_ped
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_ped_reflect
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_ped_skin
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_ped_skin_blendshape
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_projtex
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_projtex_steep
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_radar
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_reflect_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_rmptfx_gpurender
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_rmptfx_litsprite
    - Added soft particles
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_rmptfx_mesh
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_rmptfx_raindrops
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_spec
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)
    - Fixed too much specular on building windows and some terrains

- gta_spec_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_spec_reflect
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_spec_reflect_decal
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_terrain_va_2lyr
    - Increased amount of lighting at very acute angles
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)
    - Decreased reflection intensity

- gta_terrain_va_3lyr
    - Increased amount of lighting at very acute angles
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)
    - Decreased reflection intensity

- gta_terrain_va_4lyr
    - Increased amount of lighting at very acute angles
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)
    - Decreased reflection intensity

- gta_trees
    - Added leaves shadow swaying for FusionFix (thanks to Parallellines)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_badges
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_basic
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_chrome
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_disc
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_generic
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_interior
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_interior2
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_lightsemissive
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_mesh
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Increased specular power for chrome elements
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_paint1
    - Fixed normal maps
    - Slightly increased shadows draw distance
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Increased specular power for standard vehicles
    - Implemented fresnel effect for reflections
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_paint2
    - Fixed normal maps
    - Slightly increased shadows draw distance
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Implemented fresnel effect for reflections
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_paint3
    - Fixed normal maps
    - Slightly increased shadows draw distance
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Implemented fresnel effect for reflections
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_rims1
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_rims2
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_rubber
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_shuts
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_tire
    - Slightly increased shadows draw distance
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_vehicle_vehglass
    - Slightly increased shadows draw distance
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Ported directional shadows filtering from patch 1040 (thanks to Parallellines)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- gta_wire
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased shadows sharpness
    - Increased amount of lighting at very acute angles
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- mirror
    - Fixed distorted mirrors projection when camera is too close to mirror
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- rage_atmoscatt_clouds
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- rage_billboard_nobump
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- rage_bink
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- rage_default
    - Slightly increased shadows draw distance
    - Reflection draw distance increased
    - Increased amount of lighting at very acute angles
    - Increased shadows sharpness
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Improved directional shadows filtering (thanks to RaphaelK12)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- rage_fastmipmap
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- rage_im
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- rage_postfx
    - Ported changes from VisualIV
    - Remade bloom shader with proper resolution scaling
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)
    - Added FXAA
    - Improved depth of field filter
    - Fixed aspect ratio of noise effect
    - Improved FXAA when stipple filter is enabled (definition off)

- rmptfx_collision
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- rmptfx_default
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- rmptfx_litsprite
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- shadowZ
    - Fixed dynamic shadows casted by static objects

- shadowZDir
    - Fixed dynamic shadows casted by static objects

- water
    - Fixed shadow offset on water surface
    - Slightly increased shadows draw distance
    - Increased amount of lighting at very acute angles
    - Corrected texture tiling
    - Improved water transparency
    - Fixed disconnected directional shadows (thanks to Parallellines)
    - Ported directional shadows filtering from patch 1040 (thanks to Parallellines)
    - Fixed z-fighting making depth buffer logarithmic, requires FusionFix ASI script (kudos to Parallellines)

- waterTex
    - Ported changes from VisualIV
