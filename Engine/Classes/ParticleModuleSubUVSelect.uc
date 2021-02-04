/*******************************************************************************
 * ParticleModuleSubUVSelect generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleSubUVSelect extends ParticleModuleSubUVBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

/**  
 *The horizontal (X) and vertical (Y) index of the sub-image desired.
 *       Value is retrieved using the RelativeTime of the particle.
 */
var(SubUV) RawDistributionVector SubImageSelect;

defaultproperties
{
    SubImageSelect=Distribution=DistributionVectorConstant'Default__ParticleModuleSubUVSelect.DistributionSubImageSelect',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing SubImageSelect
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    bUpdateModule=true
}