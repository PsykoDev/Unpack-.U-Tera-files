/*******************************************************************************
 * ParticleModuleVelocityOverLifetime generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleVelocityOverLifetime extends ParticleModuleVelocityBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

/**  
 *The scaling  value applied to the velocity.
 *       Value is retrieved using the RelativeTime of the particle.
 */
var(Velocity) RawDistributionVector VelOverLife;
/**  
 *If true, the velocity will be SET to the value from the above dist.
 *       If false, the velocity will be scaled by the above dist.
 */
var(Velocity) export bool Absolute;

defaultproperties
{
    VelOverLife=Distribution=DistributionVectorConstantCurve'Default__ParticleModuleVelocityOverLifetime.DistributionVelOverLife',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing VelOverLife
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    bSpawnModule=true
    bUpdateModule=true
}