/*******************************************************************************
 * ReverbVolumeToggleable generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ReverbVolumeToggleable extends ReverbVolume
    placeable
    dontsortcategories(ReverbVolume)
    hidecategories(Navigation,Object,Movement,Display,Advanced,Attachment,Collision,Volume);

simulated function OnToggle(SeqAct_Toggle Action)
{
    // End:0x46
    if(Action.InputLinks[0].bHasImpulse)
    {
        bEnabled = true;
    }
    // End:0xDB
    else
    {
        // End:0x8C
        if(Action.InputLinks[1].bHasImpulse)
        {
            bEnabled = false;
        }
        // End:0xDB
        else
        {
            // End:0xDB
            if(Action.InputLinks[2].bHasImpulse)
            {
                bEnabled = !bEnabled;
            }
        }
    }
    ForceNetRelevant();
    SetForcedInitialReplicatedProperty(boolproperty'bEnabled', bEnabled == default.bEnabled);
    //return;    
}

defaultproperties
{
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__ReverbVolumeToggleable.BrushComponent0'
    BrushComponent=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__ReverbVolumeToggleable.BrushComponent0'
    Components(0)=BrushComponent0
    bStatic=false
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__ReverbVolumeToggleable.BrushComponent0'
    CollisionComponent=BrushComponent0
}