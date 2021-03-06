/*******************************************************************************
 * NxGenericForceFieldCapsule generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class NxGenericForceFieldCapsule extends NxGenericForceField
    native(ForceField)
    placeable
    hidecategories(Navigation);

var export editinline DrawCapsuleComponent RenderComponent;
/** Radius of influence of the force. */
var() float CapsuleHeight;
var() float CapsuleRadius;

defaultproperties
{
    begin object name=DrawCapsule0 class=DrawCapsuleComponent
        CapsuleColor=(R=64,G=70,B=255,A=255)
        ReplacementPrimitive=none
    object end
    // Reference: DrawCapsuleComponent'Default__NxGenericForceFieldCapsule.DrawCapsule0'
    RenderComponent=DrawCapsule0
    CapsuleHeight=200.0
    CapsuleRadius=200.0
    begin object name=DrawCapsule0 class=DrawCapsuleComponent
        CapsuleColor=(R=64,G=70,B=255,A=255)
        ReplacementPrimitive=none
    object end
    // Reference: DrawCapsuleComponent'Default__NxGenericForceFieldCapsule.DrawCapsule0'
    Components(0)=DrawCapsule0
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.S_RadForce'
        SpriteCategoryName=Physics
        ReplacementPrimitive=none
        HiddenGame=true
        AlwaysLoadOnClient=false
        AlwaysLoadOnServer=false
    object end
    // Reference: SpriteComponent'Default__NxGenericForceFieldCapsule.Sprite'
    Components(1)=Sprite
}