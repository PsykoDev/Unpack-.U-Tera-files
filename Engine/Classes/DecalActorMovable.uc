/*******************************************************************************
 * DecalActorMovable generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DecalActorMovable extends DecalActorBase
    native(Decal)
    placeable
    hidecategories(Navigation);

defaultproperties
{
    begin object name=NewDecalComponent class=DecalComponent
        bMovableDecal=true
        ReplacementPrimitive=none
    object end
    // Reference: DecalComponent'Default__DecalActorMovable.NewDecalComponent'
    Decal=NewDecalComponent
    begin object name=NewDecalComponent class=DecalComponent
        bMovableDecal=true
        ReplacementPrimitive=none
    object end
    // Reference: DecalComponent'Default__DecalActorMovable.NewDecalComponent'
    Components(0)=NewDecalComponent
    begin object name=Sprite class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__DecalActorMovable.Sprite'
    Components(1)=Sprite
    begin object name=ArrowComponent0 class=ArrowComponent
        ReplacementPrimitive=none
    object end
    // Reference: ArrowComponent'Default__DecalActorMovable.ArrowComponent0'
    Components(2)=ArrowComponent0
    bStatic=false
    bNoDelete=true
    bHardAttach=true
    bMovable=true
}