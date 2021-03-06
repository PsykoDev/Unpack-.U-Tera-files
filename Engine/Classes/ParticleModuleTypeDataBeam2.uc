/*******************************************************************************
 * ParticleModuleTypeDataBeam2 generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleTypeDataBeam2 extends ParticleModuleTypeDataBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

enum EBeam2Method
{
    PEB2M_Distance,
    PEB2M_Target,
    PEB2M_Branch,
    PEB2M_MAX
};

enum EBeamTaperMethod
{
    PEBTM_None,
    PEBTM_Full,
    PEBTM_Partial,
    PEBTM_MAX
};

struct BeamTargetData
{
    /** Name of the target. */
    var() name TargetName;
    /** Percentage chance the target will be selected (100 = always). */
    var() float TargetPercentage;

    structdefaultproperties
    {
        TargetName=None
        TargetPercentage=0.0
    }
};

/**  
 *The method with which to form the beam(s). Must be one of the following:
 *               PEB2M_Distance  - Use the distance property to emit a beam along the X-axis of the emitter.
 *               PEB2M_Target    - Emit a beam from the source to the supplied target.
 *               PEB2M_Branch    - Currently unimplemented.
 */
var(Beam) ParticleModuleTypeDataBeam2.EBeam2Method BeamMethod;
/**  
 *Tapering mode - one of the following:
 *       PEBTM_None              - No tapering is applied
 *       PEBTM_Full              - Taper the beam relative to source-->target, regardless of current beam length
 *       PEBTM_Partial   - Taper the beam relative to source-->location, 0=source,1=endpoint
 */
var(Taper) ParticleModuleTypeDataBeam2.EBeamTaperMethod TaperMethod;
/** The number of times to tile the texture along each beam */
var(Beam) int TextureTile;
/** The distance per texture tile */
var(Beam) float TextureTileDistance;
/** The number of sheets to render */
var(Beam) int Sheets;
/** The number of live beams */
var(Beam) int MaxBeamCount;
/**  
 *The speed at which the beam should move from source to target when firing up.
 *       '0' indicates instantaneous
 */
var(Beam) float Speed;
/**  
 *Indicates whether the beam should be interpolated.
 *     <= 0 --> no
 *     >  0 --> yes (and is equal to the number of interpolation steps that should be taken.
 */
var(Beam) int InterpolationPoints;
/** If true, there will ALWAYS be a beam... */
var(Beam) bool bAlwaysOn;
/** Beam Rendering Variables */
var(Rendering) bool RenderGeometry;
var(Rendering) bool RenderDirectLine;
var(Rendering) bool RenderLines;
var(Rendering) bool RenderTessellation;
/**  
 *The approach to use for determining the Up vector(s) for the beam.
 * 
 *       0 indicates that the Up vector should be calculated at EVERY point in the beam.
 *       1 indicates a single Up vector should be determined at the start of the beam and used at every point.
 *       N indicates an Up vector should be calculated every N points of the beam and interpolated between them.
 *           [NOTE: This mode is currently unsupported.]
 */
var(Beam) int UpVectorStepSize;
/**  
 *The name of the emitter to branch from (if mode is PEB2M_Branch)
 * MUST BE IN THE SAME PARTICLE SYSTEM!
 */
var(Branching) name BranchParentName;
/**  
 *The distance along the X-axis to stretch the beam
 *       Distance is only used if BeamMethod is PEB2M_Distance
 */
var(Distance) RawDistributionFloat Distance;
/** Tapering factor, 0 = source of beam, 1 = target */
var(Taper) RawDistributionFloat TaperFactor;
/**  
 *Tapering scaling
 *       This is intended to be either a constant, uniform or a ParticleParam.
 *       If a curve is used, 0/1 mapping of source/target... which could be integrated into
 *       the taper factor itself, and therefore makes no sense.
 */
var(Taper) RawDistributionFloat TaperScale;

defaultproperties
{
    BeamMethod=EBeam2Method.PEB2M_Target
    TextureTile=1
    Sheets=1
    Speed=10.0
    RenderGeometry=true
    Distance=Distribution=DistributionFloatConstant'Default__ParticleModuleTypeDataBeam2.DistributionDistance',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing Distance
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    TaperFactor=Distribution=DistributionFloatConstant'Default__ParticleModuleTypeDataBeam2.DistributionTaperFactor',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing TaperFactor
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    TaperScale=Distribution=DistributionFloatConstant'Default__ParticleModuleTypeDataBeam2.DistributionTaperScale',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing TaperScale
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
}