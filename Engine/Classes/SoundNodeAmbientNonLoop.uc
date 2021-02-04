/*******************************************************************************
 * SoundNodeAmbientNonLoop generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SoundNodeAmbientNonLoop extends SoundNodeAmbient
    native(Sound)
    editinlinenew
    dontsortcategories(Attenuation,LowPassFilter,Modulation,Sounds,Spatialization,Delay)
    hidecategories(Object,Object,Object)
    autoexpandcategories(Attenuation,LowPassFilter,Modulation,Sounds,Spatialization,Delay);

/** The lower bound of the delay in seconds */
var(Delay) float DelayMin;
/** The upper bound of the delay in seconds */
var(Delay) float DelayMax;
var deprecated RawDistributionFloat DelayTime;
