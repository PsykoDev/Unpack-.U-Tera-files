/*******************************************************************************
 * ParticleModuleTrailSource generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleTrailSource extends ParticleModuleTrailBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

enum ETrail2SourceMethod
{
    PET2SRCM_Default,
    PET2SRCM_Particle,
    PET2SRCM_Actor,
    PET2SRCM_MAX
};

/** The source method for the trail. */
var(Source) ParticleModuleTrailSource.ETrail2SourceMethod SourceMethod;
/** Particle selection method, when using the SourceMethod of Particle. */
var(Source) ParticleModule.EParticleSourceSelectionMethod SelectionMethod;
/** The name of the source - either the emitter or Actor. */
var(Source) name SourceName;
/** The strength of the tangent from the source point for each Trail. */
var(Source) RawDistributionFloat SourceStrength;
/** Whether to lock the source to the life of the particle. */
var(Source) bool bLockSourceStength;
/** Interhit particle rotation - only valid for SourceMethod of PET2SRCM_Particle. */
var(Source) bool bInheritRotation;
/**  
 *SourceOffsetCount
 *       The number of source offsets that can be expected to be found on the instance.
 *       These must be named
 *               TrailSourceOffset#
 */
var(Source) int SourceOffsetCount;
/**  
 *Default offsets from the source(s). 
 *       If there are < SourceOffsetCount slots, the grabbing of values will simply wrap.
 */
var(Source) editfixedsize array<Vector> SourceOffsetDefaults;

defaultproperties
{
    SelectionMethod=EParticleSourceSelectionMethod.EPSSM_Sequential
    SourceStrength=Distribution=DistributionFloatConstant'Default__ParticleModuleTrailSource.DistributionSourceStrength',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing SourceStrength
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
}