/*******************************************************************************
 * Material generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Material extends MaterialInterface
    native(Material)
    hidecategories(Object);

struct MaterialInput
{
    var MaterialExpression Expression;
    var int OutputIndex;
    var string InputName;
    var int Mask;
    var int MaskR;
    var int MaskG;
    var int MaskB;
    var int MaskA;
    var int GCC64_Padding;

    structdefaultproperties
    {
        Expression=none
        OutputIndex=0
        InputName=""
        Mask=0
        MaskR=0
        MaskG=0
        MaskB=0
        MaskA=0
        GCC64_Padding=0
    }
};

struct ColorMaterialInput extends MaterialInput
{
    var bool UseConstant;
    var Color Constant;
};

struct ScalarMaterialInput extends MaterialInput
{
    var bool UseConstant;
    var float Constant;
};

struct VectorMaterialInput extends MaterialInput
{
    var bool UseConstant;
    var Vector Constant;
};

struct Vector2MaterialInput extends MaterialInput
{
    var bool UseConstant;
    var float ConstantX;
    var float ConstantY;
};

struct native MaterialFunctionInfo
{
    var Guid StateId;
    var MaterialFunction Function;

    structdefaultproperties
    {
        StateId=(A=0,B=0,C=0,D=0)
        Function=none
    }
};

/** Physical material to use for this graphics material. Used for sounds, effects etc. */
var(PhysicalMaterial) PhysicalMaterial PhysMaterial;
var class<PhysicalMaterial> PhysicalMaterial;
/** A 1 bit monochrome texture that represents a mask for what physical material should be used if the collided texel is black or white. */
var(PhysicalMaterial) Texture2D PhysMaterialMask;
/** The UV channel to use for the PhysMaterialMask. */
var(PhysicalMaterial) int PhysMaterialMaskUVChannel;
/** The physical material to use when a black pixel in the PhysMaterialMask texture is hit. */
var(PhysicalMaterial) PhysicalMaterial BlackPhysicalMaterial;
/** The physical material to use when a white pixel in the PhysMaterialMask texture is hit. */
var(PhysicalMaterial) PhysicalMaterial WhitePhysicalMaterial;
var ColorMaterialInput DiffuseColor;
var ScalarMaterialInput DiffusePower;
var ColorMaterialInput SpecularColor;
var ScalarMaterialInput SpecularPower;
var VectorMaterialInput Normal;
var ColorMaterialInput EmissiveColor;
var ScalarMaterialInput Opacity;
var ScalarMaterialInput OpacityMask;
/** If BlendMode is BLEND_Masked or BLEND_SoftMasked, the surface is not rendered where OpacityMask < OpacityMaskClipValue. */
var() float OpacityMaskClipValue;
/** Can be used to bias shadows away from the surface. */
var(Misc) float ShadowDepthBias;
var Vector2MaterialInput Distortion;
/** Determines how the material's color is blended with background colors. */
var() EngineTypes.EBlendMode BlendMode;
/** Determines how inputs are combined to create the material's final color. */
var() EngineTypes.EMaterialLightingModel LightingModel;
/** The type of tessellation to apply to this object.  Note D3D11 required for anything except MTM_NoTessellation. */
var(D3D11) const EngineTypes.EMaterialTessellationMode D3D11TessellationMode<bShowOnlyWhenTrue=bShowD3D11Properties>;
var ColorMaterialInput CustomLighting;
var ColorMaterialInput CustomSkylightDiffuse;
var VectorMaterialInput AnisotropicDirection;
var ScalarMaterialInput TwoSidedLightingMask;
var ColorMaterialInput TwoSidedLightingColor;
var VectorMaterialInput WorldPositionOffset;
var VectorMaterialInput WorldDisplacement;
var ScalarMaterialInput TessellationMultiplier;
var ColorMaterialInput SubsurfaceInscatteringColor;
var ColorMaterialInput SubsurfaceAbsorptionColor;
var ScalarMaterialInput SubsurfaceScatteringRadius;
/** Indicates that the material should be rendered with subsurface scattering. */
var(D3D11) bool EnableSubsurfaceScattering<bShowOnlyWhenTrue=bShowD3D11Properties>;
/** Indicates that the material should be rendered in the SeparateTranslucency Pass (does not affect bloom, not affected by DOF, requires bAllowSeparateTranslucency to be set in .ini). */
var(Misc) bool EnableSeparateTranslucency;
/** Indicates that the material should be rendered with antialiasing. Opacity is evaluated multiple times (for each MSAA sample). */
var(D3D11) bool bEnableMaskedAntialiasing<bShowOnlyWhenTrue=bShowD3D11Properties>;
/** Indicates that the material should be rendered without backface culling and the normal should be flipped for backfaces. */
var() bool TwoSided;
/** #if WITH_GTRGuitarjawa, CulledTranslucent */
var(Translucency) bool CulledTranslucent;
var(Translucency) bool CulledTranslucentForBackgroundObject;
/** Indicates that the material should be rendered in its own pass. Used for hair renderering */
var(Translucency) bool TwoSidedSeparatePass;
/**  
 *Allows the material to disable depth tests, which is only meaningful with translucent blend modes.
 * Disabling depth tests will make rendering significantly slower since no occluded pixels can get zculled.
 */
var(Translucency) bool bDisableDepthTest;
/**  
 *If enabled and this material reads from scene texture, this material will be rendered behind all other translucency, 
 * Instead of the default behavior for materials that read from scene texture, which is for them to render in front of all other translucency in the same DPG.
 * This is useful for placing large spheres around a level that read from scene texture to do chromatic aberration.
 */
var(Translucency) bool bSceneTextureRenderBehindTranslucency;
/** Whether the material should allow fog or be unaffected by fog.  This only has meaning for materials with translucent blend modes. */
var(Translucency) bool bAllowFog;
/**  
 *Whether the material should receive dynamic dominant light shadows from static objects when the material is being lit by a light environment. 
 * This is useful for character hair.
 */
var(Translucency) bool bTranslucencyReceiveDominantShadowsFromStatic;
/**  
 *Whether the material should inherit the dynamic shadows that dominant lights are casting on opaque and masked materials behind this material.
 * This is useful for ground meshes using a translucent blend mode and depth biased alpha to hide seams.
 */
var(Translucency) bool bTranslucencyInheritDominantShadowsFromOpaque;
/** Whether the material should allow Depth of Field or be unaffected by DoF.  This only has meaning for materials with translucent blend modes. */
var(Translucency) bool bAllowTranslucencyDoF;
/**  
 *Whether the material should use one-layer distortion, which can be cheaper than normal distortion for some primitive types (mainly fluid surfaces).
 * One layer distortion won't handle overlapping one layer distortion primitives correctly.
 * This causes an extra scene color resolve for the first primitive that uses one layer distortion and so should only be used in very specific circumstances.
 */
var(Translucency) bool bUseOneLayerDistortion;
/** If this is set, a depth-only pass for will be rendered for solid (A=255) areas of dynamic lit translucency primitives. This improves hair sorting at the extra render cost. */
var(Translucency) bool bUseLitTranslucencyDepthPass;
/** If this is set, a depth-only pass for will be rendered for any visible (A>0) areas of dynamic lit translucency primitives. This is necessary for correct fog and DoF of hair */
var(Translucency) bool bUseLitTranslucencyPostRenderDepthPass;
/** Whether to treat the material's opacity channel as a mask rather than fractional translucency in dynamic shadows. */
var(Translucency) bool bCastLitTranslucencyShadowAsMasked;
var(MutuallyExclusiveUsage) const bool bUsedAsLightFunction;
/** Indicates that the material is used on fog volumes.  This usage flag is mutually exclusive with all other mesh type usage flags! */
var(MutuallyExclusiveUsage) const bool bUsedWithFogVolumes;
var duplicatetransient const bool bUsedAsSpecialEngineMaterial;
/**  
 *Indicates that the material and its instances can be assigned to skeletal meshes.  
 * This will result in the shaders required to support skeletal meshes being compiled which will increase shader compile time and memory usage.
 */
var(Usage) const bool bUsedWithSkeletalMesh;
var(Usage) const bool bUsedWithTerrain;
var(Usage) const bool bUsedWithLandscape;
var(Usage) const bool bUsedWithMobileLandscape;
var(Usage) const bool bUsedWithFracturedMeshes;
var const bool bUsedWithParticleSystem;
var(Usage) const bool bUsedWithParticleSprites;
var(Usage) const bool bUsedWithBeamTrails;
var(Usage) const bool bUsedWithParticleSubUV;
/** #if WITH_S1  hsh6679 - foliage integration */
var(Usage) const bool bUsedWithFoliage;
/** #endif */
var(Usage) const bool bUsedWithSpeedTree;
var(Usage) const bool bUsedWithStaticLighting;
var(Usage) const bool bUsedWithLensFlare;
/**  
 *Gamma corrects the output of the base pass using the current render target's gamma value. 
 * This must be set on materials used with UIScenes to get correct results.
 */
var(Usage) const bool bUsedWithGammaCorrection;
/** Enables instancing for mesh particles.  Use the "Vertex Color" node when enabled, not "MeshEmit VertColor." */
var(Usage) const bool bUsedWithInstancedMeshParticles;
var(Usage) const bool bUsedWithFluidSurfaces;
/** WARNING: bUsedWithDecals is mutually exclusive with all other mesh type usage flags!  A material with bUsedWithDecals=true will not work on any other mesh type. */
var(MutuallyExclusiveUsage) const bool bUsedWithDecals;
var(Usage) const bool bUsedWithMaterialEffect;
var(Usage) const bool bUsedWithMorphTargets;
var(Usage) const bool bUsedWithRadialBlur;
var(Usage) const bool bUsedWithInstancedMeshes;
var(Usage) const bool bUsedWithSplineMeshes;
var(Usage) const bool bUsedWithAPEXMeshes;
/** Enables support for screen door fading for primitives rendering with this material.  This adds an extra texture lookup and a few extra instructions. */
var(Usage) const bool bUsedWithScreenDoorFade;
/** Prevents cracks in the surface of the mesh when using tessellation. */
var(D3D11) const bool bEnableCrackFreeDisplacement<bShowOnlyWhenTrue=bShowD3D11Properties>;
/** Enables frustum culling when using tessellation. Useful for large meshes where only a part will generally be visible on screen at a time. */
var(D3D11) const bool bTessellationFrustumCulling<bShowOnlyWhenTrue=bShowD3D11Properties>;
/** Enables backface culling when using tessellation. Useful for closed meshes that are close to the camera and aren't too dense. */
var(D3D11) const bool bTessellationBackfaceCulling<bShowOnlyWhenTrue=bShowD3D11Properties>;
/**  
 *Replaces analytical phong specular highlights on this material with an image based reflection,
 * Specified by the ImageReflection actors placed in the world.  Only works in D3D11.
 */
var(D3D11) bool bUseImageBasedReflections<bShowOnlyWhenTrue=bShowD3D11Properties>;
var(Misc) bool Wireframe;
/** When enabled, the camera vector will be computed in the pixel shader instead of the vertex shader which may improve the quality of the reflection.  Enabling this setting also allows VertexColor expressions to be used alongside Transform expressions. */
var(Misc) bool bPerPixelCameraVector;
/** Controls whether lightmap specular will be rendered or not.  Can be disabled to reduce instruction count. */
var(Misc) bool bAllowLightmapSpecular;
var deprecated bool bIsFallbackMaterial;
var private bool bUsesDistortion;
var private bool bIsMasked;
var private duplicatetransient transient bool bIsPreviewMaterial;
/** Values larger than 1 dampen the normal used for image reflections, values smaller than 1 exaggerate the normal used for image reflections. */
var(D3D11) float ImageReflectionNormalDampening<bShowOnlyWhenTrue=bShowD3D11Properties>;
var duplicatetransient native const Pointer MaterialResources[2];
var duplicatetransient native const Pointer DefaultMaterialInstances[3];
var int EditorX;
var int EditorY;
var int EditorPitch;
var int EditorYaw;
var array<MaterialExpression> Expressions;
var editoronly array<editoronly MaterialExpressionComment> EditorComments;
var array<MaterialFunctionInfo> MaterialFunctionInfos;
var native map<0, 0> EditorParameters;
var private const deprecated array<deprecated Texture> ReferencedTextures;
var private editoronly const array<editoronly Guid> ReferencedTextureGuids;

defaultproperties
{
    PhysMaterialMaskUVChannel=-1
    DiffuseColor=(UseConstant=false,Constant=(R=128,G=128,B=128,A=0),Expression=none,OutputIndex=0,InputName="",Mask=0,MaskR=0,MaskG=0,MaskB=0,MaskA=0,GCC64_Padding=0)
    DiffusePower=(UseConstant=false,Constant=1.0,Expression=none,OutputIndex=0,InputName="",Mask=0,MaskR=0,MaskG=0,MaskB=0,MaskA=0,GCC64_Padding=0)
    SpecularColor=(UseConstant=false,Constant=(R=128,G=128,B=128,A=0),Expression=none,OutputIndex=0,InputName="",Mask=0,MaskR=0,MaskG=0,MaskB=0,MaskA=0,GCC64_Padding=0)
    SpecularPower=(UseConstant=false,Constant=15.0,Expression=none,OutputIndex=0,InputName="",Mask=0,MaskR=0,MaskG=0,MaskB=0,MaskA=0,GCC64_Padding=0)
    Opacity=(UseConstant=false,Constant=1.0,Expression=none,OutputIndex=0,InputName="",Mask=0,MaskR=0,MaskG=0,MaskB=0,MaskA=0,GCC64_Padding=0)
    OpacityMask=(UseConstant=false,Constant=1.0,Expression=none,OutputIndex=0,InputName="",Mask=0,MaskR=0,MaskG=0,MaskB=0,MaskA=0,GCC64_Padding=0)
    OpacityMaskClipValue=0.33330
    TwoSidedLightingColor=(UseConstant=false,Constant=(R=255,G=255,B=255,A=0),Expression=none,OutputIndex=0,InputName="",Mask=0,MaskR=0,MaskG=0,MaskB=0,MaskA=0,GCC64_Padding=0)
    SubsurfaceInscatteringColor=(UseConstant=false,Constant=(R=255,G=255,B=255,A=0),Expression=none,OutputIndex=0,InputName="",Mask=0,MaskR=0,MaskG=0,MaskB=0,MaskA=0,GCC64_Padding=0)
    SubsurfaceAbsorptionColor=(UseConstant=false,Constant=(R=230,G=200,B=200,A=0),Expression=none,OutputIndex=0,InputName="",Mask=0,MaskR=0,MaskG=0,MaskB=0,MaskA=0,GCC64_Padding=0)
    bAllowFog=true
    bAllowLightmapSpecular=true
    ImageReflectionNormalDampening=5.0
}