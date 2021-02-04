/*******************************************************************************
 * NavMeshGoal_Random generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class NavMeshGoal_Random extends NavMeshPathGoalEvaluator
    native(AI);

var int MinDist;
var float BestRating;
var private native Pointer PartialGoal;

static function bool FindRandom(NavigationHandle NavHandle, optional int InMinDist, optional int InMaxPathVisits)
{
    local NavMeshGoal_Random Eval;

    InMinDist = -1;
    InMaxPathVisits = -1;
    // End:0xE8
    if(NavHandle != none)
    {
        Eval = NavMeshGoal_Random(NavHandle.CreatePathGoalEvaluator(default.Class));
        // End:0x93
        if(InMaxPathVisits > 0)
        {
            Eval.MaxPathVisits = InMaxPathVisits;
        }
        Eval.MinDist = InMinDist;
        NavHandle.AddGoalEvaluator(Eval);
        return true;
    }
    // End:0xEA
    else
    {
        return false;
    }
    //return ReturnValue;    
}

// Export UNavMeshGoal_Random::execRecycleNative(FFrame&, void* const)
native function RecycleNative();

function Recycle()
{
    super.Recycle();
    MaxPathVisits = default.MaxPathVisits;
    BestRating = default.BestRating;
    MinDist = default.MinDist;
    RecycleNative();
    //return;    
}

defaultproperties
{
    MinDist=-1
    BestRating=-1.0
}