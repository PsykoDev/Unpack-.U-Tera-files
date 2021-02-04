/*******************************************************************************
 * SceneCapture2DHitMaskComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SceneCapture2DHitMaskComponent extends SceneCaptureComponent
    native
    hidecategories(Object);

var const transient TextureRenderTarget2D TextureTarget;
var const export editinline transient SkeletalMeshComponent SkeletalMeshComp;
var int MaterialIndex;
var int ForceLOD;
var int HitMaskCullDistance;
var float FadingStartTimeSinceHit;
var float FadingPercentage;
var float FadingDurationTime;
var float FadingIntervalTime;

// Export USceneCapture2DHitMaskComponent::execSetCaptureTargetTexture(FFrame&, void* const)
native final function SetCaptureTargetTexture(const TextureRenderTarget2D InTextureTarget);

// Export USceneCapture2DHitMaskComponent::execSetCaptureParameters(FFrame&, void* const)
native final function SetCaptureParameters(const Vector InMaskPosition, const float InMaskRadius, const Vector InStartupPosition, const bool bOnlyWhenFacing);

// Export USceneCapture2DHitMaskComponent::execSetFadingStartTimeSinceHit(FFrame&, void* const)
native final function SetFadingStartTimeSinceHit(const float InFadingStartTimeSinceHit);

defaultproperties
{
    ForceLOD=-1
    HitMaskCullDistance=100
    FadingStartTimeSinceHit=10.0
    FadingPercentage=0.990
    FadingDurationTime=50.0
    FadingIntervalTime=3.0
}