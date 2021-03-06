/*******************************************************************************
 * Goal_AtActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Goal_AtActor extends PathGoalEvaluator
    native(AI);

var Actor GoalActor;
var float GoalDist;
var bool bKeepPartial;

static function bool AtActor(Pawn P, Actor Goal, optional float Dist, optional bool bReturnPartial)
{
    local Goal_AtActor Eval;
    local Pawn GoalPawn;
    local Controller GoalController;
    local float AnchorDist;

    // End:0x38F
    if(P != none)
    {
        GoalPawn = Pawn(Goal);
        GoalController = Controller(Goal);
        // End:0xB2
        if(GoalController != none)
        {
            // End:0xA7
            if(GoalController.Pawn != none)
            {
                GoalPawn = GoalController.Pawn;
            }
            // End:0xB2
            else
            {
                Goal = none;
            }
        }
        // End:0x1AE
        if(GoalPawn != none)
        {
            // End:0x150
            if(GoalPawn.ValidAnchor() && GoalPawn.Anchor.IsUsableAnchorFor(P))
            {
                Goal = GoalPawn.Anchor;
            }
            // End:0x1AB
            else
            {
                Goal = P.GetBestAnchor(GoalPawn, GoalPawn.Location, false, false, AnchorDist);
            }
        }
        // End:0x292
        else
        {
            // End:0x292
            if(NavigationPoint(Goal) == none)
            {
                Goal = P.GetBestAnchor(Goal, Goal.Location, false, false, AnchorDist);
                // End:0x292
                if(Goal == none)
                {
                    LogInternal("PATHWARNING: Not pushing AtActor goal constraint because we couldn't find an anchor for goal!");
                }
            }
        }
        // End:0x38F
        if(Goal != none)
        {
            Eval = Goal_AtActor(P.CreatePathGoalEvaluator(default.Class));
            // End:0x38F
            if(Eval != none)
            {
                Eval.GoalActor = Goal;
                Eval.GoalDist = Dist;
                Eval.bKeepPartial = bReturnPartial;
                P.AddGoalEvaluator(Eval);
                return true;
            }
        }
    }
    return false;
    //return ReturnValue;    
}

function Recycle()
{
    GoalActor = none;
    GoalDist = default.GoalDist;
    bKeepPartial = default.bKeepPartial;
    super.Recycle();
    //return;    
}

defaultproperties
{
    MaxPathVisits=1024
    CacheIdx=0
}