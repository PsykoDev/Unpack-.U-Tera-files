/*******************************************************************************
 * InterpTrackInstHeadTracking generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class InterpTrackInstHeadTracking extends InterpTrackInst
    native(Interpolation);

var() InterpTrackHeadTracking.EHeadTrackingAction Action;
var native const transient map<0, 0> CurrentActorMap;
var export editinline transient SkeletalMeshComponent Mesh;
var transient array<SkelControlLookAt> TrackControls;
var float LastUpdatePosition;
