/*******************************************************************************
 * InstancedFoliageSettings generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class InstancedFoliageSettings extends Object
    native(Foliage)
    editinlinenew
    hidecategories(Object);

enum FoliageCullOption
{
    FOLIAGECULL_Cull,
    FOLIAGECULL_ScaleZ,
    FOLIAGECULL_ScaleXYZ,
    FOLIAGECULL_TranslateZ,
    FOLIAGECULL_MAX
};

var(Painting) float Density;
var(Painting) float Radius;
var(Painting) float ScaleMinX;
var(Painting) float ScaleMinY;
var(Painting) float ScaleMinZ;
var(Painting) float ScaleMaxX;
var(Painting) float ScaleMaxY;
var(Painting) float ScaleMaxZ;
var(Painting) bool LockScaleX;
var(Painting) bool LockScaleY;
var(Painting) bool LockScaleZ;
var(Painting) bool AlignToNormal;
var(Painting) bool RandomYaw;
var(Painting) bool UniformScale;
var bool ReapplyDensity;
var bool ReapplyRadius;
var bool ReapplyAlignToNormal;
var bool ReapplyRandomYaw;
var bool ReapplyScaleX;
var bool ReapplyScaleY;
var bool ReapplyScaleZ;
var bool ReapplyRandomPitchAngle;
var bool ReapplyGroundSlope;
var bool ReapplyHeight;
var bool ReapplyLandscapeLayer;
var bool ReapplyZOffset;
var(Lighting) bool CastShadow;
var(Lighting) bool bCastDynamicShadow;
var(Lighting) bool bCastStaticShadow;
var(Lighting) bool bSelfShadowOnly;
var(Lighting) bool bNoModSelfShadow;
var(Lighting) bool bAcceptsDynamicDominantLightShadows;
var(Lighting) bool bCastHiddenShadow;
var(Lighting) bool bCastShadowAsTwoSided;
var(Lighting) const bool bAcceptsLights;
var(Lighting) const bool bAcceptsDynamicLights;
var(Lighting) const bool bUseOnePassLightingOnTranslucency;
var(Lighting) const bool bUsePrecomputedShadows;
var(Collision) bool bCollideActors;
var(Collision) bool bBlockActors;
var(Collision) bool bBlockNonZeroExtent;
var(Collision) bool bBlockZeroExtent;
var bool IsSelected;
var bool ShowNothing;
var bool ShowPaintSettings;
var bool ShowInstanceSettings;
var(Painting) float AlignMaxAngle;
var(Painting) float RandomPitchAngle;
var(Painting) float GroundSlope;
var(Painting) float HeightMin;
var(Painting) float HeightMax;
var(Painting) name LandscapeLayer;
var(Painting) float ZOffsetMin;
var(Painting) float ZOffsetMax;
var(Clustering) int MaxInstancesPerCluster;
var(Clustering) float MaxClusterRadius;
var float ReapplyDensityAmount;
var(Culling) int StartCullDistance;
var(Culling) int EndCullDistance;
var(Culling) InstancedFoliageSettings.FoliageCullOption CullOption;
var(Culling) Scene.EDetailMode DetailMode;
var int DisplayOrder;

defaultproperties
{
    Density=100.0
    ScaleMinX=1.0
    ScaleMinY=1.0
    ScaleMinZ=1.0
    ScaleMaxX=1.0
    ScaleMaxY=1.0
    ScaleMaxZ=1.0
    AlignToNormal=true
    RandomYaw=true
    UniformScale=true
    CastShadow=true
    bCastDynamicShadow=true
    bCastStaticShadow=true
    bAcceptsDynamicDominantLightShadows=true
    bAcceptsLights=true
    bAcceptsDynamicLights=true
    bUsePrecomputedShadows=true
    ShowPaintSettings=true
    GroundSlope=45.0
    HeightMin=-262144.0
    HeightMax=262144.0
    MaxInstancesPerCluster=100
    MaxClusterRadius=10000.0
    ReapplyDensityAmount=1.0
}