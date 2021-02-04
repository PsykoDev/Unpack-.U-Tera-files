/*******************************************************************************
 * PotentialClimbWatcher generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PotentialClimbWatcher extends Info
    native
    notplaceable
    hidecategories(Navigation,Movement,Collision);

simulated event Tick(float DeltaTime)
{
    local Rotator PawnRot;
    local LadderVolume L;
    local bool bFound;

    // End:0x67
    if(((Owner == none) || Owner.bDeleteMe) || !Pawn(Owner).CanGrabLadder())
    {
        Destroy();
        return;
    }
    PawnRot = Owner.Rotation;
    PawnRot.Pitch = 0;
    // End:0x181
    foreach Owner.TouchingActors(class'LadderVolume', L)
    {
        // End:0x180
        if(L.Encompasses(Owner))
        {
            // End:0x174
            if((vector(PawnRot) Dot L.LookDir) > 0.90)
            {
                Pawn(Owner).ClimbLadder(L);
                Destroy();                
                return;
                // End:0x180
                continue;
            }
            bFound = true;
        }        
    }    
    // End:0x194
    if(!bFound)
    {
        Destroy();
    }
    //return;    
}

defaultproperties
{
    begin object name=Sprite class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__PotentialClimbWatcher.Sprite'
    Components(0)=Sprite
}