/*******************************************************************************
 * SeqEvent_Input generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqEvent_Input extends SequenceEvent
    native(Sequence)
    hidecategories(Object);

/** Should the input be eaten by the event, or allowed to propagate to gameplay? */
var() bool bTrapInput;
/** -1 for any player, or an index of a specific player to restrict to */
var() int AllowedPlayerIndex;
/** The binding to listen to - this can be something like SpaceBar, XboxTypeS_A, Fire, or GBA_Jump */
var() array<name> InputNames;

defaultproperties
{
    bTrapInput=true
    AllowedPlayerIndex=-1
    ReTriggerDelay=0.010
    OutputLinks(0)=(Links=none,LinkDesc="Pressed",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(1)=(Links=none,LinkDesc="Repeated",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(2)=(Links=none,LinkDesc="Released",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    VariableLinks(0)=(ExpectedType=class'SeqVar_Object',LinkedVariables=none,LinkDesc="Instigator",LinkVar=None,PropertyName=None,bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(1)=(ExpectedType=class'SeqVar_String',LinkedVariables=none,LinkDesc="Input Name",LinkVar=None,PropertyName=None,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Key/Button Pressed"
    ObjCategory="Input"
}