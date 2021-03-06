/*******************************************************************************
 * ParticleModuleBeamSource generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleBeamSource extends ParticleModuleBeamBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

/** The method flag. */
var(Source) ParticleModuleBeamBase.Beam2SourceTargetMethod SourceMethod;
/** The method to use for the source tangent. */
var(Source) ParticleModuleBeamBase.Beam2SourceTargetTangentMethod SourceTangentMethod;
/** The strength of the tangent from the source point for each beam. */
var(Source) name SourceName;
/** Whether to treat the as an absolute position in world space. */
var(Source) bool bSourceAbsolute;
/** Whether to lock the source to the life of the particle. */
var(Source) bool bLockSource;
/** Whether to lock the source to the life of the particle. */
var(Source) bool bLockSourceTangent;
/** Whether to lock the source to the life of the particle. */
var(Source) bool bLockSourceStength;
/** Default source-point to use. */
var(Source) RawDistributionVector Source;
/** The tangent for the source point for each beam. */
var(Source) RawDistributionVector SourceTangent;
/** The strength of the tangent from the source point for each beam. */
var(Source) RawDistributionFloat SourceStrength;

defaultproperties
{
    Source=Distribution=DistributionVectorConstant'Default__ParticleModuleBeamSource.DistributionSource',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing Source
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    SourceTangent=Distribution=DistributionVectorConstant'Default__ParticleModuleBeamSource.DistributionSourceTangent',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing SourceTangent
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UnrealStreamImplementations.ReadName(IUnrealStream stream)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    SourceStrength=Distribution=DistributionFloatConstant'Default__ParticleModuleBeamSource.DistributionSourceStrength',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing SourceStrength
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
}