/*******************************************************************************
 * S1MusicVolume generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1MusicVolume extends Volume
    native
    hidecategories(Navigation,Object,Movement,Display,Advanced,Attachment,Collision,Volume);

enum MusicChannel
{
    MUSIC_CHANNEL_BGM,
    MUSIC_CHANNEL_AMBIENT,
    MUSIC_CHANNEL_MAX
};

var() S1MusicVolume.MusicChannel Channel;
var() float Priority;
var() float VolumeMultiplier;
var() bool RandomPlay;
var() float DelayForFirstTrack;
var() float DelayBetweenTracks;
var() float FadeInTime;
var() float FadeOutTime;
/** sound cue list */
var() array<SoundCue> MusicList;
var transient name ComponentName;

defaultproperties
{
    Priority=10.0
    VolumeMultiplier=1.0
    RandomPlay=true
    FadeInTime=1.0
    FadeOutTime=1.0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        CollideActors=false
        BlockNonZeroExtent=false
    object end
    // Reference: BrushComponent'Default__S1MusicVolume.BrushComponent0'
    BrushComponent=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        CollideActors=false
        BlockNonZeroExtent=false
    object end
    // Reference: BrushComponent'Default__S1MusicVolume.BrushComponent0'
    Components(0)=BrushComponent0
    bCollideActors=false
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        CollideActors=false
        BlockNonZeroExtent=false
    object end
    // Reference: BrushComponent'Default__S1MusicVolume.BrushComponent0'
    CollisionComponent=BrushComponent0
}