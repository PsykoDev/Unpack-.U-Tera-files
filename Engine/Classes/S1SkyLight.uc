/*******************************************************************************
 * S1SkyLight generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1SkyLight extends SkyLight
    transient
    native(S1Game)
    placeable
    hidecategories(Navigation);

defaultproperties
{
    LightComponent=SkyLightComponent'Default__S1SkyLight.SkyLightComponent0'
    begin object name=Sprite class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__S1SkyLight.Sprite'
    Components(0)=Sprite
    Components(1)=SkyLightComponent'Default__S1SkyLight.SkyLightComponent0'
    bStatic=false
}