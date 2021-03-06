/*******************************************************************************
 * ParticleModuleColorScaleOverDensity generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleColorScaleOverDensity extends ParticleModuleColorBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

/** The color to apply to the particle, as a function of the particle Density. */
var(Color) RawDistributionVector ColorScaleOverDensity;
/** The alpha to apply to the particle, as a function of the particle Density. */
var(Color) RawDistributionFloat AlphaScaleOverDensity;

defaultproperties
{
    ColorScaleOverDensity=Distribution=DistributionVectorConstantCurve'Default__ParticleModuleColorScaleOverDensity.DistributionColorScaleOverDensity',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing ColorScaleOverDensity
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    AlphaScaleOverDensity=Distribution=DistributionFloatConstant'Default__ParticleModuleColorScaleOverDensity.DistributionAlphaScaleOverDensity',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing AlphaScaleOverDensity
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    bSpawnModule=true
    bUpdateModule=true
}