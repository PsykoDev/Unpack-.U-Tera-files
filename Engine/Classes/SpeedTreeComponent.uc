/*******************************************************************************
 * SpeedTreeComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SpeedTreeComponent extends PrimitiveComponent
    native(SpeedTree)
    editinlinenew
    hidecategories(Object)
    autoexpandcategories(Collision,Rendering,Lighting);

enum ESpeedTreeMeshType
{
    STMT_MinMinusOne,
    STMT_Branches,
    STMT_Branches1,
    STMT_Branches2,
    STMT_Fronds,
    STMT_LeafCards,
    STMT_LeafMeshes,
    STMT_Billboards,
    STMT_Max
};

struct native SpeedTreeStaticLight
{
    var private const Guid Guid;
    var private const ShadowMap1D BranchShadowMap;
    var private const ShadowMap1D FrondShadowMap;
    var private const ShadowMap1D BranchAndFrondShadowMap;
    var private const ShadowMap1D LeafMeshShadowMap;
    var private const ShadowMap1D LeafCardShadowMap;
    var private const ShadowMap1D BillboardShadowMap;

    structdefaultproperties
    {
        Guid=(A=0,B=0,C=0,D=0)
        BranchShadowMap=none
        FrondShadowMap=none
        BranchAndFrondShadowMap=none
        LeafMeshShadowMap=none
        LeafCardShadowMap=none
        BillboardShadowMap=none
    }
};

/** USpeedTree resource. */
var(SpeedTree) const SpeedTree SpeedTree;
/** Whether to draw leaf cards or not. */
var(SpeedTree) bool bUseLeafCards;
/** Whether to draw leaf meshes or not. */
var(SpeedTree) bool bUseLeafMeshes;
/** Whether to draw branches or not. */
var(SpeedTree) bool bUseBranches;
/** Whether to draw fronds or not. */
var(SpeedTree) bool bUseFronds;
/** Whether billboards are drawn at the lowest LOD or not. */
var(SpeedTree) bool bUseBillboards;
/** Whether to draw leaves or not. */
var(SpeedTree) bool bUseLeaves;
/** The distance for the most detailed tree. */
var(SpeedTree) float Lod3DStart;
/** The distance for the lowest detail tree. */
var(SpeedTree) float Lod3DEnd;
/** The distance for the most detailed tree. */
var(SpeedTree) float LodBillboardStart;
/** The distance for the lowest detail tree. */
var(SpeedTree) float LodBillboardEnd;
/** the tree will use this LOD level (0.0 - 1.0). If -1.0, the tree will calculate its LOD normally. */
var(SpeedTree) float LodLevelOverride;
/** The distance for the most detailed tree. */
var(SpeedTree) float LodNearDistance;
/** The distance for the lowest detail tree. */
var(SpeedTree) float LodFarDistance;
/** Branch material. */
var(SpeedTree) MaterialInterface BranchMaterial;
/** Leaf material. */
var(SpeedTree) MaterialInterface LeafMaterial;
var private native const float WindMatrixOffset;
/** Branch material. */
var(SpeedTree) MaterialInterface Branch1Material;
/** Cap material. */
var(SpeedTree) MaterialInterface Branch2Material;
/** Frond material. */
var(SpeedTree) MaterialInterface FrondMaterial;
/** Leaf card material. */
var(SpeedTree) MaterialInterface LeafCardMaterial;
/** Leaf mesh material. */
var(SpeedTree) MaterialInterface LeafMeshMaterial;
/** Billboard material. */
var(SpeedTree) MaterialInterface BillboardMaterial;
var private editoronly Texture2D SpeedTreeIcon;
var private const array<SpeedTreeStaticLight> StaticLights;
var private native const LightMapRef BranchLightMap;
var private native const LightMapRef FrondLightMap;
var private native const LightMapRef BranchAndFrondLightMap;
var private native const LightMapRef LeafMeshLightMap;
var private native const LightMapRef LeafCardLightMap;
var private native const LightMapRef BillboardLightMap;
var private native const Matrix RotationOnlyMatrix;
/** The Lightmass settings for the entire speedtree. */
var(Lightmass) LightmassPrimitiveSettings LightmassSettings<ScriptOrder=true>;

// Export USpeedTreeComponent::execGetMaterial(FFrame&, void* const)
native function MaterialInterface GetMaterial(SpeedTreeComponent.ESpeedTreeMeshType MeshType);

// Export USpeedTreeComponent::execSetMaterial(FFrame&, void* const)
native function SetMaterial(SpeedTreeComponent.ESpeedTreeMeshType MeshType, MaterialInterface Material);

defaultproperties
{
    bUseLeafCards=true
    bUseLeafMeshes=true
    bUseBranches=true
    bUseFronds=true
    bUseBillboards=true
    bUseLeaves=true
    Lod3DStart=500.0
    Lod3DEnd=3000.0
    LodBillboardStart=3500.0
    LodBillboardEnd=4000.0
    LodLevelOverride=1.0
    LodNearDistance=500.0
    LodFarDistance=3000.0
    SpeedTreeIcon=Texture2D'EditorResources.SpeedTreeLogo'
    LightmassSettings=(bUseTwoSidedLighting=false,bShadowIndirectOnly=false,bUseEmissiveForStaticLighting=false,EmissiveLightFalloffExponent=2.0,EmissiveLightExplicitInfluenceRadius=0.0,EmissiveBoost=1.0,DiffuseBoost=1.0,SpecularBoost=1.0,FullyOccludedSamplesFraction=1.0)
    ReplacementPrimitive=none
    CastShadow=true
    bAcceptsLights=true
    bUsePrecomputedShadows=true
    CollideActors=true
    BlockActors=true
    BlockZeroExtent=true
    BlockNonZeroExtent=true
}