/*******************************************************************************
 * MorphNodeWeightByBoneAngle generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MorphNodeWeightByBoneAngle extends MorphNodeWeightBase
    native(Anim)
    hidecategories(Object,Object,Object);

struct native BoneAngleMorph
{
    /** Structure defining Angle to Morph weight correspondance */
    var() float Angle;
    /** Structure defining Angle to Morph weight correspondance */
    var() float TargetWeight;

    structdefaultproperties
    {
        Angle=0.0
        TargetWeight=1.0
    }
};

var const transient float Angle;
var const transient float NodeWeight;
/** Base Bone Name */
var(BaseBone) name BaseBoneName;
/** Axis to use on Base Bone, X, Y or Z */
var(BaseBone) Core.Object.EAxis BaseBoneAxis;
/** Axis to use on Angle Bone, X, Y or Z */
var(AngleBone) Core.Object.EAxis AngleBoneAxis;
/** Should the Angle bone axis be inverted? */
var(BaseBone) bool bInvertBaseBoneAxis;
/** Should the Angle bone axis be inverted? */
var(AngleBone) bool bInvertAngleBoneAxis;
/** Material Parameter control */
var(Material) bool bControlMaterialParameter;
/** Angle bone name */
var(AngleBone) name AngleBoneName;
var(Material) int MaterialSlotId;
var(Material) name ScalarParameterName;
var transient MaterialInstanceConstant MaterialInstanceConstant;
/** Array of points translating angles into morph weights */
var() array<BoneAngleMorph> WeightArray;

defaultproperties
{
    BaseBoneAxis=EAxis.AXIS_X
    AngleBoneAxis=EAxis.AXIS_X
    WeightArray(0)=(Angle=0.0,TargetWeight=0.0)
    WeightArray(1)=(Angle=180.0,TargetWeight=1.0)
    NodeConns(0)=(ChildNodes=none,ConnName=In,DrawY=0)
}