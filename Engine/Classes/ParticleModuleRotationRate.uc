/*******************************************************************************
 * ParticleModuleRotationRate generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleRotationRate extends ParticleModuleRotationRateBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

/**  
 *Initial rotation rate, in rotations per second.
 *       The value is retrieved using the EmitterTime.
 */
var(Rotation) RawDistributionFloat StartRotationRate;

defaultproperties
{
    StartRotationRate=Distribution=DistributionFloatConstant'Default__ParticleModuleRotationRate.DistributionStartRotationRate',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing StartRotationRate
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    bSpawnModule=true
}