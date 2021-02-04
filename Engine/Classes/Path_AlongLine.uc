/*******************************************************************************
 * Path_AlongLine generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Path_AlongLine extends PathConstraint
    native(AI);

var Vector Direction;

static function bool AlongLine(Pawn P, Vector Dir)
{
    local Path_AlongLine Con;

    // End:0xBE
    if((P != none) && !IsZero(Dir))
    {
        Con = Path_AlongLine(P.CreatePathConstraint(default.Class));
        // End:0xBE
        if(Con != none)
        {
            Con.Direction = Dir;
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
    Direction = vect(0.0, 0.0, 0.0);
    //return;    
}

defaultproperties
{
    CacheIdx=0
}