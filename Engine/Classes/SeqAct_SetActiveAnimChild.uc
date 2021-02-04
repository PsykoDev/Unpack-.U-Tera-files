/*******************************************************************************
 * SeqAct_SetActiveAnimChild generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_SetActiveAnimChild extends SequenceAction
    native(Sequence)
    hidecategories(Object);

/** Node name in the AnimTree - the node should always be active */
var() name NodeName;
/** start with 1-N */
var() int ChildIndex;
/** float blend time */
var() float BlendTime;

defaultproperties
{
    BlendTime=0.250
    InputLinks(0)=(LinkDesc="Activate",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Set Active Anim Child"
    ObjCategory="Anim"
}