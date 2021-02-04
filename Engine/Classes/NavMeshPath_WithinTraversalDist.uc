/*******************************************************************************
 * NavMeshPath_WithinTraversalDist generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class NavMeshPath_WithinTraversalDist extends NavMeshPathConstraint
    native(AI);

/** Maximum distance to traverse along a branch */
var() float MaxTraversalDist;
/** if this is on instead of throwing out nodes outside traversal distance they will be gradiently penalized the further out they are */
var() bool bSoft;
/** when a path exceeds specified traversal distance this penantly will be applied, and scaled up depending on how far outside the dist it is */
var() float SoftStartPenalty;

static function bool DontExceedMaxDist(NavigationHandle NavHandle, float InMaxTraversalDist, optional bool bInSoft)
{
    local NavMeshPath_WithinTraversalDist Con;

    bInSoft = true;
    // End:0xEF
    if((NavHandle != none) && InMaxTraversalDist > 0.0)
    {
        Con = NavMeshPath_WithinTraversalDist(NavHandle.CreatePathConstraint(default.Class));
        // End:0xEF
        if(Con != none)
        {
            Con.MaxTraversalDist = InMaxTraversalDist;
            Con.bSoft = bInSoft;
            NavHandle.AddPathConstraint(Con);
            return true;
        }
    }
    return false;
    //return ReturnValue;    
}

function Recycle()
{
    super.Recycle();
    MaxTraversalDist = default.MaxTraversalDist;
    bSoft = default.bSoft;
    SoftStartPenalty = default.SoftStartPenalty;
    //return;    
}

defaultproperties
{
    bSoft=true
    SoftStartPenalty=320.0
}