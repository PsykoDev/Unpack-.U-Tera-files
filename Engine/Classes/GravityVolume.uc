/*******************************************************************************
 * GravityVolume generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GravityVolume extends PhysicsVolume
    native
    placeable
    hidecategories(Navigation,Object,Movement,Display);

/** Gravity along Z axis applied to objects inside this volume. */
var() float GravityZ;

defaultproperties
{
    GravityZ=-520.0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__GravityVolume.BrushComponent0'
    BrushComponent=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__GravityVolume.BrushComponent0'
    Components(0)=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__GravityVolume.BrushComponent0'
    CollisionComponent=BrushComponent0
}