/*******************************************************************************
 * PathNode_Dynamic generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PathNode_Dynamic extends PathNode
    placeable
    hidecategories(Navigation,Lighting,LightColor,Force);

simulated event string GetDebugAbbrev()
{
    return "DynPN";
    //return ReturnValue;    
}

defaultproperties
{
    begin object name=CollisionCylinder class=CylinderComponent
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__PathNode_Dynamic.CollisionCylinder'
    CylinderComponent=CollisionCylinder
    begin object name=Sprite class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__PathNode_Dynamic.Sprite'
    GoodSprite=Sprite
    begin object name=Sprite2 class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__PathNode_Dynamic.Sprite2'
    BadSprite=Sprite2
    begin object name=Sprite class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__PathNode_Dynamic.Sprite'
    Components(0)=Sprite
    begin object name=Sprite2 class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__PathNode_Dynamic.Sprite2'
    Components(1)=Sprite2
    begin object name=Arrow class=ArrowComponent
        ReplacementPrimitive=none
    object end
    // Reference: ArrowComponent'Default__PathNode_Dynamic.Arrow'
    Components(2)=Arrow
    begin object name=CollisionCylinder class=CylinderComponent
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__PathNode_Dynamic.CollisionCylinder'
    Components(3)=CollisionCylinder
    begin object name=PathRenderer class=PathRenderingComponent
        ReplacementPrimitive=none
    object end
    // Reference: PathRenderingComponent'Default__PathNode_Dynamic.PathRenderer'
    Components(4)=PathRenderer
    bStatic=false
    begin object name=CollisionCylinder class=CylinderComponent
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__PathNode_Dynamic.CollisionCylinder'
    CollisionComponent=CollisionCylinder
}