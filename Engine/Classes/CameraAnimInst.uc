/*******************************************************************************
 * CameraAnimInst generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class CameraAnimInst extends Object
    native(Camera);

var CameraAnim CamAnim;
var protected export editinline InterpGroupInst InterpGroupInst;
var protected transient float CurTime;
var protected transient bool bLooping;
var transient bool bFinished;
var transient bool bAutoReleaseWhenFinished;
var protected transient bool bBlendingIn;
var protected transient bool bBlendingOut;
var protected float BlendInTime;
var protected float BlendOutTime;
var protected transient float CurBlendInTime;
var protected transient float CurBlendOutTime;
var protected float PlayRate;
var float BasePlayScale;
var float TransientScaleModifier;
var float CurrentBlendWeight;
var protected transient float RemainingTime;
var transient InterpTrackMove MoveTrack;
var transient InterpTrackInstMove MoveInst;
var protected transient AnimNodeSequence SourceAnimNode;
var protectedwrite Camera.ECameraAnimPlaySpace PlaySpace;
var transient Matrix UserPlaySpaceMatrix;
var transient PostProcessSettings LastPPSettings;
var transient float LastPPSettingsAlpha;
var transient Vector LastCameraLoc;

// Export UCameraAnimInst::execPlay(FFrame&, void* const)
native final function Play(CameraAnim Anim, Actor CamActor, float InRate, float InScale, float InBlendInTime, float InBlendOutTime, bool bInLoop, bool bRandomStartTime, optional float Duration);

// Export UCameraAnimInst::execUpdate(FFrame&, void* const)
native final function Update(float NewRate, float NewScale, float NewBlendInTime, float NewBlendOutTime, optional float NewDuration);

// Export UCameraAnimInst::execAdvanceAnim(FFrame&, void* const)
native final function AdvanceAnim(float DeltaTime, bool bJump);

// Export UCameraAnimInst::execStop(FFrame&, void* const)
native final function Stop(optional bool bImmediate);

// Export UCameraAnimInst::execApplyTransientScaling(FFrame&, void* const)
native final function ApplyTransientScaling(float Scalar);

// Export UCameraAnimInst::execSetPlaySpace(FFrame&, void* const)
native final function SetPlaySpace(Camera.ECameraAnimPlaySpace NewSpace, optional Rotator UserPlaySpace);

defaultproperties
{
    InterpGroupInst=InterpGroupInst'Default__CameraAnimInst.InterpGroupInst0'
    bFinished=true
    bAutoReleaseWhenFinished=true
    PlayRate=1.0
    TransientScaleModifier=1.0
    LastPPSettings=(bOverride_EnableBloom=true,bOverride_EnableDOF=true,bOverride_EnableMotionBlur=true,bOverride_EnableSceneEffect=true,bOverride_AllowAmbientOcclusion=true,bOverride_OverrideRimShaderColor=true,bOverride_Bloom_Scale=true,bOverride_Bloom_Threshold=true,bOverride_Bloom_Tint=true,bOverride_Bloom_ScreenBlendThreshold=true,bOverride_Bloom_InterpolationDuration=true,bOverride_DOF_FalloffExponent=true,bOverride_DOF_BlurKernelSize=true,bOverride_DOF_BlurBloomKernelSize=true,bOverride_DOF_MaxNearBlurAmount=true,bOverride_DOF_MinBlurAmount=false,bOverride_DOF_MaxFarBlurAmount=true,bOverride_DOF_FocusType=true,bOverride_DOF_FocusInnerRadius=true,bOverride_DOF_FocusDistance=true,bOverride_DOF_FocusPosition=true,bOverride_DOF_InterpolationDuration=true,bOverride_DOF_BokehTexture=false,bOverride_MotionBlur_MaxVelocity=false,bOverride_MotionBlur_Amount=false,bOverride_MotionBlur_FullMotionBlur=false,bOverride_MotionBlur_CameraRotationThreshold=false,bOverride_MotionBlur_CameraTranslationThreshold=false,bOverride_MotionBlur_InterpolationDuration=false,bOverride_Scene_Desaturation=true,bOverride_Scene_Colorize=false,bOverride_Scene_TonemapperScale=false,bOverride_Scene_ImageGrainScale=false,bOverride_Scene_HighLights=true,bOverride_Scene_MidTones=true,bOverride_Scene_Shadows=true,bOverride_Scene_InterpolationDuration=true,bOverride_Scene_ColorGradingLUT=false,bOverride_RimShader_Color=true,bOverride_RimShader_InterpolationDuration=true,bOverride_MobileColorGrading=false,bEnableBloom=false,bEnableDOF=false,bEnableMotionBlur=false,bEnableSceneEffect=false,bAllowAmbientOcclusion=true,bOverrideRimShaderColor=false,Bloom_Scale=1.0,Bloom_Threshold=1.0,Bloom_Tint=(R=255,G=255,B=255,A=0),Bloom_ScreenBlendThreshold=10.0,Bloom_InterpolationDuration=1.0,DOF_BlurBloomKernelSize=16.0,DOF_FalloffExponent=4.0,DOF_BlurKernelSize=16.0,DOF_MaxNearBlurAmount=1.0,DOF_MinBlurAmount=0.0,DOF_MaxFarBlurAmount=1.0,DOF_FocusType=EFocusType.FOCUS_Distance,DOF_FocusInnerRadius=2000.0,DOF_FocusDistance=0.0,DOF_FocusPosition=(X=0.0,Y=0.0,Z=0.0),DOF_InterpolationDuration=1.0,DOF_BokehTexture=none,MotionBlur_MaxVelocity=1.0,MotionBlur_Amount=0.50,MotionBlur_FullMotionBlur=true,MotionBlur_CameraRotationThreshold=45.0,MotionBlur_CameraTranslationThreshold=10000.0,MotionBlur_InterpolationDuration=1.0,Scene_Desaturation=0.0,Scene_Colorize=(X=1.0,Y=1.0,Z=1.0),Scene_TonemapperScale=1.0,Scene_ImageGrainScale=0.0,Scene_HighLights=(X=1.0,Y=1.0,Z=1.0),Scene_MidTones=(X=1.0,Y=1.0,Z=1.0),Scene_Shadows=(X=0.0,Y=0.0,Z=0.0),Scene_InterpolationDuration=1.0,RimShader_Color=(R=0.8277260,G=0.5859730,B=0.470440,A=1.0),RimShader_InterpolationDuration=1.0,ColorGrading_LookupTable=none,ColorGradingLUT=(LUTTextures=none,LUTWeights=none),MobileColorGrading=(TransitionTime=1.0,Blend=0.0,Desaturation=0.0,HighLights=(R=0.70,G=0.70,B=0.70,A=1.0),MidTones=(R=0.0,G=0.0,B=0.0,A=1.0),Shadows=(R=0.0,G=0.0,B=0.0,A=1.0)),MobilePostProcess=(bOverride_Mobile_BlurAmount=false,bOverride_Mobile_TransitionTime=false,bOverride_Mobile_Bloom_Scale=false,bOverride_Mobile_Bloom_Threshold=false,bOverride_Mobile_Bloom_Tint=false,bOverride_Mobile_DOF_Distance=false,bOverride_Mobile_DOF_MinRange=false,bOverride_Mobile_DOF_MaxRange=false,bOverride_Mobile_DOF_NearBlurFactor=false,bOverride_Mobile_DOF_FarBlurFactor=false,Mobile_BlurAmount=16.0,Mobile_TransitionTime=1.0,Mobile_Bloom_Scale=6.0,Mobile_Bloom_Threshold=0.50,Mobile_Bloom_Tint=(R=1.0,G=1.0,B=1.0,A=1.0),Mobile_DOF_Distance=1500.0,Mobile_DOF_MinRange=600.0,Mobile_DOF_MaxRange=1200.0,Mobile_DOF_NearBlurFactor=1.0,Mobile_DOF_FarBlurFactor=1.0),TotalWeight_Bloom=0.0,TotalWeight_DOF=0.0,TotalWeight_MotionBlur=0.0,TotalWeight_Scene=0.0)
}