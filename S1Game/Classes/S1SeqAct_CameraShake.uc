/*******************************************************************************
 * S1SeqAct_CameraShake generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1SeqAct_CameraShake extends SequenceAction
    native
    forcescriptorder(true)
    hidecategories(Object);

var() float Duration;
var() float Power;
var() float Speed;

defaultproperties
{
    Duration=5.0
    Power=1.0
    Speed=1.0
    InputLinks(0)=(LinkDesc="Shake",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    InputLinks(1)=(LinkDesc="StopAll",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="[S1]CameraShake"
    ObjCategory="Camera"
}