/*******************************************************************************
 * DominantPointLight generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DominantPointLight extends PointLight
    native(Light)
    placeable
    hidecategories(Navigation)
    classgroup(Lights,PointLights);

defaultproperties
{
    begin object name=DominantPointLightComponent0 class=DominantPointLightComponent
        PreviewLightRadius=DrawLightRadiusComponent'Default__DominantPointLight.DrawLightRadius0'
        PreviewLightSourceRadius=DrawLightRadiusComponent'Default__DominantPointLight.DrawLightSourceRadius0'
        bAllowPreShadow=true
        LightAffectsClassification=ELightAffectsClassification.LAC_DYNAMIC_AND_STATIC_AFFECTING
    object end
    // Reference: DominantPointLightComponent'Default__DominantPointLight.DominantPointLightComponent0'
    LightComponent=DominantPointLightComponent0
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.LightIcons.Light_Point_Toggleable_Statics'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__DominantPointLight.Sprite'
    Components(0)=Sprite
    begin object name=DrawLightRadius0 class=DrawLightRadiusComponent
        ReplacementPrimitive=none
    object end
    // Reference: DrawLightRadiusComponent'Default__DominantPointLight.DrawLightRadius0'
    Components(1)=DrawLightRadius0
    begin object name=DrawLightSourceRadius0 class=DrawLightRadiusComponent
        ReplacementPrimitive=none
    object end
    // Reference: DrawLightRadiusComponent'Default__DominantPointLight.DrawLightSourceRadius0'
    Components(2)=DrawLightSourceRadius0
    begin object name=DominantPointLightComponent0 class=DominantPointLightComponent
        PreviewLightRadius=DrawLightRadiusComponent'Default__DominantPointLight.DrawLightRadius0'
        PreviewLightSourceRadius=DrawLightRadiusComponent'Default__DominantPointLight.DrawLightSourceRadius0'
        bAllowPreShadow=true
        LightAffectsClassification=ELightAffectsClassification.LAC_DYNAMIC_AND_STATIC_AFFECTING
    object end
    // Reference: DominantPointLightComponent'Default__DominantPointLight.DominantPointLightComponent0'
    Components(3)=DominantPointLightComponent0
    bStatic=false
    bHardAttach=true
}