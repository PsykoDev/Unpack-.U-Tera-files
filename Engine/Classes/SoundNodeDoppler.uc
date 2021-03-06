/*******************************************************************************
 * SoundNodeDoppler generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SoundNodeDoppler extends SoundNode
    native(Sound)
    editinlinenew
    hidecategories(Object,Object);

/** How much to scale the doppler shift (1.0 is normal) */
var(Doppler) float DopplerIntensity;

defaultproperties
{
    DopplerIntensity=1.0
}