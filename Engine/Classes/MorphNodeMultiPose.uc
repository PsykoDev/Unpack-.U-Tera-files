/*******************************************************************************
 * MorphNodeMultiPose generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MorphNodeMultiPose extends MorphNodeBase
    native(Anim)
    hidecategories(Object,Object,Object);

var transient array<MorphTarget> Targets;
/**  
 *Name of morph target to use for this pose node. 
 *       Actual MorphTarget is looked up by name in the MorphSets array in the SkeletalMeshComponent.
 */
var() array<name> MorphNames;
/** default weight is 1.f. But it can be scaled for tweaking. */
var() array<float> Weights;

// Export UMorphNodeMultiPose::execAddMorphTarget(FFrame&, void* const)
native final function bool AddMorphTarget(name MorphTargetName, optional float InWeight)
{
    InWeight = 1.0;                
}

// Export UMorphNodeMultiPose::execRemoveMorphTarget(FFrame&, void* const)
native final function RemoveMorphTarget(name MorphTargetName);

// Export UMorphNodeMultiPose::execUpdateMorphTarget(FFrame&, void* const)
native final function bool UpdateMorphTarget(MorphTarget Target, float InWeight);