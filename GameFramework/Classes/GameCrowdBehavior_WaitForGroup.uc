/*******************************************************************************
 * GameCrowdBehavior_WaitForGroup generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GameCrowdBehavior_WaitForGroup extends GameCrowdAgentBehavior
    native;

function InitBehavior(GameCrowdAgent Agent)
{
    super.InitBehavior(Agent);
    Agent.PlayIdleAnimation();
    //return;    
}

function string GetBehaviorString()
{
    local string BehaviorString;

    BehaviorString = "Behavior: " $ string(self);
    // End:0x5E
    if(bFaceActionTargetFirst)
    {
        BehaviorString = (BehaviorString @ "Turning toward ") $ string(ActionTarget);
    }
    // End:0x86
    else
    {
        BehaviorString = BehaviorString @ "Waiting For Group";
    }
    return BehaviorString;
    //return ReturnValue;    
}

// Export UGameCrowdBehavior_WaitForGroup::execShouldEndIdle(FFrame&, void* const)
native function bool ShouldEndIdle();

function StopBehavior()
{
    super.StopBehavior();
    MyAgent.StopIdleAnimation();
    //return;    
}

defaultproperties
{
    bIdleBehavior=true
    bFaceActionTargetFirst=true
}