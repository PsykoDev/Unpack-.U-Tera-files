/*******************************************************************************
 * SeqAct_SetMotionBlurParams generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_SetMotionBlurParams extends SeqAct_Latent
    native(Sequence)
    hidecategories(Object);

/** This is a scalar on the blur */
var() float MotionBlurAmount;
/** Time to interpolate values over */
var() float InterpolateSeconds;
var float InterpolateElapsed;
var float OldMotionBlurAmount;

defaultproperties
{
    MotionBlurAmount=0.10
    InterpolateSeconds=2.0
    InputLinks(0)=(LinkDesc="Enable",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    InputLinks(1)=(LinkDesc="Disable",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Motion Blur"
    ObjCategory="Camera"
}