/*******************************************************************************
 * ParticleModuleMeshRotationRate generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleMeshRotationRate extends ParticleModuleRotationRateBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

/**  
 *Initial rotation rate, in rotations per second.
 *       The value is retrieved using the EmitterTime.
 */
var(Rotation) RawDistributionVector StartRotationRate;

defaultproperties
{
    StartRotationRate=Distribution=DistributionVectorUniform'Default__ParticleModuleMeshRotationRate.DistributionStartRotationRate',Type=0,Op=2,LookupTableNumElements=2,LookupTableChunkSize=6,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing StartRotationRate
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    bSpawnModule=true
    bUpdateModule=true
}