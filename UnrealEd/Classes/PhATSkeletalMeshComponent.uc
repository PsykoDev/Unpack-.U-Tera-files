/*******************************************************************************
 * PhATSkeletalMeshComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PhATSkeletalMeshComponent extends SkeletalMeshComponent
    native
    editinlinenew
    hidecategories(Object);

var native const transient Pointer PhATPtr;
var native const transient array<BoneAtom> AnimationSpaceBases;

defaultproperties
{
    begin object name=AnimNodeSeq0 class=AnimNodeSequence
        bLooping=true
    object end
    // Reference: AnimNodeSequence'Default__PhATSkeletalMeshComponent.AnimNodeSeq0'
    Animations=AnimNodeSeq0
    PhysicsWeight=1.0
    ForcedLodModel=1
    bUpdateJointsFromAnimation=true
    ReplacementPrimitive=none
    RBCollideWithChannels=(Default=true)
}