/*******************************************************************************
 * FluidInfluenceActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class FluidInfluenceActor extends Actor
    native(Fluid)
    placeable
    hidecategories(Navigation)
    classgroup(Fluid);

var private export editinline ArrowComponent FlowDirection;
var private export editinline SpriteComponent Sprite;
var() const editconst export editinline FluidInfluenceComponent InfluenceComponent;
var repnotify bool bActive;
var repnotify bool bToggled;

replication
{
    // Pos:0x000
    if(bNetDirty)
        bActive, bToggled
}

simulated function OnToggle(SeqAct_Toggle InAction)
{
    // End:0x5B
    if(InAction.InputLinks[0].bHasImpulse)
    {
        InfluenceComponent.bActive = true;
    }
    // End:0x150
    else
    {
        // End:0xB6
        if(InAction.InputLinks[1].bHasImpulse)
        {
            InfluenceComponent.bActive = false;
        }
        // End:0x150
        else
        {
            // End:0x150
            if(InAction.InputLinks[2].bHasImpulse)
            {
                InfluenceComponent.bActive = !InfluenceComponent.bActive;
                InfluenceComponent.bIsToggleTriggered = true;
            }
        }
    }
    bActive = InfluenceComponent.bActive;
    bToggled = InfluenceComponent.bIsToggleTriggered;
    bForceNetUpdate = true;
    //return;    
}

simulated event ReplicatedEvent(name VarName)
{
    // End:0x44
    if(VarName == 'bActive')
    {
        InfluenceComponent.bActive = bActive;
    }
    // End:0x9B
    else
    {
        // End:0x88
        if(VarName == 'bToggled')
        {
            InfluenceComponent.bIsToggleTriggered = bToggled;
        }
        // End:0x9B
        else
        {
            super.ReplicatedEvent(VarName);
        }
    }
    //return;    
}

defaultproperties
{
    begin object name=NewArrowComponent class=ArrowComponent
        bTreatAsASprite=true
        SpriteCategoryName=Fluids
        ReplacementPrimitive=none
    object end
    // Reference: ArrowComponent'Default__FluidInfluenceActor.NewArrowComponent'
    FlowDirection=NewArrowComponent
    begin object name=NewSprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.S_FluidSurfOsc'
        SpriteCategoryName=Fluids
        ReplacementPrimitive=none
        HiddenGame=true
        AlwaysLoadOnClient=false
        AlwaysLoadOnServer=false
    object end
    // Reference: SpriteComponent'Default__FluidInfluenceActor.NewSprite'
    Sprite=NewSprite
    begin object name=NewInfluenceComponent class=FluidInfluenceComponent
        ReplacementPrimitive=none
    object end
    // Reference: FluidInfluenceComponent'Default__FluidInfluenceActor.NewInfluenceComponent'
    InfluenceComponent=NewInfluenceComponent
    begin object name=NewSprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.S_FluidSurfOsc'
        SpriteCategoryName=Fluids
        ReplacementPrimitive=none
        HiddenGame=true
        AlwaysLoadOnClient=false
        AlwaysLoadOnServer=false
    object end
    // Reference: SpriteComponent'Default__FluidInfluenceActor.NewSprite'
    Components(0)=NewSprite
    begin object name=NewArrowComponent class=ArrowComponent
        bTreatAsASprite=true
        SpriteCategoryName=Fluids
        ReplacementPrimitive=none
    object end
    // Reference: ArrowComponent'Default__FluidInfluenceActor.NewArrowComponent'
    Components(1)=NewArrowComponent
    begin object name=NewInfluenceComponent class=FluidInfluenceComponent
        ReplacementPrimitive=none
    object end
    // Reference: FluidInfluenceComponent'Default__FluidInfluenceActor.NewInfluenceComponent'
    Components(2)=NewInfluenceComponent
    RemoteRole=ENetRole.ROLE_SimulatedProxy
    bNoDelete=true
    bAlwaysRelevant=true
    bOnlyDirtyReplication=true
    NetUpdateFrequency=0.10
}