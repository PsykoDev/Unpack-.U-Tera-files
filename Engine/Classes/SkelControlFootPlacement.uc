/*******************************************************************************
 * SkelControlFootPlacement generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SkelControlFootPlacement extends SkelControlLimb
    native(Anim)
    hidecategories(Object,Object,Effector);

/** Vertical offset to apply to foot bone. This is applied along the vector between the hip position and the foot bone position. */
var(FootPlacement) float FootOffset;
/** Axis of the foot bone to align to ground normal (if bOrientFootToGround is true). */
var(FootPlacement) Core.Object.EAxis FootUpAxis;
/** Rotation offset applied to foot matrix before taking the FootUpAxis. */
var(FootPlacement) Rotator FootRotOffset;
/** If we should invert the axis used for aligning the foot to the floor, defined by FootUpAxis. */
var(FootPlacement) bool bInvertFootUpAxis;
/** If we should attempt to align the foot bone with the surface normal of the ground. */
var(FootPlacement) bool bOrientFootToGround;
/** This control should be completely disabled if we are not doing an upwards adjustment on the foot. */
var(FootPlacement) bool bOnlyEnableForUpAdjustment;
/** Maximum distance from animated post that foot will be moved up. */
var(FootPlacement) float MaxUpAdjustment;
/** Maximum distance from animated post that foot will be moved down. */
var(FootPlacement) float MaxDownAdjustment;
/** Maximum angle (in degrees) that we will rotate the foot from the animated orientation in an attempt to match the ground normal. */
var(FootPlacement) float MaxFootOrientAdjust;

defaultproperties
{
    FootUpAxis=EAxis.AXIS_X
    bOrientFootToGround=true
    MaxUpAdjustment=50.0
    MaxFootOrientAdjust=45.0
}