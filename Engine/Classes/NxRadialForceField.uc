/*******************************************************************************
 * NxRadialForceField generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class NxRadialForceField extends NxForceField
    native(ForceField)
    placeable
    hidecategories(Navigation);

var export editinline DrawSphereComponent RenderComponent;
/** Strength of the force applied by this actor. Positive forces are applied outwards. */
var() interp float ForceStrength;
/** Radius of influence of the force. */
var() interp float ForceRadius;
/** Way in which the force falls off as objects are further away from the location. */
var() export PrimitiveComponent.ERadialImpulseFalloff ForceFalloff;
var native const transient Pointer LinearKernel;

defaultproperties
{
    begin object name=DrawSphere0 class=DrawSphereComponent
        SphereColor=(R=64,G=70,B=255,A=255)
        SphereRadius=200.0
        ReplacementPrimitive=none
    object end
    // Reference: DrawSphereComponent'Default__NxRadialForceField.DrawSphere0'
    RenderComponent=DrawSphere0
    ForceStrength=10.0
    ForceRadius=200.0
    begin object name=DrawSphere0 class=DrawSphereComponent
        SphereColor=(R=64,G=70,B=255,A=255)
        SphereRadius=200.0
        ReplacementPrimitive=none
    object end
    // Reference: DrawSphereComponent'Default__NxRadialForceField.DrawSphere0'
    Components(0)=DrawSphere0
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.S_RadForce'
        SpriteCategoryName=Physics
        ReplacementPrimitive=none
        HiddenGame=true
        AlwaysLoadOnClient=false
        AlwaysLoadOnServer=false
    object end
    // Reference: SpriteComponent'Default__NxRadialForceField.Sprite'
    Components(1)=Sprite
}