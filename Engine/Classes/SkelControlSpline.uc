/*******************************************************************************
 * SkelControlSpline generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SkelControlSpline extends SkelControlBase
    native(Anim)
    hidecategories(Object,Object);

enum ESplineControlRotMode
{
    SCR_NoChange,
    SCR_AlongSpline,
    SCR_Interpolate,
    SCR_MAX
};

/** Number of bones above the active one in the hierarchy to modify to make into a smooth curve. */
var(Spline) int SplineLength;
/** Axis of the controlled bone (ie the end of the spline) to use as the direction for the curve. */
var(Spline) Core.Object.EAxis SplineBoneAxis;
/** Controls how the rotation of each bone along the length of the spline is modified. */
var(Spline) SkelControlSpline.ESplineControlRotMode BoneRotMode;
/** Invert the direction we get for the start of the spline. */
var(Spline) bool bInvertSplineBoneAxis;
/** Strength of tangent at the controlled bone. */
var(Spline) float EndSplineTension;
/** Strength of tangent at the start of the chain. */
var(Spline) float StartSplineTension;

defaultproperties
{
    SplineLength=2
    SplineBoneAxis=EAxis.AXIS_X
    EndSplineTension=10.0
    StartSplineTension=10.0
}