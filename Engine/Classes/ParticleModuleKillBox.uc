/*******************************************************************************
 * ParticleModuleKillBox generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleKillBox extends ParticleModuleKillBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

/** The lower left corner of the box. */
var(Kill) RawDistributionVector LowerLeftCorner;
/** The upper right corner of the box. */
var(Kill) RawDistributionVector UpperRightCorner;
/** If TRUE, the box coordinates are in world space./ */
var(Kill) bool bAbsolute;
/**  
 *If TRUE, particles INSIDE the box will be killed. 
 *       If FALSE (the default), particles OUTSIDE the box will be killed.
 */
var(Kill) bool bKillInside;
/** If TRUE, the box will always be axis aligned and non-scalable. */
var(Kill) bool bAxisAlignedAndFixedSize;

defaultproperties
{
    LowerLeftCorner=Distribution=DistributionVectorConstant'Default__ParticleModuleKillBox.DistributionLowerLeftCorner',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing LowerLeftCorner
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    UpperRightCorner=Distribution=DistributionVectorConstant'Default__ParticleModuleKillBox.DistributionUpperRightCorner',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing UpperRightCorner
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    bAxisAlignedAndFixedSize=true
    bUpdateModule=true
    bSupported3DDrawMode=true
}