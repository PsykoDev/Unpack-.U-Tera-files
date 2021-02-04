/*******************************************************************************
 * GameCrowdInfoVolume generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GameCrowdInfoVolume extends Volume
    native
    hidecategories(Navigation,Object,Movement,Display);

/** List of all GameCrowdDestinations that are PotentialSpawnPoints */
var() array<GameCrowdDestination> PotentialSpawnPoints;

simulated function Touch(Actor Other, PrimitiveComponent OtherComp, Vector HitLocation, Vector HitNormal)
{
    local Pawn P;
    local GameCrowdPopulationManager PopMgr;

    super(Actor).Touch(Other, OtherComp, HitLocation, HitNormal);
    P = Pawn(Other);
    // End:0xDE
    if((P != none) && P.IsHumanControlled())
    {
        PopMgr = GameCrowdPopulationManager(WorldInfo.PopulationManager);
        // End:0xDE
        if(PopMgr != none)
        {
            PopMgr.SetCrowdInfoVolume(self);
        }
    }
    //return;    
}

simulated function UnTouch(Actor Other)
{
    local Pawn P;
    local GameCrowdPopulationManager PopMgr;

    super(Actor).UnTouch(Other);
    P = Pawn(Other);
    // End:0xC3
    if((P != none) && P.IsHumanControlled())
    {
        PopMgr = GameCrowdPopulationManager(WorldInfo.PopulationManager);
        // End:0xC3
        if(PopMgr != none)
        {
            PopMgr.SetCrowdInfoVolume(none);
        }
    }
    //return;    
}

defaultproperties
{
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__GameCrowdInfoVolume.BrushComponent0'
    BrushComponent=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__GameCrowdInfoVolume.BrushComponent0'
    Components(0)=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__GameCrowdInfoVolume.BrushComponent0'
    CollisionComponent=BrushComponent0
}