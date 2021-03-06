/*******************************************************************************
 * GameCrowdBehavior_RunFromPanic generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GameCrowdBehavior_RunFromPanic extends GameCrowdAgentBehavior
    native;

var transient Actor PanicFocus;

function ActivatedBy(Actor NewActionTarget)
{
    local GameCrowdDestination TempDest, PrevDest;

    PanicFocus = NewActionTarget;
    PrevDest = MyAgent.PreviousDestination;
    // End:0x91
    if((MyAgent.CurrentDestination != none) && AllowThisDestination(MyAgent.CurrentDestination))
    {
        return;
    }
    // End:0x1B7
    else
    {
        // End:0x1B7
        if((PrevDest != none) && PrevDest.AllowableDestinationFor(MyAgent))
        {
            TempDest = MyAgent.CurrentDestination;
            MyAgent.CurrentDestination.DecrementCustomerCount(MyAgent);
            MyAgent.SetCurrentDestination(MyAgent.PreviousDestination);
            MyAgent.PreviousDestination = TempDest;
            MyAgent.UpdateIntermediatePoint();
        }
    }
    //return;    
}

function InitBehavior(GameCrowdAgent Agent)
{
    super.InitBehavior(Agent);
    MyAgent.bIsPanicked = true;
    MyAgent.SetMaxSpeed();
    //return;    
}

function StopBehavior()
{
    super.StopBehavior();
    MyAgent.bIsPanicked = false;
    MyAgent.SetMaxSpeed();
    //return;    
}

function Actor GetBehaviorInstigator()
{
    return PanicFocus;
    //return ReturnValue;    
}

function bool AllowThisDestination(GameCrowdDestination Destination)
{
    return (!Destination.bAvoidWhenPanicked && !Destination.AtCapacity()) && (Destination.bFleeDestination || PanicFocus == none) || ((Destination.Location - MyAgent.Location) Dot (MyAgent.Location - PanicFocus.Location)) > 0.0;
    //return ReturnValue;    
}

function bool AllowBehaviorAt(GameCrowdDestination Destination)
{
    return !Destination.bSkipBehaviorIfPanicked && !Destination.bAvoidWhenPanicked;
    //return ReturnValue;    
}

function string GetBehaviorString()
{
    return "Run from PANIC " @ string(PanicFocus);
    //return ReturnValue;    
}

defaultproperties
{
    MyEventType=ECrowdBehaviorEvent.CBE_Panic
    ViralBehaviorEvent=ECrowdBehaviorEvent.CBE_Alert
    bIsViralBehavior=true
    MaxPlayerDistance=20000.0
    DebugBehaviorColor=(R=255,G=0,B=0,A=0)
}