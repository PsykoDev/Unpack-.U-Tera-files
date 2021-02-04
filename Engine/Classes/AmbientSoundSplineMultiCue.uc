/*******************************************************************************
 * AmbientSoundSplineMultiCue generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AmbientSoundSplineMultiCue extends AmbientSoundSpline
    native(Sound)
    placeable
    hidecategories(Navigation)
    autoexpandcategories(Audio,AmbientSoundSpline);

/** Index of currently edited slot. */
var(AmbientSoundSpline) editoronly int EditedSlot;

defaultproperties
{
    begin object name=SplineComponent0 class=SplineComponentSimplified
        ReplacementPrimitive=none
    object end
    // Reference: SplineComponentSimplified'Default__AmbientSoundSplineMultiCue.SplineComponent0'
    SplineComponent=SplineComponent0
    begin object name=AudioComponent2 class=MultiCueSplineAudioComponent
        bStopWhenOwnerDestroyed=true
        bShouldRemainActiveIfDropped=true
        PreviewSoundRadius=DrawSoundRadiusComponent'Default__AmbientSoundSplineMultiCue.DrawSoundRadius0'
    object end
    // Reference: MultiCueSplineAudioComponent'Default__AmbientSoundSplineMultiCue.AudioComponent2'
    AudioComponent=AudioComponent2
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.AmbientSoundIcons.S_Ambient_Sound_Simple'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__AmbientSoundSplineMultiCue.Sprite'
    SpriteComp=Sprite
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.AmbientSoundIcons.S_Ambient_Sound_Simple'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__AmbientSoundSplineMultiCue.Sprite'
    Components(0)=Sprite
    begin object name=DrawSoundRadius0 class=DrawSoundRadiusComponent
        ReplacementPrimitive=none
    object end
    // Reference: DrawSoundRadiusComponent'Default__AmbientSoundSplineMultiCue.DrawSoundRadius0'
    Components(1)=DrawSoundRadius0
    begin object name=SplineComponent0 class=SplineComponentSimplified
        ReplacementPrimitive=none
    object end
    // Reference: SplineComponentSimplified'Default__AmbientSoundSplineMultiCue.SplineComponent0'
    Components(2)=SplineComponent0
    begin object name=AudioComponent2 class=MultiCueSplineAudioComponent
        bStopWhenOwnerDestroyed=true
        bShouldRemainActiveIfDropped=true
        PreviewSoundRadius=DrawSoundRadiusComponent'Default__AmbientSoundSplineMultiCue.DrawSoundRadius0'
    object end
    // Reference: MultiCueSplineAudioComponent'Default__AmbientSoundSplineMultiCue.AudioComponent2'
    Components(3)=AudioComponent2
}