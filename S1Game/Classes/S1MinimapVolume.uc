/*******************************************************************************
 * S1MinimapVolume generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1MinimapVolume extends Volume
    native
    hidecategories(Navigation,Object,Movement,Display,Advanced,Attachment,Collision,Volume);

var() float Priority;
var() Texture Texture;

defaultproperties
{
    Priority=10.0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        CollideActors=false
        BlockNonZeroExtent=false
    object end
    // Reference: BrushComponent'Default__S1MinimapVolume.BrushComponent0'
    BrushComponent=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        CollideActors=false
        BlockNonZeroExtent=false
    object end
    // Reference: BrushComponent'Default__S1MinimapVolume.BrushComponent0'
    Components(0)=BrushComponent0
    bCollideActors=false
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        CollideActors=false
        BlockNonZeroExtent=false
    object end
    // Reference: BrushComponent'Default__S1MinimapVolume.BrushComponent0'
    CollisionComponent=BrushComponent0
}