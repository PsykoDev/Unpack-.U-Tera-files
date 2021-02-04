/*******************************************************************************
 * AnimSet generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimSet extends Object
    native(Anim)
    hidecategories(Object);

struct native AnimSetMeshLinkup
{
    var array<int> BoneToTrackTable;

    structdefaultproperties
    {
        BoneToTrackTable=none
    }
};

struct native RetargetingInfo
{
    var AnimSetMeshLinkup AnimLinkup;
    var array<int> BoneMatchingTable;
    var array<int> RetargetingTypes;
    var float zDelta;
    var int State;
    var SkeletalMesh baseSkel;

    structdefaultproperties
    {
        AnimLinkup=(BoneToTrackTable=none)
        BoneMatchingTable=none
        RetargetingTypes=none
        zDelta=0.0
        State=0
        baseSkel=none
    }
};

/**  
 *Indicates that only the rotation should be taken from the animation sequence and the translation should come from the SkeletalMesh ref pose. 
 *       Note that the root bone always takes translation from the animation, even if this flag is set.
 *       You can use the UseTranslationBoneNames array to specify other bones that should use translation with this flag set.
 */
var() bool bAnimRotationOnly;
var() bool bUseRetargetingAll;
var array<name> TrackBoneNames;
var array<AnimSequence> Sequences;
var native transient map<0, 0> SequenceCache;
var transient array<AnimSetMeshLinkup> LinkupCache;
var native transient map<0, 0> SkelMesh2LinkupCache;
var transient array<byte> BoneUseAnimTranslation;
var transient array<byte> ForceUseMeshTranslation;
/** Names of bones that should use translation from the animation, if bAnimRotationOnly is set. */
var() array<name> UseTranslationBoneNames;
/** List of bones which are ALWAYS going to use their translation from the mesh and not the animation. */
var() array<name> ForceMeshTranslationBoneNames;
var name PreviewSkelMeshName;
var name BestRatioSkelMeshName;
/** WITH_S1lozephon, Animation Retargeting */
var() SkeletalMesh RetargetingBaseSkel;
var transient array<RetargetingInfo> RetargetingInfoCache;