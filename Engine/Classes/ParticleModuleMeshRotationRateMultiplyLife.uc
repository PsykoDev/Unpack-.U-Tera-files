/*******************************************************************************
 * ParticleModuleMeshRotationRateMultiplyLife generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleMeshRotationRateMultiplyLife extends ParticleModuleRotationRateBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

/**  
 *The scale factor that should be applied to the rotation rate.
 *       The value is retrieved using the RelativeTime of the particle.
 */
var(Rotation) RawDistributionVector LifeMultiplier;

defaultproperties
{
    LifeMultiplier=Distribution=DistributionVectorConstant'Default__ParticleModuleMeshRotationRateMultiplyLife.DistributionLifeMultiplier',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing LifeMultiplier
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    bSpawnModule=true
    bUpdateModule=true
}