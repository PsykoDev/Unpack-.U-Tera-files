/*******************************************************************************
 * LandscapeProxy generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class LandscapeProxy extends Info
    native(Terrain)
    notplaceable
    hidecategories(Navigation,Movement,Collision,Display,Attachment,Physics,Debug,Lighting,LOD);

struct native LandscapeWeightmapUsage
{
    var export editinline LandscapeComponent ChannelUsage[4];

    structdefaultproperties
    {
        ChannelUsage[0]=none
        ChannelUsage[1]=none
        ChannelUsage[2]=none
        ChannelUsage[3]=none
    }
};

struct native LandscapeLayerStruct
{
    var LandscapeLayerInfoObject LayerInfoObj;
    var editoronly MaterialInstanceConstant ThumbnailMIC;
    var editoronly LandscapeProxy Owner;
    var editoronly transient int DebugColorChannel;
    var editoronly transient bool bSelected;
    var editoronly string SourceFilePath;

    structdefaultproperties
    {
        LayerInfoObj=none
        ThumbnailMIC=none
        Owner=none
        DebugColorChannel=0
        bSelected=false
        SourceFilePath=""
    }
};

var const Guid LandscapeGuid;
/** Max LOD level to use when rendering */
var(LOD) int MaxLODLevel;
/** Default physical material, used when no per-layer values physical materials */
var(Landscape) PhysicalMaterial DefaultPhysMaterial;
/**  
 *Allows artists to adjust the distance where textures using UV 0 are streamed in/out.
 * 1.0 is the default, whereas a higher value increases the streamed-in resolution.
 */
var(Landscape) const float StreamingDistanceMultiplier;
/** Combined material used to render the landscape */
var(Landscape) MaterialInterface LandscapeMaterial;
var(LOD) float LODDistanceFactor;
var const export editinline array<export editinline LandscapeComponent> LandscapeComponents;
var const export editinline array<export editinline LandscapeHeightfieldCollisionComponent> CollisionComponents;
var native const map<0, 0> MaterialInstanceConstantMap;
var native const map<0, 0> WeightmapUsageMap;
/**  
 *The resolution to cache lighting at, in texels/patch.
 *       A separate shadow-map is used for each terrain component, which is up to
 *       (MaxComponentSize StaticLightingResolution + 1) pixels on a side.
 *       Must be a power of two, 1 <= StaticLightingResolution <= MaxTesselationLevel.
 */
var(Lighting) float StaticLightingResolution;
var() transient Landscape LandscapeActor;
var const bool bIsProxy;
var editoronly transient bool bIsSetup;
var editoronly transient bool bResetup;
var editoronly transient bool bIsMovingToLevel;
var(Lightmass) LightmassPrimitiveSettings LightmassSettings<ScriptOrder=true>;
/** The landscape LOD level to use when generating collision data */
var(LOD) int CollisionMipLevel;
/** The first landscape LOD level to use on mobile platforms */
var(LOD) int MobileLODBias;
var array<LandscapeLayerStruct> LayerInfoObjs;
var const int ComponentSizeQuads;
var const int SubsectionSizeQuads;
var const int NumSubsections;

defaultproperties
{
    MaxLODLevel=-1
    StreamingDistanceMultiplier=1.0
    LODDistanceFactor=1.0
    StaticLightingResolution=1.0
    bIsProxy=true
    LightmassSettings=(bUseTwoSidedLighting=false,bShadowIndirectOnly=false,bUseEmissiveForStaticLighting=false,EmissiveLightFalloffExponent=2.0,EmissiveLightExplicitInfluenceRadius=0.0,EmissiveBoost=1.0,DiffuseBoost=1.0,SpecularBoost=1.0,FullyOccludedSamplesFraction=1.0)
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.S_Terrain'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__LandscapeProxy.Sprite'
    Components(0)=Sprite
    DrawScale3D=(X=128.0,Y=128.0,Z=256.0)
    bStatic=true
    bHidden=false
    bNoDelete=true
    bWorldGeometry=true
    bMovable=false
    bCollideActors=true
    bBlockActors=true
    bEdShouldSnap=true
    bLockLocation=true
}