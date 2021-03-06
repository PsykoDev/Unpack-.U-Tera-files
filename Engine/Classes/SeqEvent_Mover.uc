/*******************************************************************************
 * SeqEvent_Mover generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqEvent_Mover extends SequenceEvent
    native(Sequence)
    hidecategories(Object,SequenceEvent);

/**  
 *how long the mover should stay open before automatically closing (reverse playback)
 * values <= 0.0 turn off this auto behavior and allow manual control (via the "Completed" and "Reversed" output links for the attached matinee action)
 */
var() float StayOpenTime;

event RegisterEvent()
{
    local InterpActor Mover;

    Mover = InterpActor(Originator);
    // End:0x53
    if(Mover != none)
    {
        Mover.StayOpenTime = StayOpenTime;
    }
    //return;    
}

function NotifyEncroachingOn(Actor Hit)
{
    local SeqVar_Object ObjVar;
    local array<int> ActivateIndices;

    ActivateIndices[0] = 3;
    // End:0x8C
    if(CheckActivate(Originator, Instigator, false, ActivateIndices, true))
    {
        // End:0x8B
        foreach LinkedVariables(class'SeqVar_Object', ObjVar, "Actor Hit")
        {
            ObjVar.SetObjectValue(Hit);            
        }        
    }
    //return;    
}

function NotifyAttached(Actor Other)
{
    local array<int> ActivateIndices;

    // End:0x72
    if((Pawn(Other) != none) && IsZero(Originator.Velocity))
    {
        ActivateIndices[0] = 0;
        CheckActivate(Originator, Other, false, ActivateIndices);
    }
    //return;    
}

function NotifyDetached(Actor Other)
{
    local Pawn P;
    local array<int> ActivateIndices;

    // End:0x2E
    if(Originator == none)
    {
        WarnInternal("Originator mover missing");
    }
    // End:0xAC
    else
    {
        // End:0xAC
        if(Pawn(Other) != none)
        {
            // End:0x77
            foreach Originator.BasedActors(class'Pawn', P)
            {                
                return;                
            }            
            ActivateIndices[0] = 1;
            CheckActivate(Originator, Instigator, false, ActivateIndices);
        }
    }
    //return;    
}

function NotifyFinishedOpen()
{
    local array<int> ActivateIndices;

    ActivateIndices[0] = 2;
    CheckActivate(Originator, Instigator, false, ActivateIndices);
    //return;    
}

defaultproperties
{
    StayOpenTime=1.50
    bPlayerOnly=false
    OutputLinks(0)=(Links=none,LinkDesc="Pawn Attached",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(1)=(Links=none,LinkDesc="Pawn Detached",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(2)=(Links=none,LinkDesc="Open Finished",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(3)=(Links=none,LinkDesc="Hit Actor",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    VariableLinks(0)=(ExpectedType=class'SeqVar_Object',LinkedVariables=none,LinkDesc="Instigator",LinkVar=None,PropertyName=None,bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(1)=(ExpectedType=class'SeqVar_Object',LinkedVariables=none,LinkDesc="Actor Hit",LinkVar=None,PropertyName=None,bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Mover"
    ObjCategory="Physics"
}