/*******************************************************************************
 * SeqEvent_LOS generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqEvent_LOS extends SequenceEvent
    hidecategories(Object);

/** Distance from the screen center before activating this event */
var() float ScreenCenterDistance;
/** Distance from the trigger before activating this event */
var() float TriggerDistance;
/** Force a clear line of sight to the trigger? */
var() bool bCheckForObstructions;

static event int GetObjClassVersion()
{
    return super(SequenceObject).GetObjClassVersion() + 1;
    //return ReturnValue;    
}

defaultproperties
{
    ScreenCenterDistance=50.0
    TriggerDistance=2048.0
    bCheckForObstructions=true
    OutputLinks(0)=(Links=none,LinkDesc="Look",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(1)=(Links=none,LinkDesc="Stop Look",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    ObjName="Line Of Sight"
    ObjCategory="Pawn"
}