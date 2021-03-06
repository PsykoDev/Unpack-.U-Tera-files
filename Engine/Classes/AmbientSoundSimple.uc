/*******************************************************************************
 * AmbientSoundSimple generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AmbientSoundSimple extends AmbientSound
    native(Sound)
    placeable
    hidecategories(Navigation,Audio)
    autoexpandcategories(Audio,AmbientSoundSimple);

/** Mirrored property for easier editability, set in Spawned. */
var() editconst editinline SoundNodeAmbient AmbientProperties;
var const export editinline SoundCue SoundCueInstance;
var const export editinline SoundNodeAmbient SoundNodeInstance;
var transient int CachedVolumeId;
var transient int CacheTag;

defaultproperties
{
    begin object name=SoundCue0 class=SoundCue
        SoundClass=AmbientMaster
    object end
    // Reference: SoundCue'Default__AmbientSoundSimple.SoundCue0'
    SoundCueInstance=SoundCue0
    SoundNodeInstance=SoundNodeAmbient'Default__AmbientSoundSimple.SoundNodeAmbient0'
    begin object name=AudioComponent0 class=AudioComponent
        PreviewSoundRadius=DrawSoundRadiusComponent'Default__AmbientSoundSimple.DrawSoundRadius0'
    object end
    // Reference: AudioComponent'Default__AmbientSoundSimple.AudioComponent0'
    AudioComponent=AudioComponent0
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.AmbientSoundIcons.S_Ambient_Sound_Simple'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__AmbientSoundSimple.Sprite'
    SpriteComp=Sprite
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.AmbientSoundIcons.S_Ambient_Sound_Simple'
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__AmbientSoundSimple.Sprite'
    Components(0)=Sprite
    begin object name=DrawSoundRadius0 class=DrawSoundRadiusComponent
        SphereColor=(R=0,G=102,B=255,A=255)
        ReplacementPrimitive=none
    object end
    // Reference: DrawSoundRadiusComponent'Default__AmbientSoundSimple.DrawSoundRadius0'
    Components(1)=DrawSoundRadius0
    begin object name=AudioComponent0 class=AudioComponent
        PreviewSoundRadius=DrawSoundRadiusComponent'Default__AmbientSoundSimple.DrawSoundRadius0'
    object end
    // Reference: AudioComponent'Default__AmbientSoundSimple.AudioComponent0'
    Components(2)=AudioComponent0
}