/*******************************************************************************
 * SeqAct_AIMoveToActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_AIMoveToActor extends SeqAct_Latent
    native(Sequence)
    hidecategories(Object);

/** Should this move be interruptable? */
var() bool bInterruptable;
/** Should the AI pick the closest destination? */
var() bool bPickClosest;
/** List of destinations to pick from */
var() array<Actor> Destination;
/** Controls the max speed of the AI while moving */
var() float MovementSpeedModifier;
var() Actor LookAt;
var transient int LastDestinationChoice;

static event int GetObjClassVersion()
{
    return super(SequenceObject).GetObjClassVersion() + 2;
    //return ReturnValue;    
}

function Actor PickDestination(Actor Requestor)
{
    local float Dist, bestDist;
    local Actor Dest, BestDest;

    // End:0xCB
    if(bPickClosest)
    {
        // End:0xBD
        foreach Destination(Dest,)
        {
            Dist = VSize(Dest.Location - Requestor.Location);
            // End:0xBC
            if((BestDest == none) || Dist < bestDist)
            {
                BestDest = Dest;
                bestDist = Dist;
            }            
        }        
        return BestDest;
    }
    // End:0x115
    else
    {
        // End:0xFF
        if((LastDestinationChoice < 0) || LastDestinationChoice >= Destination.Length)
        {
            LastDestinationChoice = 0;
        }
        return Destination[++ LastDestinationChoice];
    }
    //return ReturnValue;    
}

defaultproperties
{
    MovementSpeedModifier=1.0
    OutputLinks(0)=(Links=none,LinkDesc="Finished",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(1)=(Links=none,LinkDesc="Aborted",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(2)=(Links=none,LinkDesc="Out",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    VariableLinks(0)=(ExpectedType=class'SeqVar_Object',LinkedVariables=none,LinkDesc="Target",LinkVar=None,PropertyName=Targets,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(1)=(ExpectedType=class'SeqVar_Object',LinkedVariables=none,LinkDesc="Destination",LinkVar=None,PropertyName=Destination,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(2)=(ExpectedType=class'SeqVar_Object',LinkedVariables=none,LinkDesc="Look At",LinkVar=None,PropertyName=LookAt,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Move To Actor"
    ObjCategory="AI"
    ObjRemoveInProject(0)="Gear"
}