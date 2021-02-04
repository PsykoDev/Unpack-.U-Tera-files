/*******************************************************************************
 * LensFlareSource generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class LensFlareSource extends Actor
    native(LensFlare)
    placeable
    hidecategories(Navigation);

var() const editconst export editinline LensFlareComponent LensFlareComp;
var repnotify bool bCurrentlyActive;

replication
{
    // Pos:0x000
    if(bNoDelete)
        bCurrentlyActive
}

// Export ULensFlareSource::execSetTemplate(FFrame&, void* const)
native final function SetTemplate(LensFlare NewTemplate);

simulated event PostBeginPlay()
{
    bCurrentlyActive = LensFlareComp.bIsActive;
    //return;    
}

simulated function OnToggle(SeqAct_Toggle Action)
{
    // End:0x66
    if(Action.InputLinks[0].bHasImpulse)
    {
        LensFlareComp.SetIsActive(true);
        bCurrentlyActive = true;
    }
    // End:0x16E
    else
    {
        // End:0xCC
        if(Action.InputLinks[1].bHasImpulse)
        {
            LensFlareComp.SetIsActive(false);
            bCurrentlyActive = false;
        }
        // End:0x16E
        else
        {
            // End:0x16E
            if(Action.InputLinks[2].bHasImpulse)
            {
                // End:0x142
                if(!bCurrentlyActive)
                {
                    LensFlareComp.SetIsActive(true);
                    bCurrentlyActive = true;
                }
                // End:0x16E
                else
                {
                    LensFlareComp.SetIsActive(false);
                    bCurrentlyActive = false;
                }
            }
        }
    }
    LensFlareComp.LastRenderTime = WorldInfo.TimeSeconds;
    ForceNetRelevant();
    //return;    
}

simulated event ReplicatedEvent(name VarName)
{
    // End:0x7D
    if(VarName == 'bCurrentlyActive')
    {
        LensFlareComp.SetIsActive(bCurrentlyActive);
        LensFlareComp.LastRenderTime = WorldInfo.TimeSeconds;
    }
    //return;    
}

simulated function SetFloatParameter(name ParameterName, float Param)
{
    //return;    
}

simulated function SetVectorParameter(name ParameterName, Vector Param)
{
    //return;    
}

simulated function SetColorParameter(name ParameterName, LinearColor Param)
{
    //return;    
}

simulated function SetExtColorParameter(name ParameterName, float Red, float Green, float Blue, float Alpha)
{
    //return;    
}

simulated function SetActorParameter(name ParameterName, Actor Param)
{
    //return;    
}

defaultproperties
{
    begin object name=LensFlareComponent0 class=LensFlareComponent
        PreviewInnerCone=DrawLightConeComponent'Default__LensFlareSource.DrawInnerCone0'
        PreviewOuterCone=DrawLightConeComponent'Default__LensFlareSource.DrawOuterCone0'
        PreviewRadius=DrawLightRadiusComponent'Default__LensFlareSource.DrawRadius0'
        NextTraceTime=-0.31733150
        ReplacementPrimitive=none
    object end
    // Reference: LensFlareComponent'Default__LensFlareSource.LensFlareComponent0'
    LensFlareComp=LensFlareComponent0
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.S_EMITTER'
        bIsScreenSizeScaled=true
        ScreenSize=0.00250
        SpriteCategoryName=LensFlares
        ReplacementPrimitive=none
        HiddenGame=true
        AlwaysLoadOnClient=false
        AlwaysLoadOnServer=false
    object end
    // Reference: SpriteComponent'Default__LensFlareSource.Sprite'
    Components(0)=Sprite
    begin object name=DrawInnerCone0 class=DrawLightConeComponent
        ReplacementPrimitive=none
    object end
    // Reference: DrawLightConeComponent'Default__LensFlareSource.DrawInnerCone0'
    Components(1)=DrawInnerCone0
    begin object name=DrawOuterCone0 class=DrawLightConeComponent
        ConeColor=(R=200,G=255,B=255,A=255)
        ReplacementPrimitive=none
    object end
    // Reference: DrawLightConeComponent'Default__LensFlareSource.DrawOuterCone0'
    Components(2)=DrawOuterCone0
    begin object name=DrawRadius0 class=DrawLightRadiusComponent
        ReplacementPrimitive=none
    object end
    // Reference: DrawLightRadiusComponent'Default__LensFlareSource.DrawRadius0'
    Components(3)=DrawRadius0
    begin object name=LensFlareComponent0 class=LensFlareComponent
        PreviewInnerCone=DrawLightConeComponent'Default__LensFlareSource.DrawInnerCone0'
        PreviewOuterCone=DrawLightConeComponent'Default__LensFlareSource.DrawOuterCone0'
        PreviewRadius=DrawLightRadiusComponent'Default__LensFlareSource.DrawRadius0'
        NextTraceTime=-0.31733150
        ReplacementPrimitive=none
    object end
    // Reference: LensFlareComponent'Default__LensFlareSource.LensFlareComponent0'
    Components(4)=LensFlareComponent0
    begin object name=ArrowComponent0 class=ArrowComponent
        ArrowColor=(R=0,G=255,B=128,A=255)
        ArrowSize=1.50
        bTreatAsASprite=true
        SpriteCategoryName=LensFlares
        ReplacementPrimitive=none
    object end
    // Reference: ArrowComponent'Default__LensFlareSource.ArrowComponent0'
    Components(5)=ArrowComponent0
    TickGroup=ETickingGroup.TG_DuringAsyncWork
    bNoDelete=true
    bHardAttach=true
    bGameRelevant=true
    bEdShouldSnap=true
}