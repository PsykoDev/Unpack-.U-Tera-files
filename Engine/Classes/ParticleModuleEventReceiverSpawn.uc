/*******************************************************************************
 * ParticleModuleEventReceiverSpawn generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleEventReceiverSpawn extends ParticleModuleEventReceiverBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object,Object);

/** The number of particles to spawn. */
var(Spawn) RawDistributionFloat SpawnCount;
/**  
 *For Death-based event receiving, if this is TRUE, it indicates that the 
 *       ParticleTime of the event should be used to look-up the SpawnCount.
 *       Otherwise (and in all other events received), use the emitter time of 
 *       the event.
 */
var(Spawn) bool bUseParticleTime;
/**  
 *If TRUE, use the location of the particle system component for spawning.
 *       if FALSE (default), use the location of the particle event.
 */
var(Location) bool bUsePSysLocation;
/**  
 *If TRUE, use the velocity of the dying particle as the start velocity of 
 *       the spawned particle.
 */
var(Velocity) bool bInheritVelocity;
/** If bInheritVelocity is TRUE, scale the velocity with this. */
var(Velocity) RawDistributionVector InheritVelocityScale;

defaultproperties
{
    SpawnCount=Distribution=DistributionFloatConstant'Default__ParticleModuleEventReceiverSpawn.RequiredDistributionSpawnCount',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing SpawnCount
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    InheritVelocityScale=Distribution=DistributionVectorConstant'Default__ParticleModuleEventReceiverSpawn.RequiredDistributionInheritVelocityScale',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing InheritVelocityScale
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    bSpawnModule=true
    bUpdateModule=true
}