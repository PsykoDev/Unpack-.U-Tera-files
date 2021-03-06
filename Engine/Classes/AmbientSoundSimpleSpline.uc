/*******************************************************************************
 * AmbientSoundSimpleSpline generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AmbientSoundSimpleSpline extends AmbientSoundSpline
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
    // Reference: SplineComponentSimplified'Default__AmbientSoundSimpleSpline.SplineComponent0'
    SplineComponent=SplineComponent0
    begin object name=AudioComponent2 class=SimpleSplineAudioComponent
        bStopWhenOwnerDestroyed=true
        bShouldRemainActiveIfDropped=true
        PreviewSoundRadius=DrawSoundRadiusComponent'Default__AmbientSoundSimpleSpline.DrawSoundRadius0'
    object end
    // Reference: SimpleSplineAudioComponent'Default__AmbientSoundSimpleSpline.AudioComponent2'
    AudioComponent=AudioComponent2
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.AmbientSoundIcons.S_Ambient_Sound_Simple'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__AmbientSoundSimpleSpline.Sprite'
    SpriteComp=Sprite
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.AmbientSoundIcons.S_Ambient_Sound_Simple'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__AmbientSoundSimpleSpline.Sprite'
    Components(0)=Sprite
    begin object name=DrawSoundRadius0 class=DrawSoundRadiusComponent
        SphereColor=(R=0,G=102,B=255,A=255)
        ReplacementPrimitive=none
    object end
    // Reference: DrawSoundRadiusComponent'Default__AmbientSoundSimpleSpline.DrawSoundRadius0'
    Components(1)=DrawSoundRadius0
    begin object name=SplineComponent0 class=SplineComponentSimplified
        ReplacementPrimitive=none
    object end
    // Reference: SplineComponentSimplified'Default__AmbientSoundSimpleSpline.SplineComponent0'
    Components(2)=SplineComponent0
    begin object name=AudioComponent2 class=SimpleSplineAudioComponent
        bStopWhenOwnerDestroyed=true
        bShouldRemainActiveIfDropped=true
        PreviewSoundRadius=DrawSoundRadiusComponent'Default__AmbientSoundSimpleSpline.DrawSoundRadius0'
    object end
    // Reference: SimpleSplineAudioComponent'Default__AmbientSoundSimpleSpline.AudioComponent2'
    Components(3)=AudioComponent2
}