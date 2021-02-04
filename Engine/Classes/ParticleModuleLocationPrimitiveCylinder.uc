/*******************************************************************************
 * ParticleModuleLocationPrimitiveCylinder generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleLocationPrimitiveCylinder extends ParticleModuleLocationPrimitiveBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object,Object);

enum CylinderHeightAxis
{
    PMLPC_HEIGHTAXIS_X,
    PMLPC_HEIGHTAXIS_Y,
    PMLPC_HEIGHTAXIS_Z,
    PMLPC_HEIGHTAXIS_MAX
};

/** If TRUE, get the particle velocity form the radial distance inside the primitive. */
var(Location) bool RadialVelocity;
/** If TRUE and the emitter is using world space, this will more acurately calculate particles' velocity. */
var(Location) private bool bAdjustForWorldSpace;
/** The radius of the cylinder. */
var(Location) RawDistributionFloat StartRadius;
/** The height of the cylinder, centered about the location. */
var(Location) RawDistributionFloat StartHeight;
/**  
 *Determines particle particle system axis that should represent the height of the cylinder.
 *       Can be one of the following:
 *               PMLPC_HEIGHTAXIS_X              Orient the height along the particle system X-axis.
 *               PMLPC_HEIGHTAXIS_Y              Orient the height along the particle system Y-axis.
 *               PMLPC_HEIGHTAXIS_Z              Orient the height along the particle system Z-axis.
 */
var(Location) ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis HeightAxis;

defaultproperties
{
    RadialVelocity=true
    StartRadius=Distribution=DistributionFloatConstant'Default__ParticleModuleLocationPrimitiveCylinder.DistributionStartRadius',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing StartRadius
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    StartHeight=Distribution=DistributionFloatConstant'Default__ParticleModuleLocationPrimitiveCylinder.DistributionStartHeight',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing StartHeight
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    HeightAxis=CylinderHeightAxis.PMLPC_HEIGHTAXIS_Z
    VelocityScale=(Distribution=DistributionFloatConstant'Default__ParticleModuleLocationPrimitiveCylinder.DistributionVelocityScale')
    StartLocation=(Distribution=DistributionVectorConstant'Default__ParticleModuleLocationPrimitiveCylinder.DistributionStartLocation')
    bSupported3DDrawMode=true
}