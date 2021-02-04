/*******************************************************************************
 * Terrain generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Terrain extends Info
    native(Terrain)
    placeable
    hidecategories(Navigation);

struct TerrainHeight
{
};

struct TerrainInfoData
{
};

struct TerrainWeightedMaterial
{
};

struct TerrainLayer
{
    /** The name of the layer, for UI display purposes. */
    var() string Name;
    /** The TerrainLayerSetup, which declares the material(s) used in the layer. */
    var() TerrainLayerSetup Setup;
    var int AlphaMapIndex;
    /** Whether the layer should be highlighted when rendered. */
    var() bool Highlighted;
    /**  
     *Whether the layer should be wireframe highlighted when rendered.
     *               CURRENTLY NOT IMPLEMENTED
     */
    var() bool WireframeHighlighted;
    /** Whether the layer is hidden (not rendered). */
    var() bool Hidden;
    /** The color to highlight the layer with. */
    var() Color HighlightColor;
    /** The color to wireframe highlight the layer with. */
    var() Color WireframeColor;
    var int MinX;
    var int MinY;
    var int MaxX;
    var int MaxY;

    structdefaultproperties
    {
        Name=""
        Setup=none
        AlphaMapIndex=-1
        Highlighted=false
        WireframeHighlighted=false
        Hidden=false
        HighlightColor=(R=255,G=255,B=255,A=0)
        WireframeColor=(R=0,G=0,B=0,A=0)
        MinX=0
        MinY=0
        MaxX=0
        MaxY=0
    }
};

struct GlobalFoliageInstance
{
    var Vector Location;
    var Vector XAxis;
    var Vector YAxis;
    var Vector ZAxis;
    var Vector2D StaticLightingTexCoord;
    var float BoundingRadius;
    var float DistanceFactorSquared;

    structdefaultproperties
    {
        Location=(X=0.0,Y=0.0,Z=0.0)
        XAxis=(X=0.0,Y=0.0,Z=0.0)
        YAxis=(X=0.0,Y=0.0,Z=0.0)
        ZAxis=(X=0.0,Y=0.0,Z=0.0)
        StaticLightingTexCoord=(X=0.0,Y=0.0)
        BoundingRadius=0.0
        DistanceFactorSquared=0.0
    }
};

struct FoliageInstancePerComponent
{
    var int SectionBaseX;
    var int SectionBaseY;
    var int TrueSectionSizeX;
    var int TrueSectionSizeY;
    var array<GlobalFoliageInstance> FoliageData;
    var native UntypedBulkData_Mirror FoliageInstanceBulkData;

    structdefaultproperties
    {
        SectionBaseX=0
        SectionBaseY=0
        TrueSectionSizeX=0
        TrueSectionSizeY=0
        FoliageData=none
    }
};

struct FoliageGuid
{
    var int A;
    var int B;
    var int C;
    var int D;

    structdefaultproperties
    {
        A=0
        B=0
        C=0
        D=0
    }
};

struct GlobalFoliageMesh
{
    /** TerrainMaterial.uc?? ????. */
    var() StaticMesh StaticMesh;
    /** TerrainMaterial.uc?? ????. */
    var() MaterialInterface Material;
    /** TerrainMaterial.uc?? ????. */
    var() float Density;
    /** TerrainMaterial.uc?? ????. */
    var() float MaxDrawRadius;
    /** TerrainMaterial.uc?? ????. */
    var() float MinTransitionRadius;
    /** TerrainMaterial.uc?? ????. */
    var() float MinScale;
    /** TerrainMaterial.uc?? ????. */
    var() float MaxScale;
    /** TerrainMaterial.uc?? ????. */
    var() float MinUniformScale;
    /** TerrainMaterial.uc?? ????. */
    var() float MaxUniformScale;
    /** TerrainMaterial.uc?? ????. */
    var() float MinThinningRadius;
    /** TerrainMaterial.uc?? ????. */
    var() int Seed;
    /** TerrainMaterial.uc?? ????. */
    var() float SwayScale;
    /** The weight of the terrain material above which the foliage is spawned. */
    var() float AlphaMapThreshold;
    /**  
     *The amount to rotate the mesh to match the slope of the terrain 
     *               where it is being placed. If 1.0, the mesh will match the slope
     *               exactly.
     */
    var() float SlopeRotationBlend;
    var FoliageGuid MeshGuid;
    var native array<FoliageInstancePerComponent> FoliageDataPerComponent;

    structdefaultproperties
    {
        StaticMesh=none
        Material=none
        Density=0.0
        MaxDrawRadius=1024.0
        MinTransitionRadius=0.0
        MinScale=1.0
        MaxScale=1.0
        MinUniformScale=1.0
        MaxUniformScale=1.0
        MinThinningRadius=1024.0
        Seed=0
        SwayScale=1.0
        AlphaMapThreshold=0.0
        SlopeRotationBlend=0.0
        MeshGuid=(A=0,B=0,C=0,D=0)
    }
};

struct GlobalFoliageMeshStore
{
    var StaticMesh StaticMesh;
    var MaterialInterface Material;
    var float Density;
    var float MaxDrawRadius;
    var float MinTransitionRadius;
    var float MinScale;
    var float MaxScale;
    var float MinUniformScale;
    var float MaxUniformScale;
    var float MinThinningRadius;
    var int Seed;
    var float SwayScale;
    var float AlphaMapThreshold;
    var float SlopeRotationBlend;
    var FoliageGuid MeshGuid;
    var array<FoliageInstancePerComponent> FoliageDataPerComponent;

    structdefaultproperties
    {
        StaticMesh=none
        Material=none
        Density=0.0
        MaxDrawRadius=1024.0
        MinTransitionRadius=0.0
        MinScale=1.0
        MaxScale=1.0
        MinUniformScale=1.0
        MaxUniformScale=1.0
        MinThinningRadius=1024.0
        Seed=0
        SwayScale=1.0
        AlphaMapThreshold=0.0
        SlopeRotationBlend=0.0
        MeshGuid=(A=0,B=0,C=0,D=0)
        FoliageDataPerComponent=none
    }
};

struct GlobalFoliageLayer
{
    /** The name of the layer, for UI display purposes. */
    var() string Name;
    /** The name of the layer, for UI display purposes. */
    var() array<GlobalFoliageMesh> FoliageLayer;

    structdefaultproperties
    {
        Name=""
        FoliageLayer=none
    }
};

struct GlobalFoliageMinMax
{
    var float MinScale;
    var float MaxScale;

    structdefaultproperties
    {
        MinScale=1.0
        MaxScale=1.0
    }
};

struct AlphaMap
{
};

struct TerrainDecorationInstance
{
    var export editinline PrimitiveComponent Component;
    var float X;
    var float Y;
    var float Scale;
    var int Yaw;

    structdefaultproperties
    {
        Component=none
        X=0.0
        Y=0.0
        Scale=0.0
        Yaw=0
    }
};

struct TerrainDecoration
{
    /** The factory used to generate the decoration mesh. */
    var() editinline PrimitiveComponentFactory Factory;
    /** The min scale to apply to the source mesh. */
    var() float MinScale;
    /** The max scale to apply to the source mesh. */
    var() float MaxScale;
    /** The density to use when applying the mesh to the terrain. */
    var() float Density;
    /**  
     *The amount to rotate the mesh to match the slope of the terrain
     *               where it is being placed. If 1.0, the mesh will match the slope
     *               exactly.
     */
    var() float SlopeRotationBlend;
    /** The value to use to seed the random number generator. */
    var() int RandSeed;
    var array<TerrainDecorationInstance> Instances;

    structdefaultproperties
    {
        Factory=none
        MinScale=1.0
        MaxScale=1.0
        Density=0.010
        SlopeRotationBlend=0.0
        RandSeed=0
        Instances=none
    }
};

struct TerrainDecoLayer
{
    /** The name of the DecoLayer, for UI display purposes. */
    var() string Name;
    /** The decoration(s) to apply for this layer. */
    var() array<TerrainDecoration> Decorations;
    var int AlphaMapIndex;

    structdefaultproperties
    {
        Name=""
        Decorations=none
        AlphaMapIndex=-1
    }
};

struct TerrainMaterialResource
{
};

struct native CachedTerrainMaterialArray
{
    var native const array<Pointer> CachedMaterials;
};

struct SelectedTerrainVertex
{
    var int X;
    var int Y;
    var int Weight;

    structdefaultproperties
    {
        X=0
        Y=0
        Weight=0
    }
};

struct TerrainVegetationInstance
{
    var export editinline PrimitiveComponent Component;

    structdefaultproperties
    {
        Component=none
    }
};

struct TerrainVegetation
{
    var() editinline ActorFactory Factory;
    var() float MinScale;
    var() float MaxScale;
    var() float Density;
    var() float SlopeRotationBlend;
    var() bool RandomRotation;
    var array<TerrainVegetationInstance> Instances;
    var bool LockOn;

    structdefaultproperties
    {
        Factory=none
        MinScale=1.0
        MaxScale=1.0
        Density=1.0
        SlopeRotationBlend=0.0
        RandomRotation=false
        Instances=none
        LockOn=false
    }
};

struct TerrainVegetationLayer
{
    var() string Name;
    var() array<TerrainVegetation> Vegetations;

    structdefaultproperties
    {
        Name=""
        Vegetations=none
    }
};

/** Structs that are mirrored properly in C++.WITH_S1ducklmg 2008.10.7 : AmbientOcclusion */
var(AmbientOcclusion) editoronly int RayCount;
var(AmbientOcclusion) editoronly float RayDistance;
var private native const array<TerrainHeight> Heights;
var private native const array<TerrainInfoData> InfoData;
/** Array of the terrain layers applied to the terrain */
var() const array<TerrainLayer> Layers;
/** #if WITH_S1airsulg      Layers? ??? ??? TempLayers.  Terrain?? Pawn? ?? ?? ??(ex 30?)? ????? Layer? ???? ??? ?????.var editoronly       transient       array<TerrainLayer>                                                     TempLayers;var editoronly       transient       array<TerrainDecoLayer>                                         TempDecoLayers;var editoronly   transient       array<AlphaMap>                                                         TempAlphaMaps; */
var() editoronly transient bool bShowSlope;
var transient bool bSetPreEditLocation;
/**  
 *If true, the light/shadow map size is no longer restricted...
 *       The size of the light map will be (per component):
 *               INT LightMapSizeX = Component->SectionSizeX StaticLightingResolution + 1;
 *               INT LightMapSizeY = Component->SectionSizeY StaticLightingResolution + 1;
 * 
 *       So, the maximum size of a light/shadow map for a component will be:
 *               MaxMapSizeX = MaxComponentSize StaticLightingResolution + 1
 *               MaxMapSizeY = MaxComponentSize StaticLightingResolution + 1
 * 
 *       Be careful with the setting of StaticLightingResolution when this mode is enabled.
 *       It will be quite easy to run up a massive texture requirement on terrain!
 */
var(Lighting) bool bIsOverridingLightResolution;
/**  
 *If true, the lightmap generation will be performed using the bilinear filtering
 *       that all other lightmap generation in the engine uses.
 */
var(Lighting) bool bBilinearFilterLightmapGeneration;
/**  
 *Whether terrain should cast shadows.
 * 
 * Property is propagated to terrain components
 */
var(Lighting) bool bCastShadow;
/**  
 *If true, forces all static lights to use light-maps for direct lighting on the terrain, regardless of
 * the light's UseDirectLightMap property.
 * 
 * Property is propagated to terrain components .
 */
var(Lighting) const bool bForceDirectLightMap;
/**  
 *If false, primitive does not cast dynamic shadows.
 * 
 * Property is propagated to terrain components .
 */
var(Lighting) const bool bCastDynamicShadow;
/** If TRUE, enable specular on this terrain. */
var(Lighting) bool bEnableSpecular;
/**  
 *If false, primitive does not block rigid body physics.
 * 
 * Property is propagated to terrain components.
 */
var(Collision) const bool bBlockRigidBody;
/** If true, this allows rigid bodies to go underneath visible areas of the terrain. This adds some physics cost. */
var(Collision) const bool bAllowRigidBodyUnderneath;
/**  
 *If false, primitive does not accept dynamic lights, aka lights with HasStaticShadowing() == FALSE
 * 
 * Property is propagated to terrain components.
 */
var(Lighting) const bool bAcceptsDynamicLights;
/** Whether to utilize morping terrain or not */
var() bool bMorphingEnabled;
/** Whether to utilize morping gradients or not (bMorphingEnabled must be true for this to matter) */
var() bool bMorphingGradientsEnabled;
var bool bLocked;
var bool bHeightmapLocked;
var bool bShowingCollision;
/** Base UVs from world origin, to avoid layering seams in adjacent terrains */
var() bool bUseWorldOriginTextureUVs;
/** Tells the terrain to render in wireframe. */
var() bool bShowWireframe;
/** hsh6679 - dx11 integration#if WITH_S1 whitehnd 2014.1.8 : - for sm5 caching */
var() transient bool ShaderCacheNeeded;
var() transient bool WaitingTerrainMaterial;
var transient array<GlobalFoliageMinMax> GlobalFoliageTempMinMax;
var const array<GlobalFoliageMeshStore> GlobalFoliageMeshStores;
var() nontransactional const array<GlobalFoliageLayer> GlobalFoliageLayers;
var native array<GlobalFoliageMeshStore> StoredGlobalFoliageMeshes;
var transient Vector PreEditLocation;
/**  
 *The index of the layer that supplies the normal map for the whole terrain.
 *       If this is -1, the terrain will compile the normal property the old way
 *               (all normal maps blended together).
 *       If this is a valid index into the layer array, it will compile the normal
 *               property only for the material(s) contained in said layer.
 */
var() int NormalMapLayer;
/** Array of the decoration layers applied */
var() const array<TerrainDecoLayer> DecoLayers;
/** Array of the alpha maps between layers                                                                          //#if WITH_S1//ducklmg 2007.5.7 : ??? ??? */
var() int AlphaMapRes;
var transient int OldAlphaMapRes;
var native const array<AlphaMap> AlphaMaps;
var nontransactional const export editinline array<export editinline TerrainComponent> TerrainComponents;
var const int NumSectionsX;
var const int NumSectionsY;
var private native const array<TerrainWeightedMaterial> WeightedMaterials;
var private native const array<TerrainWeightMapTexture> WeightedTextureMaps;
var native const array<byte> CachedDisplacements;
var native const float MaxCollisionDisplacement;
/**  
 *The maximum number of quads in a single row/column of a tessellated patch.
 *  Must be a power of two, 1 <= MaxTesselationLevel <= 16
 */
var() int MaxTesselationLevel;
/**  
 *The minimum number of quads in a tessellated patch.
 *       Must be a power of two, 1 <= MaxTesselationLevel
 */
var() int MinTessellationLevel;
/**  
 *The scale factor to apply to the distance used in determining the tessellation
 *       level to utilize when rendering a patch.
 *               TessellationLevel = SomeFunction((Patch distance to camera) TesselationDistanceScale)
 */
var() float TesselationDistanceScale;
/**  
 *The radius from the view origin that terrain tessellation checks should be performed.
 *       If less than 0, the general setting from the engine configuration will be used.
 *       If 0.0, every component will be checked for tessellation changes each frame.
 */
var() float TessellationCheckDistance;
/** The tessellation level to utilize when performing collision checks with non-zero extents. */
var(Collision) int CollisionTesselationLevel;
var native const CachedTerrainMaterialArray CachedTerrainMaterials[2];
var const int NumVerticesX;
var const int NumVerticesY;
/**  
 *The number of patches in a single row of the terrain's patch grid.
 *  PostEditChange clamps this to be >= 1.
 *       Note that if you make this and/or NumPatchesY smaller, it will destroy the height-map/alpha-map
 *       data which is no longer used by the patches.If you make the dimensions larger, it simply fills
 *       in the new height-map/alpha-map data with zero.
 */
var() int NumPatchesX;
/**  
 *The number of patches in a single column of the terrain's patch grid.
 *  PostEditChange clamps this to be >= 1.
 */
var() int NumPatchesY;
/**  
 *For rendering and collision, split the terrain into components with a maximum size of
 *               (MaxComponentSize,MaxComponentSize) patches.
 *       The terrain is split up into rectangular groups of patches called terrain components for rendering.
 *       MaxComponentSize is the maximum number of patches in a single row/column of a terrain component.
 *       Generally, all components will be MaxComponentSize patches square, but on terrains with a patch
 *       resolution which isn't a multiple of MaxComponentSize, there will be some components along the edges
 *       which are smaller.
 * 
 *       This is limited by the MaxTesselationLevel, to prevent the vertex buffer for a fully tessellated
 *       component from being > 65536 vertices.
 *       For a MaxTesselationLevel of 16, MaxComponentSize is limited to <= 15.
 *       For a MaxTesselationLevel of 8, MaxComponentSize is limited to <= 31.
 * 
 *       PostEditChange clamps this to be >= 1.
 */
var() int MaxComponentSize;
/**  
 *The resolution to cache lighting at, in texels/patch.
 *       A separate shadow-map is used for each terrain component, which is up to
 *       (MaxComponentSize StaticLightingResolution + 1) pixels on a side.
 *       Must be a power of two, 1 <= StaticLightingResolution <= MaxTesselationLevel.
 */
var(Lighting) int StaticLightingResolution;
/** PhysicalMaterial to use for entire terrain */
var(Physics) const PhysicalMaterial TerrainPhysMaterialOverride;
/** Lighting channels controlling light/ primitive interaction. Only allows interaction if at least one channel is shared */
var(Lighting) const LightingChannelContainer LightingChannels;
/** Lightmass settings for the terrain */
var(Lightmass) LightmassPrimitiveSettings LightmassSettings<ScriptOrder=true>;
var native const Pointer ReleaseResourcesFence;
/** Editor-viewing tessellation level */
var() transient int EditorTessellationLevel;
var transient array<SelectedTerrainVertex> SelectedVertices;
/** The color to use when rendering the wireframe of the terrain. */
var() Color WireframeColor;
var private editoronly const Guid LightingGuid;
var() const array<TerrainVegetationLayer> VegetationLayers;
var int CurrentLoadingTerrainComponentIndex;

// Export UTerrain::execCalcLayerBounds(FFrame&, void* const)
native final function CalcLayerBounds();

simulated event PostBeginPlay()
{
    local int I;

    CalcLayerBounds();
    I = 0;
    J0x15:
    // End:0xA3 [Loop If]
    if(I < Layers.Length)
    {
        // End:0x95
        if(Layers[I].Setup != none)
        {
            Layers[I].Setup.PostBeginPlay();
        }
        ++ I;
        // [Loop Continue]
        goto J0x15;
    }
    //return;    
}

defaultproperties
{
    bBilinearFilterLightmapGeneration=true
    bCastShadow=true
    bForceDirectLightMap=true
    bCastDynamicShadow=true
    bAcceptsDynamicLights=true
    NormalMapLayer=-1
    AlphaMapRes=4
    MaxTesselationLevel=4
    MinTessellationLevel=1
    TesselationDistanceScale=1.0
    TessellationCheckDistance=-1.0
    CollisionTesselationLevel=1
    NumPatchesX=1
    NumPatchesY=1
    MaxComponentSize=16
    StaticLightingResolution=4
    LightingChannels=(bInitialized=true,BSP=false,Static=true,Dynamic=false,CompositeDynamic=false,Skybox=false,Unnamed_1=false,Unnamed_2=false,Unnamed_3=false,Unnamed_4=false,Unnamed_5=false,Unnamed_6=false,Cinematic_1=false,Cinematic_2=false,Cinematic_3=false,Cinematic_4=false,Cinematic_5=false,Cinematic_6=false,Cinematic_7=false,Cinematic_8=false,Cinematic_9=false,Cinematic_10=false,Gameplay_1=false,Gameplay_2=false,Gameplay_3=false,Gameplay_4=false,Crowd=false)
    LightmassSettings=(bUseTwoSidedLighting=false,bShadowIndirectOnly=false,bUseEmissiveForStaticLighting=false,EmissiveLightFalloffExponent=2.0,EmissiveLightExplicitInfluenceRadius=0.0,EmissiveBoost=1.0,DiffuseBoost=1.0,SpecularBoost=1.0,FullyOccludedSamplesFraction=1.0)
    WireframeColor=(R=0,G=255,B=255,A=0)
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.S_Terrain'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__Terrain.Sprite'
    Components(0)=Sprite
    DrawScale3D=(X=256.0,Y=256.0,Z=256.0)
    bStatic=true
    bHidden=false
    bNoDelete=true
    bWorldGeometry=true
    bCollideActors=true
    bBlockActors=true
    bEdShouldSnap=true
}