/*******************************************************************************
 * SeqAct_ToggleConstraintDrive generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_ToggleConstraintDrive extends SequenceAction
    hidecategories(Object);

/** If TRUE, when the Enable Drive input is fired, will enable angular position drive on the attached constraint actor */
var() bool bEnableAngularPositionDrive;
/** If TRUE, when the Enable Drive input is fired, will enable angular velocity drive on the attached constraint actor */
var() bool bEnableAngularVelocityDrive;
/** If TRUE, when the Enable Drive input is fired, will enable linear position drive on the attached constraint actor */
var() bool bEnableLinearPositionDrive;
/** If TRUE, when the Enable Drive input is fired, will enable linear velocity drive on the attached constraint actor */
var() bool bEnableLinearvelocityDrive;

defaultproperties
{
    InputLinks(0)=(LinkDesc="Enable Drive",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    InputLinks(1)=(LinkDesc="Disable All Drive",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Toggle Constraint Drive"
    ObjCategory="Physics"
}