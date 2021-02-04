/*******************************************************************************
 * KActorSpawnable generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class KActorSpawnable extends KActor
    native(Physics)
    notplaceable;

var bool bRecycleScaleToZero;
var protected bool bScalingToZero;

simulated function Initialize()
{
    bScalingToZero = false;
    SetDrawScale(default.DrawScale);
    ClearTimer('Recycle');
    SetHidden(false);
    StaticMeshComponent.SetHidden(false);
    SetTickIsDisabled(false);
    SetPhysics(10);
    SetCollision(true, false);
    //return;    
}

simulated function Recycle()
{
    // End:0x1F
    if(bRecycleScaleToZero == true)
    {
        bScalingToZero = true;
    }
    // End:0x29
    else
    {
        RecycleInternal();
    }
    //return;    
}

simulated event RecycleInternal()
{
    SetHidden(true);
    StaticMeshComponent.SetHidden(true);
    SetPhysics(0);
    SetCollision(false, false);
    ClearTimer('Recycle');
    SetTickIsDisabled(true);
    //return;    
}

// Export UKActorSpawnable::execResetComponents(FFrame&, void* const)
native final function ResetComponents();

defaultproperties
{
    begin object name=StaticMeshComponent0 class=StaticMeshComponent
        ReplacementPrimitive=none
        LightEnvironment=DynamicLightEnvironmentComponent'Default__KActorSpawnable.MyLightEnvironment'
    object end
    // Reference: StaticMeshComponent'Default__KActorSpawnable.StaticMeshComponent0'
    StaticMeshComponent=StaticMeshComponent0
    LightEnvironment=DynamicLightEnvironmentComponent'Default__KActorSpawnable.MyLightEnvironment'
    Components(0)=DynamicLightEnvironmentComponent'Default__KActorSpawnable.MyLightEnvironment'
    begin object name=StaticMeshComponent0 class=StaticMeshComponent
        ReplacementPrimitive=none
        LightEnvironment=DynamicLightEnvironmentComponent'Default__KActorSpawnable.MyLightEnvironment'
    object end
    // Reference: StaticMeshComponent'Default__KActorSpawnable.StaticMeshComponent0'
    Components(1)=StaticMeshComponent0
    bNoDelete=false
    begin object name=StaticMeshComponent0 class=StaticMeshComponent
        ReplacementPrimitive=none
        LightEnvironment=DynamicLightEnvironmentComponent'Default__KActorSpawnable.MyLightEnvironment'
    object end
    // Reference: StaticMeshComponent'Default__KActorSpawnable.StaticMeshComponent0'
    CollisionComponent=StaticMeshComponent0
}