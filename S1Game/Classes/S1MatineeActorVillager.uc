/*******************************************************************************
 * S1MatineeActorVillager generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1MatineeActorVillager extends S1MatineeActorBase
    native
    hidecategories(Navigation);

var() int ShapeId;
var() S1MatineeActorBase.MatineeRace Race;
var() S1MatineeActorBase.MatineeGender Gender;

defaultproperties
{
    begin object name=SkeletalMeshComponent0 class=SkeletalMeshComponent
        ReplacementPrimitive=none
        LightEnvironment=DynamicLightEnvironmentComponent'Default__S1MatineeActorVillager.MyLightEnvironment'
    object end
    // Reference: SkeletalMeshComponent'Default__S1MatineeActorVillager.SkeletalMeshComponent0'
    SkeletalMeshComponent=SkeletalMeshComponent0
    LightEnvironment=DynamicLightEnvironmentComponent'Default__S1MatineeActorVillager.MyLightEnvironment'
    FacialAudioComp=AudioComponent'Default__S1MatineeActorVillager.FaceAudioComponent'
    Components(0)=DynamicLightEnvironmentComponent'Default__S1MatineeActorVillager.MyLightEnvironment'
    begin object name=SkeletalMeshComponent0 class=SkeletalMeshComponent
        ReplacementPrimitive=none
        LightEnvironment=DynamicLightEnvironmentComponent'Default__S1MatineeActorVillager.MyLightEnvironment'
    object end
    // Reference: SkeletalMeshComponent'Default__S1MatineeActorVillager.SkeletalMeshComponent0'
    Components(1)=SkeletalMeshComponent0
    Components(2)=AudioComponent'Default__S1MatineeActorVillager.FaceAudioComponent'
    begin object name=SkeletalMeshComponent0 class=SkeletalMeshComponent
        ReplacementPrimitive=none
        LightEnvironment=DynamicLightEnvironmentComponent'Default__S1MatineeActorVillager.MyLightEnvironment'
    object end
    // Reference: SkeletalMeshComponent'Default__S1MatineeActorVillager.SkeletalMeshComponent0'
    CollisionComponent=SkeletalMeshComponent0
}