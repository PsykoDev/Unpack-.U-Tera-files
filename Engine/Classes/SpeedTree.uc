/*******************************************************************************
 * SpeedTree generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SpeedTree extends Object
    native(SpeedTree);

var private const bool bLegacySpeedTree;
var duplicatetransient native const Pointer SRH;
/** Random seed for tree creation. */
var() int RandomSeed;
/** Sink the tree partially underground. */
var() float Sink;
/** The probability of a shadow ray being blocked by the leaf material. */
var(Lighting) float LeafStaticShadowOpacity;
/** Branch material. */
var(Material) MaterialInterface BranchMaterial;
/** Leaf material. */
var(Material) MaterialInterface LeafMaterial;
/** Branch 1 material. */
var(Material) MaterialInterface Branch1Material;
/** Branch 2 material. */
var(Material) MaterialInterface Branch2Material;
/** Frond material. */
var(Material) MaterialInterface FrondMaterial;
/** Leaf card material. */
var(Material) MaterialInterface LeafCardMaterial;
/** Leaf mesh material. */
var(Material) MaterialInterface LeafMeshMaterial;
/** Billboard material. */
var(Material) MaterialInterface BillboardMaterial;
/** #if WITH_S1 && WITH_SPEEDTREE_V4  hsh6679 - speed tree v4 integration SpeedWind variables (explained in the SpeedTreeCAD documentation) */
var(Wind) float MaxBendAngle;
var(Wind) float BranchExponent;
var(Wind) float LeafExponent;
var(Wind) float Response;
var(Wind) float ResponseLimiter;
var(Wind) float Gusting_MinStrength;
var(Wind) float Gusting_MaxStrength;
var(Wind) float Gusting_Frequency;
var(Wind) float Gusting_MinDuration;
var(Wind) float Gusting_MaxDuration;
var(Wind) float BranchHorizontal_LowWindAngle;
var(Wind) float BranchHorizontal_LowWindSpeed;
var(Wind) float BranchHorizontal_HighWindAngle;
var(Wind) float BranchHorizontal_HighWindSpeed;
var(Wind) float BranchVertical_LowWindAngle;
var(Wind) float BranchVertical_LowWindSpeed;
var(Wind) float BranchVertical_HighWindAngle;
var(Wind) float BranchVertical_HighWindSpeed;
var(Wind) float LeafRocking_LowWindAngle;
var(Wind) float LeafRocking_LowWindSpeed;
var(Wind) float LeafRocking_HighWindAngle;
var(Wind) float LeafRocking_HighWindSpeed;
var(Wind) float LeafRustling_LowWindAngle;
var(Wind) float LeafRustling_LowWindSpeed;
var(Wind) float LeafRustling_HighWindAngle;
var(Wind) float LeafRustling_HighWindSpeed;
/** #endif Wind variables */
var(Wind) float WindStrength;
var(Wind) Vector WindDirection;
var private editoronly const Guid LightingGuid;

defaultproperties
{
    RandomSeed=1
    LeafStaticShadowOpacity=0.50
    MaxBendAngle=35.0
    BranchExponent=1.0
    LeafExponent=1.0
    Response=0.10
    ResponseLimiter=0.010
    Gusting_MinStrength=0.250
    Gusting_MaxStrength=1.250
    Gusting_Frequency=0.40
    Gusting_MinDuration=2.0
    Gusting_MaxDuration=15.0
    BranchHorizontal_LowWindAngle=3.0
    BranchHorizontal_LowWindSpeed=1.50
    BranchHorizontal_HighWindAngle=3.0
    BranchHorizontal_HighWindSpeed=1.50
    BranchVertical_LowWindAngle=4.0
    BranchVertical_LowWindSpeed=2.0
    BranchVertical_HighWindAngle=4.0
    BranchVertical_HighWindSpeed=2.0
    LeafRocking_LowWindAngle=5.0
    LeafRocking_LowWindSpeed=1.0
    LeafRocking_HighWindAngle=5.0
    LeafRocking_HighWindSpeed=3.0
    LeafRustling_LowWindAngle=7.0
    LeafRustling_LowWindSpeed=0.10
    LeafRustling_HighWindAngle=5.0
    LeafRustling_HighWindSpeed=15.0
    WindStrength=0.20
    WindDirection=(X=1.0,Y=0.0,Z=0.0)
}