/*******************************************************************************
 * TriggerStreamingLevel generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class TriggerStreamingLevel extends Trigger
    placeable
    hidecategories(Navigation);

struct LevelStreamingData
{
    /** Whether the level should be loaded */
    var() bool bShouldBeLoaded;
    /** Whether the level should be visible if it is loaded */
    var() bool bShouldBeVisible;
    /** Whether we want to force a blocking load */
    var() bool bShouldBlockOnLoad;
    /** The level that will be streamed in */
    var() LevelStreaming Level;

    structdefaultproperties
    {
        bShouldBeLoaded=false
        bShouldBeVisible=false
        bShouldBlockOnLoad=false
        Level=none
    }
};

/** Holds the list of levels to load/unload when triggered */
var() editinline array<editinline LevelStreamingData> Levels;

event Touch(Actor Other, PrimitiveComponent OtherComp, Vector HitLocation, Vector HitNormal)
{
    local PlayerController PlayerCon;
    local int Index;

    super.Touch(Other, OtherComp, HitLocation, HitNormal);
    Index = 0;
    J0x39:
    // End:0x1B3 [Loop If]
    if(Index < Levels.Length)
    {
        // End:0x1A4
        foreach WorldInfo.AllControllers(class'PlayerController', PlayerCon)
        {
            Levels[Index].Level.bShouldBlockOnLoad = Levels[Index].bShouldBlockOnLoad;
            PlayerCon.LevelStreamingStatusChanged(Levels[Index].Level, Levels[Index].bShouldBeLoaded, Levels[Index].bShouldBeVisible, Levels[Index].bShouldBlockOnLoad);            
        }        
        ++ Index;
        // [Loop Continue]
        goto J0x39;
    }
    //return;    
}

defaultproperties
{
    begin object name=CollisionCylinder class=CylinderComponent
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__TriggerStreamingLevel.CollisionCylinder'
    CylinderComponent=CollisionCylinder
    begin object name=Sprite class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__TriggerStreamingLevel.Sprite'
    Components(0)=Sprite
    begin object name=CollisionCylinder class=CylinderComponent
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__TriggerStreamingLevel.CollisionCylinder'
    Components(1)=CollisionCylinder
    begin object name=CollisionCylinder class=CylinderComponent
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__TriggerStreamingLevel.CollisionCylinder'
    CollisionComponent=CollisionCylinder
}