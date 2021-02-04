/*******************************************************************************
 * ParticleModuleAttractorSkelVertSurface generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleAttractorSkelVertSurface extends ParticleModuleAttractorBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

enum EVertSurfaceAttractorFalloffType
{
    VSFOFF_Constant,
    VSFOFF_Linear,
    VSFOFF_Exponent,
    VSFOFF_MAX
};

enum EAttractorSkelVertSurfaceDestination
{
    VERTSURFACEDEST_Vert,
    VERTSURFACEDEST_Surface,
    VERTSURFACEDEST_MAX
};

/**  
 *Type of falloff.
 * 
 *  FOFF_Constant - Falloff is constant so just use the strength for the whole range.
 *  FOFF_Linear - Linear falloff over the range.
 *  FOFF_Exponent - Exponential falloff over the range.
 */
var() ParticleModuleAttractorSkelVertSurface.EVertSurfaceAttractorFalloffType FalloffType;
/**  
 *Whether the module uses Verts or Surfaces for locations.
 * 
 *       VERTSURFACEDEST_Vert            - Use Verts as the destination locations.
 *       VERTSURFACEDEST_Surface         - Use Surfaces as the destination locations.
 */
var(VertSurface) ParticleModuleAttractorSkelVertSurface.EAttractorSkelVertSurfaceDestination DestinationType;
/** When TRUE the attraction force is particle life relative, when FALSE it is emitter life relative. */
var() bool bParticleLifeRelative;
/** When TRUE use the RestrictToNormal and NormalTolerance values to check surface normals */
var(VertSurface) bool bEnforceNormalCheck;
/** Optional falloff exponent for FOFF_Exponent type. */
var() interp RawDistributionFloat FalloffExponent;
/** Range of the attractor. */
var() interp RawDistributionFloat Range;
/** Strength of the attraction over time. */
var() interp RawDistributionFloat Strength;
/** Radius bounding the attraction point for use with collisions. */
var() interp RawDistributionFloat CollisionRadius;
/**  
 *Drag coefficient, a value of 1.0f means no drag, a value > 1.0f means accelerate.
 *  This value is multiplied with the DragCoefficient value in the attractor to get the
 *  resultant drag coefficient and generate the drag force.
 */
var() interp RawDistributionFloat DragCoefficient;
/** Apply the drag when the particle is within this radius. */
var() interp RawDistributionFloat DragRadius;
/** An offset to apply to each vert/surface */
var(VertSurface) Vector UniversalOffset;
/** The parameter name of the skeletal mesh actor that supplies the SkelMeshComponent for in-game. */
var(VertSurface) name SkelMeshActorParamName;
/** The name of the skeletal mesh to use in the editor */
var(VertSurface) editoronly SkeletalMesh EditorSkelMesh;
/** This module will only spawn from verts or surfaces associated with the bones in this list */
var(VertSurface) array<name> ValidAssociatedBones;
/** Use this normal to restrict spawning locations */
var(VertSurface) Vector NormalToCompare;
/** Normal tolerance.  0 degrees means it must be an exact match, 180 degrees means it can be any angle. */
var(VertSurface) float NormalCheckToleranceDegrees;
var float NormalCheckTolerance;
/**  
 *Array of material indices that are valid materials to spawn from.
 *       If empty, any material will be considered valid
 */
var(VertSurface) array<int> ValidMaterialIndices;

defaultproperties
{
    FalloffExponent=Distribution=DistributionFloatConstant'Default__ParticleModuleAttractorSkelVertSurface.DistributionFalloffExponent',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing FalloffExponent
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    Range=Distribution=DistributionFloatConstant'Default__ParticleModuleAttractorSkelVertSurface.DistributionRange',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing Range
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    Strength=Distribution=DistributionFloatConstant'Default__ParticleModuleAttractorSkelVertSurface.DistributionStrength',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing Strength
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    DragCoefficient=Distribution=DistributionFloatConstant'Default__ParticleModuleAttractorSkelVertSurface.DistributionDragCoefficient',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing DragCoefficient
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    DragRadius=Distribution=DistributionFloatConstant'Default__ParticleModuleAttractorSkelVertSurface.DistributionDragRadius',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing DragRadius
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    SkelMeshActorParamName=VertSurfaceActor
    bSpawnModule=true
    bUpdateModule=true
    bFinalUpdateModule=true
    bSupported3DDrawMode=true
}