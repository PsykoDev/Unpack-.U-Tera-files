/*******************************************************************************
 * AmbientSoundNonLoop generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AmbientSoundNonLoop extends AmbientSoundSimple
    native(Sound)
    placeable
    hidecategories(Navigation,Audio)
    autoexpandcategories(Audio,AmbientSoundSimple);

defaultproperties
{
    SoundCueInstance=SoundCue'Default__AmbientSoundNonLoop.SoundCue0'
    SoundNodeInstance=SoundNodeAmbientNonLoop'Default__AmbientSoundNonLoop.SoundNodeAmbientNonLoop0'
    begin object name=AudioComponent0 class=AudioComponent
        PreviewSoundRadius=DrawSoundRadiusComponent'Default__AmbientSoundNonLoop.DrawSoundRadius0'
    object end
    // Reference: AudioComponent'Default__AmbientSoundNonLoop.AudioComponent0'
    AudioComponent=AudioComponent0
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.AmbientSoundIcons.S_Ambient_Sound_Non_Loop'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__AmbientSoundNonLoop.Sprite'
    SpriteComp=Sprite
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.AmbientSoundIcons.S_Ambient_Sound_Non_Loop'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__AmbientSoundNonLoop.Sprite'
    Components(0)=Sprite
    begin object name=DrawSoundRadius0 class=DrawSoundRadiusComponent
        SphereColor=(R=255,G=0,B=51,A=255)
        ReplacementPrimitive=none
    object end
    // Reference: DrawSoundRadiusComponent'Default__AmbientSoundNonLoop.DrawSoundRadius0'
    Components(1)=DrawSoundRadius0
    begin object name=AudioComponent0 class=AudioComponent
        PreviewSoundRadius=DrawSoundRadiusComponent'Default__AmbientSoundNonLoop.DrawSoundRadius0'
    object end
    // Reference: AudioComponent'Default__AmbientSoundNonLoop.AudioComponent0'
    Components(2)=AudioComponent0
    DrawScale=2.0
}