/*******************************************************************************
 * MorphTargetSet generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MorphTargetSet extends Object
    native(Anim);

var array<MorphTarget> Targets;
var SkeletalMesh BaseSkelMesh;
var native const Array_Mirror RawWedgePointIndices;

// Export UMorphTargetSet::execFindMorphTarget(FFrame&, void* const)
native final function MorphTarget FindMorphTarget(name MorphTargetName);
