/*******************************************************************************
 * FractureMaterial generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class FractureMaterial extends Object
    native(Physics)
    collapsecategories
    hidecategories(Object);

/** Particle system effect to play at fracture location. */
var() ParticleSystem FractureEffect;
/** Sound cue to play at fracture location. */
var() SoundCue FractureSound;
