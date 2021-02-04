/*******************************************************************************
 * Path_AvoidInEscapableNodes generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Path_AvoidInEscapableNodes extends PathConstraint
    native(AI);

var int Radius;
var int Height;
var int MaxFallSpeed;
var int MoveFlags;

// Export UPath_AvoidInEscapableNodes::execCachePawnReacFlags(FFrame&, void* const)
private native final function CachePawnReacFlags(Pawn P);

static function bool DontGetStuck(Pawn P)
{
    local Path_AvoidInEscapableNodes Con;

    // End:0xAB
    if(P != none)
    {
        Con = Path_AvoidInEscapableNodes(P.CreatePathConstraint(default.Class));
        // End:0xAB
        if(Con != none)
        {
            Con.CachePawnReacFlags(P);
            P.AddPathConstraint(Con);
            return true;
        }
    }
    return false;
    //return ReturnValue;    
}

function Recycle()
{
    super.Recycle();
    Radius = 0;
    Height = 0;
    MaxFallSpeed = 0;
    MoveFlags = 0;
    //return;    
}

defaultproperties
{
    CacheIdx=11
}