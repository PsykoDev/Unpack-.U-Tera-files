/*******************************************************************************
 * AmbientSoundSimpleSplineNonLoop generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AmbientSoundSimpleSplineNonLoop extends AmbientSoundSimpleSpline
    placeable
    hidecategories(Navigation)
    autoexpandcategories(Audio,AmbientSoundSpline);

defaultproperties
{
    begin object name=SplineComponent0 class=SplineComponentSimplified
        ReplacementPrimitive=none
    object end
    // Reference: SplineComponentSimplified'Default__AmbientSoundSimpleSplineNonLoop.SplineComponent0'
    SplineComponent=SplineComponent0
    begin object name=AudioComponent3 class=SimpleSplineNonLoopAudioComponent
        bStopWhenOwnerDestroyed=true
        bShouldRemainActiveIfDropped=true
        PreviewSoundRadius=DrawSoundRadiusComponent'Default__AmbientSoundSimpleSplineNonLoop.DrawSoundRadius0'
    object end
    // Reference: SimpleSplineNonLoopAudioComponent'Default__AmbientSoundSimpleSplineNonLoop.AudioComponent3'
    AudioComponent=AudioComponent3
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.AmbientSoundIcons.S_Ambient_Sound_Non_Loop'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__AmbientSoundSimpleSplineNonLoop.Sprite'
    SpriteComp=Sprite
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.AmbientSoundIcons.S_Ambient_Sound_Non_Loop'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__AmbientSoundSimpleSplineNonLoop.Sprite'
    Components(0)=Sprite
    begin object name=DrawSoundRadius0 class=DrawSoundRadiusComponent
        SphereColor=(R=255,G=0,B=51,A=255)
        ReplacementPrimitive=none
    object end
    // Reference: DrawSoundRadiusComponent'Default__AmbientSoundSimpleSplineNonLoop.DrawSoundRadius0'
    Components(1)=DrawSoundRadius0
    begin object name=SplineComponent0 class=SplineComponentSimplified
        ReplacementPrimitive=none
    object end
    // Reference: SplineComponentSimplified'Default__AmbientSoundSimpleSplineNonLoop.SplineComponent0'
    Components(2)=SplineComponent0
    begin object name=AudioComponent3 class=SimpleSplineNonLoopAudioComponent
        bStopWhenOwnerDestroyed=true
        bShouldRemainActiveIfDropped=true
        PreviewSoundRadius=DrawSoundRadiusComponent'Default__AmbientSoundSimpleSplineNonLoop.DrawSoundRadius0'
    object end
    // Reference: SimpleSplineNonLoopAudioComponent'Default__AmbientSoundSimpleSplineNonLoop.AudioComponent3'
    Components(3)=AudioComponent3
}