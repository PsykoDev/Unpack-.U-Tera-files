/*******************************************************************************
 * FaceFXAsset generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class FaceFXAsset extends Object
    native
    hidecategories(Object);

var editoronly const SkeletalMesh DefaultSkelMesh;
var native const Pointer FaceFXActor;
var native const array<byte> RawFaceFXActorBytes;
var native const array<byte> RawFaceFXSessionBytes;
/**  
 *MorphTargetSets used when previewing this FaceFXAsset in FaceFX Studio.
 *  Note that these are only valid in the editor.
 */
var() editoronly array<editoronly MorphTargetSet> PreviewMorphSets;
var transient array<FaceFXAnimSet> MountedFaceFXAnimSets;
var editoronly notforconsole array<editoronly SoundCue> ReferencedSoundCues;
var int NumLoadErrors;

// Export UFaceFXAsset::execMountFaceFXAnimSet(FFrame&, void* const)
native final function MountFaceFXAnimSet(FaceFXAnimSet AnimSet);

// Export UFaceFXAsset::execUnmountFaceFXAnimSet(FFrame&, void* const)
native final function UnmountFaceFXAnimSet(FaceFXAnimSet AnimSet);
