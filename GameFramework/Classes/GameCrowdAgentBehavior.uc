/*******************************************************************************
 * GameCrowdAgentBehavior generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GameCrowdAgentBehavior extends Object
    abstract
    native;

enum ECrowdBehaviorEvent
{
    CBE_None,
    CBE_Spawn,
    CBE_Random,
    CBE_SeePlayer,
    CBE_EncounterAgent,
    CBE_TakeDamage,
    CBE_GroupWaiting,
    CBE_Uneasy,
    CBE_Alert,
    CBE_Panic,
    CBE_MAX
};

var GameCrowdAgentBehavior.ECrowdBehaviorEvent MyEventType;
var() GameCrowdAgentBehavior.ECrowdBehaviorEvent ViralBehaviorEvent;
/** If non-zero, how long before behavior auto terminates */
var() float DurationOfBehavior;
var float TimeUntilStopBehavior;
/** If true, agent should idle (not move between destinations)/ */
var() bool bIdleBehavior;
/** If true, must face action target before starting behavior */
var() bool bFaceActionTargetFirst;
/** If true, pass on to agents encountered */
var() bool bIsViralBehavior;
/**  
 *So for some behaviors we only want the original agents to be able to pass on the bViralBehavior flag.
 * You will want to check for this flag in your specific behavior's event PropagateViralBehaviorTo.  
 * 
 * NOTE: Currently, there is no default implementation of that that we are are all calling super. to utilize that functionality
 */
var() bool bPassOnIsViralBehaviorFlag;
var Actor ActionTarget;
/** Agent must be within this distance of the player to perform this behavior */
var() float MaxPlayerDistance;
var() float ViralRadius;
var() float DurationBeforeBecomesViral;
var transient float TimeToBecomeViral;
/**  
 *How long we should propagate the viral behavior.  Basically, you can get into situations where the the behavior will never go away as it
 * keeps getting propagated to others over and over and the various timers get started again.
 */
var() float DurationOfViralBehaviorPropagation;
var transient float TimeToStopPropagatingViralBehavior;
var GameCrowdAgent MyAgent;
var(Debug) Color DebugBehaviorColor;

// Export UGameCrowdAgentBehavior::execTriggerCrowdBehavior(FFrame&, void* const)
native static function GameCrowdBehaviorPoint TriggerCrowdBehavior(GameCrowdAgentBehavior.ECrowdBehaviorEvent EventType, Actor Instigator, Vector AtLocation, float InRange, float InDuration, optional Actor BaseActor, optional bool bRequireLOS);

// Export UGameCrowdAgentBehavior::execShouldEndIdle(FFrame&, void* const)
native function bool ShouldEndIdle();

// Export UGameCrowdAgentBehavior::execTick(FFrame&, void* const)
native event Tick(float DeltaTime);

function bool CanBeUsedBy(GameCrowdAgent Agent, Vector CameraLoc)
{
    // End:0x6D
    if((Agent.CurrentBehavior != none) && Agent.CurrentBehavior.MyEventType == MyEventType)
    {
        return false;
    }
    return VSizeSq(CameraLoc - Agent.Location) < (MaxPlayerDistance * MaxPlayerDistance);
    //return ReturnValue;    
}

event FinishedTargetRotation()
{
    //return;    
}

// Export UGameCrowdAgentBehavior::execHandleMovement(FFrame&, void* const)
native function bool HandleMovement();

function InitBehavior(GameCrowdAgent Agent)
{
    MyAgent = Agent;
    // End:0x6E
    if(DurationBeforeBecomesViral > 0.0)
    {
        TimeToBecomeViral = MyAgent.WorldInfo.TimeSeconds + DurationBeforeBecomesViral;
    }
    // End:0xC9
    if(DurationOfViralBehaviorPropagation > 0.0)
    {
        TimeToStopPropagatingViralBehavior = MyAgent.WorldInfo.TimeSeconds + DurationOfViralBehaviorPropagation;
    }
    // End:0xEF
    if(DurationOfBehavior > 0.0)
    {
        TimeUntilStopBehavior = DurationOfBehavior;
    }
    //return;    
}

function StopBehavior()
{
    //return;    
}

event OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
{
    //return;    
}

function string GetBehaviorString()
{
    return "Behavior: " $ string(self);
    //return ReturnValue;    
}

function ChangingDestination(GameCrowdDestination NewDest)
{
    //return;    
}

function Actor GetDestinationActor()
{
    return MyAgent.CurrentDestination;
    //return ReturnValue;    
}

function ActivatedBy(Actor NewActionTarget)
{
    ActionTarget = NewActionTarget;
    //return;    
}

function Actor GetBehaviorInstigator()
{
    return ActionTarget;
    //return ReturnValue;    
}

event PropagateViralBehaviorTo(GameCrowdAgent OtherAgent)
{
    // End:0x51
    if(ViralBehaviorEvent != 0)
    {
        OtherAgent.HandleBehaviorEvent(ViralBehaviorEvent, GetBehaviorInstigator(), true, bPassOnIsViralBehaviorFlag);
    }
    //return;    
}

function bool AllowThisDestination(GameCrowdDestination Destination)
{
    return true;
    //return ReturnValue;    
}

function bool AllowBehaviorAt(GameCrowdDestination Destination)
{
    return true;
    //return ReturnValue;    
}

defaultproperties
{
    bPassOnIsViralBehaviorFlag=true
    MaxPlayerDistance=10000.0
    ViralRadius=512.0
}