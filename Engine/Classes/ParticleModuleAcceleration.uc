/*******************************************************************************
 * ParticleModuleAcceleration generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleAcceleration extends ParticleModuleAccelerationBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

/**  
 *The initial acceleration of the particle.
 *       Value is obtained using the EmitterTime at particle spawn.
 *       Each frame, the current and base velocity of the particle 
 *       is then updated using the formula 
 *               velocity += acceleration DeltaTime
 *       where DeltaTime is the time passed since the last frame.
 */
var(Acceleration) RawDistributionVector Acceleration;
/**  
 *If true, then apply the particle system components scale 
 *       to the acceleration value.
 */
var(Acceleration) bool bApplyOwnerScale;
/** transform acceleration value to owner's world space */
var(Acceleration) bool bApplyOwnerDirection;

defaultproperties
{
    Acceleration=Distribution=DistributionVectorUniform'Default__ParticleModuleAcceleration.DistributionAcceleration',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing Acceleration
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    bSpawnModule=true
    bUpdateModule=true
}