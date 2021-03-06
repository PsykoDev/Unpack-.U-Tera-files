/*******************************************************************************
 * RB_ForceFieldExcludeVolume generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class RB_ForceFieldExcludeVolume extends Volume
    native(ForceField)
    placeable
    hidecategories(Navigation,Object,Movement,Display);

/**  
 *Used to identify which force fields this excluder applies to, ie if the channel ID matches then the excluder
 *excludes this force field
 */
var() int ForceFieldChannel;
var native const int SceneIndex;

defaultproperties
{
    ForceFieldChannel=1
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        BlockNonZeroExtent=false
        bDisableAllRigidBody=false
    object end
    // Reference: BrushComponent'Default__RB_ForceFieldExcludeVolume.BrushComponent0'
    BrushComponent=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        BlockNonZeroExtent=false
        bDisableAllRigidBody=false
    object end
    // Reference: BrushComponent'Default__RB_ForceFieldExcludeVolume.BrushComponent0'
    Components(0)=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        BlockNonZeroExtent=false
        bDisableAllRigidBody=false
    object end
    // Reference: BrushComponent'Default__RB_ForceFieldExcludeVolume.BrushComponent0'
    CollisionComponent=BrushComponent0
}