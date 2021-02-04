/*******************************************************************************
 * SeqAct_ActivateRemoteEvent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_ActivateRemoteEvent extends SequenceAction
    native(Sequence)
    hidecategories(Object);

/** Instigator to use in the event */
var() Actor Instigator;
/** Name of the event to activate */
var() name EventName;
var transient bool bStatusIsOk;

static event int GetObjClassVersion()
{
    return super(SequenceObject).GetObjClassVersion() + 2;
    //return ReturnValue;    
}

defaultproperties
{
    EventName=DefaultEvent
    VariableLinks(0)=(ExpectedType=class'SeqVar_Object',LinkedVariables=none,LinkDesc="Instigator",LinkVar=None,PropertyName=Instigator,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Activate Remote Event"
    ObjCategory="Event"
}