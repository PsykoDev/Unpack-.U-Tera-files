/*******************************************************************************
 * SkelControlSingleBone generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SkelControlSingleBone extends SkelControlBase
    native(Anim)
    hidecategories(Object,Object);

/** Whether to modify the translation of this bone. */
var(Adjustments) bool bApplyTranslation;
/** Whether to modify the translation of this bone. */
var(Adjustments) bool bApplyRotation;
/** If false, replaces rotation with BoneRotation. If true, adds to existing rotation. */
var(Translation) bool bAddTranslation;
/** If false, replaces rotation with BoneRotation. If true, adds to existing rotation. */
var(Rotation) bool bAddRotation;
/** If bAddRotation and BCS_WorldSpace, then remove mesh relative rotation */
var(Rotation) bool bRemoveMeshRotation;
/** New translation of bone to apply. */
var(Translation) Vector BoneTranslation;
/** Reference frame to apply BoneTranslation in. */
var(Translation) SkelControlBase.EBoneControlSpace BoneTranslationSpace;
/** Reference frame to apply BoneRotation in. */
var(Rotation) SkelControlBase.EBoneControlSpace BoneRotationSpace;
/** Name of bone used if BoneTranslationSpace is BCS_OtherBoneSpace. */
var(Translation) name TranslationSpaceBoneName;
/** New rotation of bone to apply. */
var(Rotation) Rotator BoneRotation;
/** Name of bone used if BoneRotationSpace is BCS_OtherBoneSpace. */
var(Rotation) name RotationSpaceBoneName;

defaultproperties
{
    CategoryDesc="Single Bone"
}