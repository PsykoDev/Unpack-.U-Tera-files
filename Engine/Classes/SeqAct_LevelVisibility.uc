/*******************************************************************************
 * SeqAct_LevelVisibility generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_LevelVisibility extends SeqAct_Latent
    native(Sequence)
    hidecategories(Object);

/** LevelStreaming object that is going to be associated/ dissociated on request */
var() LevelStreaming Level;
/** LevelStreaming object name */
var() name LevelName<autocomment=true>;
var transient bool bStatusIsOk;

defaultproperties
{
    InputLinks(0)=(LinkDesc="Make Visible",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    InputLinks(1)=(LinkDesc="Hide",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    OutputLinks(0)=(Links=none,LinkDesc="Finished",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    VariableLinks=none
    ObjName="Change Level Visibility"
    ObjCategory="Level"
}