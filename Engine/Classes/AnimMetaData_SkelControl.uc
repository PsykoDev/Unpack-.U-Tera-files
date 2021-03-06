/*******************************************************************************
 * AnimMetaData_SkelControl generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimMetaData_SkelControl extends AnimMetaData
    native(Anim)
    editinlinenew
    collapsecategories
    hidecategories(Object);

/** List of Bone Controllers Names to control. */
var() array<name> SkelControlNameList;
/**  
 *If TRUE, then it requires bControlledByAnimMetadata to be set as well on the BoneController.
 * It will then affect AnimMetadataWeight instead of ControlStrength.
 * And BoneController will only be turned on if there is such metadata present in the animation.
 * FALSE will set directly the BoneController's ControlStrength when that metadata is present.
 */
var() bool bFullControlOverController;
var deprecated name SkelControlName;

defaultproperties
{
    bFullControlOverController=true
}