/*******************************************************************************
 * SpotLightToggleable generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SpotLightToggleable extends SpotLight
    native(Light)
    placeable
    hidecategories(Navigation)
    classgroup(Lights,SpotLights);

struct CheckpointRecord
{
    var bool bEnabled;

    structdefaultproperties
    {
        bEnabled=false
    }
};

function bool ShouldSaveForCheckpoint()
{
    return RemoteRole != ROLE_None;
    //return ReturnValue;    
}

function CreateCheckpointRecord(out CheckpointRecord Record)
{
    Record.bEnabled = bEnabled;
    //return;    
}

function ApplyCheckpointRecord(const out CheckpointRecord Record)
{
    bEnabled = Record.bEnabled;
    LightComponent.SetEnabled(bEnabled);
    ForceNetRelevant();
    //return;    
}

defaultproperties
{
    begin object name=SpotLightComponent0 class=SpotLightComponent
        PreviewInnerCone=DrawLightConeComponent'Default__SpotLightToggleable.DrawInnerCone0'
        PreviewOuterCone=DrawLightConeComponent'Default__SpotLightToggleable.DrawOuterCone0'
        PreviewLightRadius=DrawLightRadiusComponent'Default__SpotLightToggleable.DrawLightRadius0'
        LightmassSettings=(IndirectLightingScale=0.0)
        PreviewLightSourceRadius=DrawLightRadiusComponent'Default__SpotLightToggleable.DrawLightSourceRadius0'
        UseDirectLightMap=false
    object end
    // Reference: SpotLightComponent'Default__SpotLightToggleable.SpotLightComponent0'
    LightComponent=SpotLightComponent0
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.LightIcons.Light_Spot_Toggleable_Statics'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__SpotLightToggleable.Sprite'
    Components(0)=Sprite
    begin object name=DrawLightRadius0 class=DrawLightRadiusComponent
        ReplacementPrimitive=none
    object end
    // Reference: DrawLightRadiusComponent'Default__SpotLightToggleable.DrawLightRadius0'
    Components(1)=DrawLightRadius0
    begin object name=DrawInnerCone0 class=DrawLightConeComponent
        ReplacementPrimitive=none
    object end
    // Reference: DrawLightConeComponent'Default__SpotLightToggleable.DrawInnerCone0'
    Components(2)=DrawInnerCone0
    begin object name=DrawOuterCone0 class=DrawLightConeComponent
        ReplacementPrimitive=none
    object end
    // Reference: DrawLightConeComponent'Default__SpotLightToggleable.DrawOuterCone0'
    Components(3)=DrawOuterCone0
    begin object name=DrawLightSourceRadius0 class=DrawLightRadiusComponent
        ReplacementPrimitive=none
    object end
    // Reference: DrawLightRadiusComponent'Default__SpotLightToggleable.DrawLightSourceRadius0'
    Components(4)=DrawLightSourceRadius0
    begin object name=SpotLightComponent0 class=SpotLightComponent
        PreviewInnerCone=DrawLightConeComponent'Default__SpotLightToggleable.DrawInnerCone0'
        PreviewOuterCone=DrawLightConeComponent'Default__SpotLightToggleable.DrawOuterCone0'
        PreviewLightRadius=DrawLightRadiusComponent'Default__SpotLightToggleable.DrawLightRadius0'
        LightmassSettings=(IndirectLightingScale=0.0)
        PreviewLightSourceRadius=DrawLightRadiusComponent'Default__SpotLightToggleable.DrawLightSourceRadius0'
        UseDirectLightMap=false
    object end
    // Reference: SpotLightComponent'Default__SpotLightToggleable.SpotLightComponent0'
    Components(5)=SpotLightComponent0
    begin object name=ArrowComponent0 class=ArrowComponent
        ReplacementPrimitive=none
    object end
    // Reference: ArrowComponent'Default__SpotLightToggleable.ArrowComponent0'
    Components(6)=ArrowComponent0
    TickGroup=ETickingGroup.TG_DuringAsyncWork
    bStatic=false
    bHardAttach=true
}