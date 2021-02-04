/*******************************************************************************
 * InterpTrackFaceFX generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class InterpTrackFaceFX extends InterpTrack
    native(Interpolation)
    collapsecategories
    hidecategories(Object);

struct native FaceFXTrackKey
{
    var float StartTime;
    var string FaceFXGroupName;
    var string FaceFXSeqName;

    structdefaultproperties
    {
        StartTime=0.0
        FaceFXGroupName=""
        FaceFXSeqName=""
    }
};

struct native FaceFXSoundCueKey
{
    var private const SoundCue FaceFXSoundCue;

    structdefaultproperties
    {
        FaceFXSoundCue=none
    }
};

/** Extra sets of animation that you wish to use on this Group's Actor during the matinee sequence. */
var() array<FaceFXAnimSet> FaceFXAnimSets;
var array<FaceFXTrackKey> FaceFXSeqs;
var transient FaceFXAsset CachedActorFXAsset;
var private const array<FaceFXSoundCueKey> FaceFXSoundCueKeys;

defaultproperties
{
    TrackInstClass=class'InterpTrackInstFaceFX'
    TrackTitle="FaceFX"
    bOnePerGroup=true
}