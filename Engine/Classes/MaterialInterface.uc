/*******************************************************************************
 * MaterialInterface generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MaterialInterface extends Surface
    abstract
    native(Material)
    forcescriptorder(true);

enum EMaterialUsage
{
    MATUSAGE_SkeletalMesh,
    MATUSAGE_FracturedMeshes,
    MATUSAGE_ParticleSprites,
    MATUSAGE_BeamTrails,
    MATUSAGE_ParticleSubUV,
    MATUSAGE_Foliage,
    MATUSAGE_SpeedTree,
    MATUSAGE_StaticLighting,
    MATUSAGE_GammaCorrection,
    MATUSAGE_LensFlare,
    MATUSAGE_InstancedMeshParticles,
    MATUSAGE_FluidSurface,
    MATUSAGE_Decals,
    MATUSAGE_MaterialEffect,
    MATUSAGE_MorphTargets,
    MATUSAGE_FogVolumes,
    MATUSAGE_RadialBlur,
    MATUSAGE_InstancedMeshes,
    MATUSAGE_SplineMesh,
    MATUSAGE_ScreenDoorFade,
    MATUSAGE_APEXMesh,
    MATUSAGE_Terrain,
    MATUSAGE_Landscape,
    MATUSAGE_MobileLandscape,
    MATUSAGE_MAX
};

struct native LightmassMaterialInterfaceSettings
{
    /** If TRUE, forces translucency to cast static shadows as if the material were masked. */
    var(Material) bool bCastShadowAsMasked;
    /** Scales the emissive contribution of this material to static lighting. */
    var(Material) float EmissiveBoost;
    /** Scales the diffuse contribution of this material to static lighting. */
    var(Material) float DiffuseBoost;
    var float SpecularBoost;
    /**  
     *Scales the resolution that this material's attributes were exported at. 
     *        This is useful for increasing material resolution when details are needed.
     */
    var(Material) float ExportResolutionScale;
    /** Scales the penumbra size of distance field shadows.  This is useful to get softer precomputed shadows on certain material types like foliage. */
    var(Material) float DistanceFieldPenumbraScale;
    var bool bOverrideCastShadowAsMasked;
    var bool bOverrideEmissiveBoost;
    var bool bOverrideDiffuseBoost;
    var bool bOverrideSpecularBoost;
    var bool bOverrideExportResolutionScale;
    var bool bOverrideDistanceFieldPenumbraScale;

    structdefaultproperties
    {
        bCastShadowAsMasked=false
        EmissiveBoost=1.0
        DiffuseBoost=1.0
        SpecularBoost=1.0
        ExportResolutionScale=1.0
        DistanceFieldPenumbraScale=1.0
        bOverrideCastShadowAsMasked=false
        bOverrideEmissiveBoost=false
        bOverrideDiffuseBoost=false
        bOverrideSpecularBoost=false
        bOverrideExportResolutionScale=false
        bOverrideDistanceFieldPenumbraScale=false
    }
};

var native const transient RenderCommandFence_Mirror ParentRefFence;
/** The Lightmass settings for this object. */
var(Lightmass) protected LightmassMaterialInterfaceSettings LightmassSettings<ScriptOrder=true>;
/** The mesh used by the material editor to preview the material. */
var() editoronly string PreviewMesh;
var private editoronly const Guid LightingGuid;
var const bool bHasQualitySwitch;
/** When enabled, the base texture will be generated automatically by statically 'flattening' the graph network into a texture. */
var(Mobile) bool bAutoFlattenMobile;
/** When enabled, the normal texture will be generated automatically by statically 'flattening' the graph network into a texture. */
var(Mobile) bool bAutoFlattenMobileNormalTexture;
/** When enabled, primitives using this material may be fogged.  Disable this to improve performance for primitives that don't need fog. */
var(Mobile) bool bMobileAllowFog;
/** Whether to generate the flattened texture as a subUV texture */
var(Mobile,Generation) bool bGenerateSubUV;
/** Enables dynamic specular lighting from the single most prominent light source */
var(Mobile,Specular) bool bUseMobileSpecular;
var deprecated bool bUseMobileVertexSpecular;
/** Enables per-pixel specular for this material (requires normal map) */
var(Mobile,Specular) bool bUseMobilePixelSpecular<EditCondition=bUseMobileSpecular>;
/** Rim light fading */
var(Mobile,RimLighting) bool bMobileRimFading;
/** Enables a bump offset effect for this material.  A mask texture must be supplied.  The bump offset amount is stored in the mask texture's RED channel. */
var(Mobile,BumpOffset) bool bUseMobileBumpOffset;
/** Locks use of the detail texture and does not allow it to be forced off by system settings */
var(Mobile,TextureBlending) bool bLockColorBlending;
/** Whether to use uniform color scaling (mesh particles) or not */
var(Mobile,ColorBlending) bool bUseMobileUniformColorMultiply;
/** Whether to use per vertex color scaling */
var(Mobile,ColorBlending) bool bUseMobileVertexColorMultiply;
/** Whether to use detail normal for mobile */
var(Mobile,ColorBlending) bool bUseMobileDetailNormal;
/** Which texture UVs to transform */
var(Mobile,TextureTransform) bool bBaseTextureTransformed;
var(Mobile,TextureTransform) bool bEmissiveTextureTransformed;
var(Mobile,TextureTransform) bool bNormalTextureTransformed;
var(Mobile,TextureTransform) bool bMaskTextureTransformed;
var(Mobile,TextureTransform) bool bDetailTextureTransformed;
/** Enables per-vertex movement on a wave (for use with trees and similar objects) */
var(Mobile,VertexAnimation) bool bUseMobileWaveVertexMovement;
/** If TRUE, use a second directional light to simulate light bouncing when flattening the mobile material. */
var(Mobile,Flatten) bool bMobileEnableBounceLight;
/** Whether to use monochrome layer Blending or regular Layer Blending */
var(Mobile,Landscape) bool bUseMobileLandscapeMonochromeLayerBlending;
/** Color to use when flattening a material */
var(Mobile) Color FlattenBackgroundColor;
/** Base (diffuse) texture, or a texture that was generated by flattening the graph network */
var(Mobile) Texture MobileBaseTexture;
var duplicatetransient deprecated Texture FlattenedTexture;
/** Texture coordinates from mesh vertex to use when sampling base texture on mobile platforms */
var(Mobile) EngineTypes.EMobileTexCoordsSource MobileBaseTextureTexCoordsSource;
/** Enables baked ambient occlusion from mesh vertices and selects which vertex color channel to get the AO data from */
var(Mobile) EngineTypes.EMobileAmbientOcclusionSource MobileAmbientOcclusionSource;
/** Determines how specular values are masked.  Constant: Mask is disabled.  Luminance: Diffuse RGB luminance used as mask.  Diffuse Red/Green/Blue: Use a specific channel of the diffuse texture as the specular mask.  Mask Texture RGB: Uses the color from the mask texture */
var(Mobile,Specular) EngineTypes.EMobileSpecularMask MobileSpecularMask;
/** Mobile emissive color source */
var(Mobile,Emissive) EngineTypes.EMobileEmissiveColorSource MobileEmissiveColorSource;
/** Selects a source for emissive light masking */
var(Mobile,Emissive) EngineTypes.EMobileValueSource MobileEmissiveMaskSource;
/** Selects a source for environment map amount */
var(Mobile,Environment) EngineTypes.EMobileValueSource MobileEnvironmentMaskSource;
/** When environment mapping is enabled, this sets how the environment color is blended with the base color. */
var(Mobile,Environment) EngineTypes.EMobileEnvironmentBlendMode MobileEnvironmentBlendMode;
/** Selects a source for rim light masking */
var(Mobile,RimLighting) EngineTypes.EMobileValueSource MobileRimLightingMaskSource;
/** Texture coordinates from mesh vertex to use when sampling mask texture */
var(Mobile,Masking) EngineTypes.EMobileTexCoordsSource MobileMaskTextureTexCoordsSource;
/** Enables the override of base texture alpha with the red channel of the mask texture to support platforms that don't have alpha texture compression */
var(Mobile,Masking) EngineTypes.EMobileAlphaValueSource MobileAlphaValueSource;
/** Texture coordinates from mesh vertex to use when sampling detail texture */
var(Mobile,TextureBlending) EngineTypes.EMobileTexCoordsSource MobileDetailTextureTexCoordsSource;
/** Where the blend factor comes from, for blending the base texture with the detail texture */
var(Mobile,TextureBlending) EngineTypes.EMobileTextureBlendFactorSource MobileTextureBlendFactorSource;
/** Enables the user to specify a channel of a texture to use for the Color multiplication */
var(Mobile,ColorBlending) EngineTypes.EMobileColorMultiplySource MobileColorMultiplySource;
/** Normal map texture.  If specified, this enables per pixel lighting when used in combination with other material features. */
var(Mobile) Texture MobileNormalTexture;
/** The frame rate to capture the subUV images at */
var(Mobile,Generation) float SubUVFrameRate;
/**  
 *The number of subUV images to capture along each axis of the texture.
 *       Since the generated texture is always going to be square, the same number of sub-images 
 *       will be captured on both the horizontal and vertical axes.
 */
var(Mobile,Generation) int SubUVFrameCountAlongAxes;
/**  
 *The size of the subUV image to generate.
 *       The generated texture size will be:
 *               (SubUVFrameCountAlongAxes x SubUVFrameSize, SubUVFrameCountAlongAxes x SubUVFrameSize)
 * 
 *       This value will auto-adjust according to the SubUVFrameCountAlongAxes setting so that the 
 *  proper texture size (power-of-two) results.
 */
var(Mobile,Generation) float SubUVFrameSize;
/** Material specular color */
var(Mobile,Specular) LinearColor MobileSpecularColor<EditCondition=bUseMobileSpecular>;
/** When specular is enabled, this sets the specular power.  Lower values yield a wider highlight, higher values yield a sharper highlight */
var(Mobile,Specular) float MobileSpecularPower<EditCondition=bUseMobileSpecular>;
/** Emissive texture.  If the emissive color source is set to 'Emissive Texture', setting this texture will enable emissive lighting */
var(Mobile,Emissive) Texture MobileEmissiveTexture;
/** Mobile emissive color. IF MobileEmissiveColorSource is set to 'Constant' this acts as the emissive color, IF NOT it blends with the other input to form the final color. */
var(Mobile,Emissive) LinearColor MobileEmissiveColor;
/** Spherical environment map texture.  When specified, spherical environment mapping will be enabled for this material. */
var(Mobile,Environment) Texture MobileEnvironmentTexture;
/** Sets how much the environment map texture contributes to the final color */
var(Mobile,Environment) float MobileEnvironmentAmount<ClampMin=0.0|UIMax=1.0>;
/** Environment map color scale */
var(Mobile,Environment) LinearColor MobileEnvironmentColor;
/** Environment mapping fresnel amount.  Set this to zero for best performance. */
var(Mobile,Environment) float MobileEnvironmentFresnelAmount<ClampMin=0.0|UIMax=1.0>;
/** Environment mapping fresnel exponent.  Set this to 1.0 for best performance. */
var(Mobile,Environment) float MobileEnvironmentFresnelExponent<ClampMin=0.01|UIMax=8.0>;
/** When set to anything other than zero, enables rim lighting for this material and sets the amount of rim lighting to apply */
var(Mobile,RimLighting) float MobileRimLightingStrength<ClampMin=0.0|UIMax=4.0>;
/** Sets the exponent used for rim lighting */
var(Mobile,RimLighting) float MobileRimLightingExponent<ClampMin=0.01|UIMax=8.0>;
/** Rim light color */
var(Mobile,RimLighting) LinearColor MobileRimLightingColor;
/** Bump offset reference plane */
var(Mobile,BumpOffset) float MobileBumpOffsetReferencePlane<EditCondition=bUseMobileBumpOffset>;
/** Bump height ratio */
var(Mobile,BumpOffset) float MobileBumpOffsetHeightRatio<EditCondition=bUseMobileBumpOffset>;
/** General purpose mask texture used for bump offset amount, texture blending, etc. */
var(Mobile,Masking) Texture MobileMaskTexture;
/** Acts as a multiplier for the final opacity value */
var(Mobile,Masking) float MobileOpacityMultiplier<ClampMin=0.0|UIMax=1.0>;
/** Detail texture to use for blending the base texture (red channel or mask texture alpha based on MobileTextureBlendFactorSource) */
var(Mobile,TextureBlending) Texture MobileDetailTexture;
/** Detail texture to use for blending the base texture (green of vertex color) */
var(Mobile,TextureBlending) Texture MobileDetailTexture2;
/** Detail texture to use for blending the base texture (blue of vertex color) */
var(Mobile,TextureBlending) Texture MobileDetailTexture3;
var deprecated LinearColor DefaultUniformColor;
var(Mobile,ColorBlending) LinearColor MobileDefaultUniformColor;
var deprecated float TransformCenterX;
var(Mobile,TextureTransform) float MobileTransformCenterX;
var deprecated float TransformCenterY;
var(Mobile,TextureTransform) float MobileTransformCenterY;
var deprecated float PannerSpeedX;
var(Mobile,TextureTransform) float MobilePannerSpeedX;
var deprecated float PannerSpeedY;
var(Mobile,TextureTransform) float MobilePannerSpeedY;
var deprecated float RotateSpeed;
var(Mobile,TextureTransform) float MobileRotateSpeed;
var deprecated float FixedScaleX;
var(Mobile,TextureTransform) float MobileFixedScaleX;
var deprecated float FixedScaleY;
var(Mobile,TextureTransform) float MobileFixedScaleY;
var deprecated float SineScaleX;
var(Mobile,TextureTransform) float MobileSineScaleX;
var deprecated float SineScaleY;
var(Mobile,TextureTransform) float MobileSineScaleY;
var deprecated float SineScaleFrequencyMultipler;
var(Mobile,TextureTransform) float MobileSineScaleFrequencyMultipler;
var deprecated float FixedOffsetX;
var(Mobile,TextureTransform) float MobileFixedOffsetX;
var deprecated float FixedOffsetY;
var(Mobile,TextureTransform) float MobileFixedOffsetY;
/** Frequency adjustment for wave on vertex positions */
var(Mobile,VertexAnimation) float MobileTangentVertexFrequencyMultiplier<EditCondition=bUseMobileWaveVertexMovement>;
/** Frequency adjustment for wave on vertex positions */
var(Mobile,VertexAnimation) float MobileVerticalFrequencyMultiplier<EditCondition=bUseMobileWaveVertexMovement>;
/** Amplitude of adjustments for wave on vertex positions */
var(Mobile,VertexAnimation) float MobileMaxVertexMovementAmplitude<EditCondition=bUseMobileWaveVertexMovement>;
/** Frequency of entire object sway */
var(Mobile,VertexAnimation) float MobileSwayFrequencyMultiplier<EditCondition=bUseMobileWaveVertexMovement>;
/** Frequency of entire object sway */
var(Mobile,VertexAnimation) float MobileSwayMaxAngle<EditCondition=bUseMobileWaveVertexMovement>;
/** The direction of the directional light for flattening the mobile material. */
var(Mobile,Flatten) Vector MobileDirectionalLightDirection;
/** The brightness of the directional light for flattening the mobile material. */
var(Mobile,Flatten) float MobileDirectionalLightBrightness;
/** The color of the directional light for flattening the mobile material. */
var(Mobile,Flatten) Color MobileDirectionalLightColor;
/** The direction of the simulated bounce directional light for flattening the mobile material. */
var(Mobile,Flatten) Vector MobileBounceLightDirection;
/** The brightness of the simulated bounce directional light for flattening the mobile material. */
var(Mobile,Flatten) float MobileBounceLightBrightness;
/** The color of the simulated bounce directional light for flattening the mobile material. */
var(Mobile,Flatten) Color MobileBounceLightColor;
/** The brightness of the skylight for flattening the mobile material. */
var(Mobile,Flatten) float MobileSkyLightBrightness;
/** The color of the skylight for flattening the mobile material. */
var(Mobile,Flatten) Color MobileSkyLightColor;
/** The names of the 4 Landscape layers supported on mobile */
var(Mobile,Landscape) name MobileLandscapeLayerNames[4];
/** The RBG colors to colorize each monochome layer when using monochrome layer blending */
var(Mobile,Landscape) Color MobileLandscapeMonochomeLayerColors[4];

// Export UMaterialInterface::execGetMaterial(FFrame&, void* const)
native final function Material GetMaterial();

// Export UMaterialInterface::execGetPhysicalMaterial(FFrame&, void* const)
native final function PhysicalMaterial GetPhysicalMaterial();

// Export UMaterialInterface::execGetParameterDesc(FFrame&, void* const)
native function bool GetParameterDesc(name ParameterName, out string OutDesc);

// Export UMaterialInterface::execGetFontParameterValue(FFrame&, void* const)
native function bool GetFontParameterValue(name ParameterName, out Font OutFontValue, out int OutFontPage);

// Export UMaterialInterface::execGetScalarParameterValue(FFrame&, void* const)
native function bool GetScalarParameterValue(name ParameterName, out float OutValue);

// Export UMaterialInterface::execGetScalarCurveParameterValue(FFrame&, void* const)
native function bool GetScalarCurveParameterValue(name ParameterName, out InterpCurveFloat OutValue);

// Export UMaterialInterface::execGetTextureParameterValue(FFrame&, void* const)
native function bool GetTextureParameterValue(name ParameterName, out Texture OutValue);

// Export UMaterialInterface::execGetVectorParameterValue(FFrame&, void* const)
native function bool GetVectorParameterValue(name ParameterName, out LinearColor OutValue);

// Export UMaterialInterface::execGetVectorCurveParameterValue(FFrame&, void* const)
native function bool GetVectorCurveParameterValue(name ParameterName, out InterpCurveVector OutValue);

// Export UMaterialInterface::execGetLinearColorParameterValue(FFrame&, void* const)
native function bool GetLinearColorParameterValue(name ParameterName, out LinearColor OutValue);

// Export UMaterialInterface::execGetLinearColorCurveParameterValue(FFrame&, void* const)
native function bool GetLinearColorCurveParameterValue(name ParameterName, out InterpCurveLinearColor OutValue);

// Export UMaterialInterface::execGetGroupName(FFrame&, void* const)
native function bool GetGroupName(name ParameterName, out name GroupName);

// Export UMaterialInterface::execGetMobileScalarParameterValue(FFrame&, void* const)
native function bool GetMobileScalarParameterValue(name ParameterName, out float OutValue);

// Export UMaterialInterface::execGetMobileTextureParameterValue(FFrame&, void* const)
native function bool GetMobileTextureParameterValue(name ParameterName, out Texture OutValue);

// Export UMaterialInterface::execGetMobileVectorParameterValue(FFrame&, void* const)
native function bool GetMobileVectorParameterValue(name ParameterName, out LinearColor OutValue);

// Export UMaterialInterface::execSetForceMipLevelsToBeResident(FFrame&, void* const)
native function SetForceMipLevelsToBeResident(bool OverrideForceMiplevelsToBeResident, bool bForceMiplevelsToBeResidentValue, float ForceDuration, optional int CinematicTextureGroups)
{
    CinematicTextureGroups = 0;                        
}

defaultproperties
{
    LightmassSettings=(bCastShadowAsMasked=false,EmissiveBoost=1.0,DiffuseBoost=1.0,SpecularBoost=1.0,ExportResolutionScale=1.0,DistanceFieldPenumbraScale=1.0,bOverrideCastShadowAsMasked=false,bOverrideEmissiveBoost=false,bOverrideDiffuseBoost=false,bOverrideSpecularBoost=false,bOverrideExportResolutionScale=false,bOverrideDistanceFieldPenumbraScale=false)
    bMobileAllowFog=true
    FlattenBackgroundColor=(R=0,G=0,B=0,A=255)
    MobileDetailTextureTexCoordsSource=EMobileTexCoordsSource.MTCS_TexCoords1
    MobileSpecularColor=(R=1.0,G=1.0,B=1.0,A=1.0)
    MobileSpecularPower=16.0
    MobileEmissiveColor=(R=1.0,G=1.0,B=1.0,A=1.0)
    MobileEnvironmentAmount=1.0
    MobileEnvironmentColor=(R=1.0,G=1.0,B=1.0,A=1.0)
    MobileEnvironmentFresnelExponent=1.0
    MobileRimLightingExponent=2.0
    MobileRimLightingColor=(R=1.0,G=1.0,B=1.0,A=1.0)
    MobileBumpOffsetReferencePlane=0.50
    MobileBumpOffsetHeightRatio=0.050
    MobileOpacityMultiplier=1.0
    MobileDefaultUniformColor=(R=0.0,G=0.0,B=0.0,A=1.0)
    MobileTransformCenterX=0.50
    MobileTransformCenterY=0.50
    MobileFixedScaleX=1.0
    MobileFixedScaleY=1.0
    MobileSineScaleFrequencyMultipler=1.0
    MobileTangentVertexFrequencyMultiplier=0.1250
    MobileVerticalFrequencyMultiplier=0.10
    MobileMaxVertexMovementAmplitude=5.0
    MobileSwayFrequencyMultiplier=0.070
    MobileSwayMaxAngle=2.0
    MobileDirectionalLightDirection=(X=0.0,Y=-45.0,Z=45.0)
    MobileDirectionalLightBrightness=2.0
    MobileDirectionalLightColor=(R=255,G=255,B=255,A=0)
    MobileBounceLightDirection=(X=0.0,Y=45.0,Z=-27.50)
    MobileBounceLightBrightness=0.250
    MobileBounceLightColor=(R=255,G=255,B=255,A=0)
    MobileSkyLightBrightness=0.250
    MobileSkyLightColor=(R=255,G=255,B=255,A=0)
    MobileLandscapeMonochomeLayerColors[0]=(R=255,G=255,B=255,A=0)
    MobileLandscapeMonochomeLayerColors[1]=(R=255,G=255,B=255,A=0)
    MobileLandscapeMonochomeLayerColors[2]=(R=255,G=255,B=255,A=0)
    MobileLandscapeMonochomeLayerColors[3]=(R=255,G=255,B=255,A=0)
}