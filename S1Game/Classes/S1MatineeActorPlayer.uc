/*******************************************************************************
 * S1MatineeActorPlayer generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1MatineeActorPlayer extends S1MatineeActorBase
    native
    hidecategories(Navigation);

var() editoronly S1MatineeActorBase.MatineeRace EditorRace;
var() editoronly S1MatineeActorBase.MatineeGender EditorGender;
var() editoronly S1MatineeActorBase.MatineeClass EditorClass;

defaultproperties
{
    begin object name=SkeletalMeshComponent0 class=SkeletalMeshComponent
        ReplacementPrimitive=none
        LightEnvironment=DynamicLightEnvironmentComponent'Default__S1MatineeActorPlayer.MyLightEnvironment'
    object end
    // Reference: SkeletalMeshComponent'Default__S1MatineeActorPlayer.SkeletalMeshComponent0'
    SkeletalMeshComponent=SkeletalMeshComponent0
    LightEnvironment=DynamicLightEnvironmentComponent'Default__S1MatineeActorPlayer.MyLightEnvironment'
    FacialAudioComp=AudioComponent'Default__S1MatineeActorPlayer.FaceAudioComponent'
    Components(0)=DynamicLightEnvironmentComponent'Default__S1MatineeActorPlayer.MyLightEnvironment'
    begin object name=SkeletalMeshComponent0 class=SkeletalMeshComponent
        ReplacementPrimitive=none
        LightEnvironment=DynamicLightEnvironmentComponent'Default__S1MatineeActorPlayer.MyLightEnvironment'
    object end
    // Reference: SkeletalMeshComponent'Default__S1MatineeActorPlayer.SkeletalMeshComponent0'
    Components(1)=SkeletalMeshComponent0
    Components(2)=AudioComponent'Default__S1MatineeActorPlayer.FaceAudioComponent'
    begin object name=SkeletalMeshComponent0 class=SkeletalMeshComponent
        ReplacementPrimitive=none
        LightEnvironment=DynamicLightEnvironmentComponent'Default__S1MatineeActorPlayer.MyLightEnvironment'
    object end
    // Reference: SkeletalMeshComponent'Default__S1MatineeActorPlayer.SkeletalMeshComponent0'
    CollisionComponent=SkeletalMeshComponent0
}