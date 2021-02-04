/*******************************************************************************
 * AeroInnerVolume generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AeroInnerVolume extends Volume
    native(S1Game)
    placeable
    hidecategories(Navigation,Object,Movement,Display,Volume);

var Vector CenterOfVolume;

defaultproperties
{
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__AeroInnerVolume.BrushComponent0'
    BrushComponent=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__AeroInnerVolume.BrushComponent0'
    Components(0)=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__AeroInnerVolume.BrushComponent0'
    CollisionComponent=BrushComponent0
}