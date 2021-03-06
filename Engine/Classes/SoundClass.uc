/*******************************************************************************
 * SoundClass generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SoundClass extends Object
    native(AudioDevice)
    dontsortcategories(SoundClass)
    hidecategories(Object);

struct native export SoundClassEditorData
{
    var native const int NodePosX;
    var native const int NodePosY;
};

struct native SoundClassProperties
{
    /** Volume multiplier. */
    var() float Volume;
    /** Pitch multiplier. */
    var() float Pitch;
    /** The amount of stereo sounds to bleed to the rear speakers */
    var() float StereoBleed;
    /** The amount of a sound to bleed to the LFE channel */
    var() float LFEBleed;
    /** Voice center channel volume - Not a multiplier (no propagation) */
    var() float VoiceCenterChannelVolume;
    /** Volume of the radio filter effect */
    var() float RadioFilterVolume;
    /** Volume at which the radio filter kicks in */
    var() float RadioFilterVolumeThreshold;
    /** Sound mode voice - whether to apply audio effects */
    var() bool bApplyEffects;
    /** Whether to artificially prioritise the component to play */
    var() bool bAlwaysPlay;
    /** Whether or not this sound plays when the game is paused in the UI */
    var() bool bIsUISound;
    /** Whether or not this is music (propagates only if parent is TRUE) */
    var() bool bIsMusic;
    /** Whether or not this sound class has reverb applied */
    var() bool bReverb;
    /** Whether or not this sound class forces sounds to the center channel */
    var() bool bCenterChannelOnly;
    /** Whether the Interior/Exterior volume and LPF modifiers should be applied */
    var() bool bApplyAmbientVolumes;
    /** Whether the Interior/Exterior volume and LPF modifiers should be applied//WITH_S1//ducklmg 2008.10.22 : ??? ???? ?? ???? ????. */
    var() int MaxConcurrentPlayCount;

    structdefaultproperties
    {
        Volume=1.0
        Pitch=1.0
        StereoBleed=0.250
        LFEBleed=0.50
        VoiceCenterChannelVolume=0.0
        RadioFilterVolume=0.0
        RadioFilterVolumeThreshold=0.0
        bApplyEffects=false
        bAlwaysPlay=false
        bIsUISound=false
        bIsMusic=false
        bReverb=true
        bCenterChannelOnly=false
        bApplyAmbientVolumes=false
        MaxConcurrentPlayCount=0
    }
};

/** Configurable properties like volume and priority. */
var() SoundClassProperties Properties;
/** Array of names of child sound classes. Empty for leaf classes. */
var() array<name> ChildClassNames;
var bool bIsChild;
var editoronly int MenuID;
var native const map<0, 0> EditorData;

defaultproperties
{
    Properties=(Volume=1.0,Pitch=1.0,StereoBleed=0.250,LFEBleed=0.50,VoiceCenterChannelVolume=0.0,RadioFilterVolume=0.0,RadioFilterVolumeThreshold=0.0,bApplyEffects=false,bAlwaysPlay=false,bIsUISound=false,bIsMusic=false,bReverb=true,bCenterChannelOnly=false,bApplyAmbientVolumes=false,MaxConcurrentPlayCount=0)
}