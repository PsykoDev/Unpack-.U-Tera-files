/*******************************************************************************
 * ParticleModuleEventReceiverKillParticles generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleEventReceiverKillParticles extends ParticleModuleEventReceiverBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object,Object);

/** If TRUE, stop this emitter from spawning as well. */
var() bool bStopSpawning;

defaultproperties
{
    bSpawnModule=true
    bUpdateModule=true
}