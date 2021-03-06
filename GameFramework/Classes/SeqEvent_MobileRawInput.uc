/*******************************************************************************
 * SeqEvent_MobileRawInput generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqEvent_MobileRawInput extends SequenceEvent
    native
    forcescriptorder(true)
    hidecategories(Object);

/** Holds the index in to the multi-touch array that we wish to manage. */
var(Mobile) int TouchIndex;
var(Mobile) int TouchpadIndex;
var float TouchLocationX;
var float TouchLocationY;
var float TimeStamp;

event RegisterEvent()
{
    local WorldInfo WI;
    local GamePlayerController GPC;
    local MobilePlayerInput MPI;

    WI = class'WorldInfo'.static.GetWorldInfo();
    // End:0xD1
    if(WI != none)
    {
        // End:0xD0
        foreach WI.LocalPlayerControllers(class'GamePlayerController', GPC)
        {
            MPI = MobilePlayerInput(GPC.PlayerInput);
            // End:0xCF
            if(MPI != none)
            {
                MPI.AddKismetRawInputEventHandler(self);
                // End:0xD0
                break;
            }            
        }        
    }
    //return;    
}

defaultproperties
{
    OutputLinks(0)=(Links=none,LinkDesc="Touch Begin",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(1)=(Links=none,LinkDesc="Touch Update",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(2)=(Links=none,LinkDesc="Touch End",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(3)=(Links=none,LinkDesc="Touch Cancel",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Float',LinkedVariables=none,LinkDesc="Touch Location X",LinkVar=None,PropertyName=TouchLocationX,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Float',LinkedVariables=none,LinkDesc="Touch Location Y",LinkVar=None,PropertyName=TouchLocationY,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_Float',LinkedVariables=none,LinkDesc="Timestamp",LinkVar=None,PropertyName=TimeStamp,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Mobile Raw Input Access [Old]"
    ObjCategory="Input"
}