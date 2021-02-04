/*******************************************************************************
 * ParticleModuleSpawn generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleSpawn extends ParticleModuleSpawnBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object,ParticleModuleSpawnBase);

/** The rate at which to spawn particles. */
var(Spawn) RawDistributionFloat Rate;
/** The scalar to apply to the rate. */
var(Spawn) RawDistributionFloat RateScale;
/** The method to utilize when burst-emitting particles. */
var(Burst) ParticleEmitter.EParticleBurstMethod ParticleBurstMethod;
/** The array of burst entries. */
var(Burst) noclear export array<export ParticleBurst> BurstList;

defaultproperties
{
    Rate=Distribution=DistributionFloatConstant'Default__ParticleModuleSpawn.RequiredDistributionSpawnRate',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing Rate
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    RateScale=Distribution=DistributionFloatConstant'Default__ParticleModuleSpawn.RequiredDistributionSpawnRateScale',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing RateScale
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    LODDuplicate=false
}