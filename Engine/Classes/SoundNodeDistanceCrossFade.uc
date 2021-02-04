/*******************************************************************************
 * SoundNodeDistanceCrossFade generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SoundNodeDistanceCrossFade extends SoundNode
    native(Sound)
    editinlinenew
    hidecategories(Object,Object);

struct native DistanceDatum
{
    /** The distance at which this sound starts fading in */
    var() float FadeInDistanceStart;
    /** The distance at which this sound has faded in completely */
    var() float FadeInDistanceEnd;
    /** The distance at which this sound starts fading out */
    var() float FadeOutDistanceStart;
    /** The distance at which this sound is no longer audible */
    var() float FadeOutDistanceEnd;
    /** The volume for which this Input should be played */
    var() float Volume;
    var deprecated RawDistributionFloat FadeInDistance;
    var deprecated RawDistributionFloat FadeOutDistance;

    structdefaultproperties
    {
        FadeInDistanceStart=0.0
        FadeInDistanceEnd=0.0
        FadeOutDistanceStart=0.0
        FadeOutDistanceEnd=0.0
        Volume=1.0
    }
};

/**  
 *Each input needs to have the correct data filled in so the SoundNodeDistanceCrossFade is able
 * to determine which sounds to play
 */
var() editfixedsize export array<export DistanceDatum> CrossFadeInput;