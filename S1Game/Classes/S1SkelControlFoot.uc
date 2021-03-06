/*******************************************************************************
 * S1SkelControlFoot generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1SkelControlFoot extends SkelControlBase
    native
    hidecategories(Object,Object);

var(FootHeight) float LimitHeight;
var(FootHeight) Core.Object.EAxis BendAxis;
var(FootHeight) bool bInvertBendAxis;
var(FootHeight) bool bAnimBend;
var(FootUpDir) bool bEnableFootUpDir;
var bool bSameFloor;
var(FootHeight) float OwnerMaxHeight;
var editoronly Vector FootPlacement;
var Vector DamageMotionTranslation;
var Vector FloorLocation;
var Vector FloorNormal;
var float FootHeight;

defaultproperties
{
    LimitHeight=10.0
    BendAxis=EAxis.AXIS_Y
    bInvertBendAxis=true
    bEnableFootUpDir=true
}