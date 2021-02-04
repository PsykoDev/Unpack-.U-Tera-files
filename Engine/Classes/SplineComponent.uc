/*******************************************************************************
 * SplineComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SplineComponent extends PrimitiveComponent
    native(Spline);

/** Actual data for spline. Locations and tangents are in world space. */
var() InterpCurveVector SplineInfo;
/**  
 *This is how curvy this spline is.  1.0f is straight and anything below that is curvy!
 * We are doing a simplistic calculate of:  vsize(points) / Length Of Spline
 */
var() editconst float SplineCurviness;
/** Color of spline */
var() Color SplineColor;
/** Resolution to draw spline at */
var() float SplineDrawRes;
/** Size of arrow on end of spline. If zero, no arrow drawn */
var() float SplineArrowSize;
/** If TRUE, this spline is for whatever reason disabled, and will be drawn in red. */
var() bool bSplineDisabled;
/** Input, distance along curve, output, parameter that puts you there. */
var() InterpCurveFloat SplineReparamTable;

// Export USplineComponent::execUpdateSplineCurviness(FFrame&, void* const)
native function UpdateSplineCurviness();

// Export USplineComponent::execUpdateSplineReparamTable(FFrame&, void* const)
native function UpdateSplineReparamTable();

// Export USplineComponent::execGetSplineLength(FFrame&, void* const)
native function float GetSplineLength();

// Export USplineComponent::execGetLocationAtDistanceAlongSpline(FFrame&, void* const)
native function Vector GetLocationAtDistanceAlongSpline(float Distance);

// Export USplineComponent::execGetTangentAtDistanceAlongSpline(FFrame&, void* const)
native function Vector GetTangentAtDistanceAlongSpline(float Distance);

defaultproperties
{
    SplineColor=(R=255,G=0,B=255,A=255)
    SplineDrawRes=0.10
    SplineArrowSize=60.0
    ReplacementPrimitive=none
}