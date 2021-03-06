/*******************************************************************************
 * ParticleModuleLocationEmitter generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleLocationEmitter extends ParticleModuleLocationBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

enum ELocationEmitterSelectionMethod
{
    ELESM_Random,
    ELESM_Sequential,
    ELESM_MAX
};

/** The name of the emitter to use that the source location for particle. */
var(Location) noclear export name EmitterName;
/**  
 *The method to use when selecting a spawn target particle from the emitter.
 *       Can be one of the following:
 *               ELESM_Random            Randomly select a particle from the source emitter.
 *               ELESM_Sequential        Step through each particle from the source emitter in order.
 */
var(Location) ParticleModuleLocationEmitter.ELocationEmitterSelectionMethod SelectionMethod;
/** If TRUE, the spawned particle should inherit the velocity of the source particle. */
var(Location) bool InheritSourceVelocity;
/** If TRUE, the spawned particle should inherit the rotation of the source particle. */
var(Location) bool bInheritSourceRotation;
/** Amount to scale the source velocity by when inheriting it. */
var(Location) float InheritSourceVelocityScale;
/** Amount to scale the source rotation by when inheriting it. */
var(Location) float InheritSourceRotationScale;

defaultproperties
{
    InheritSourceVelocityScale=1.0
    InheritSourceRotationScale=1.0
    bSpawnModule=true
}