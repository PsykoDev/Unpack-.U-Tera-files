/*******************************************************************************
 * ParticleModuleUberLTISIVCLILIRSSBLIRR generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleUberLTISIVCLILIRSSBLIRR extends ParticleModuleUberBase
    native(Particle)
    editinlinenew
    collapsecategories
    hidecategories(Object,Object,Object);

/** Lifetime - Gives the lifetime of the particles */
var(Lifetime) noclear export RawDistributionFloat Lifetime;
/** Size - Gives the size of the particles */
var(Size) noclear export RawDistributionVector StartSize;
/** StartVelociy - Gives the start velocity of the particles */
var(Velocity) noclear export RawDistributionVector StartVelocity;
/** StartRadialVelociy - Gives the start radial velocity of the particles */
var(Velocity) noclear export RawDistributionFloat StartVelocityRadial;
/** ColorOverLife - Gives the color to apply to the particles */
var(Color) noclear export RawDistributionVector ColorOverLife;
/** AlphaOverLife - Gives the alpha to apply to the particles */
var(Color) noclear export RawDistributionFloat AlphaOverLife;
/** StartLocation - Gives the start location of particles */
var(Location) noclear export RawDistributionVector StartLocation;
/** StartRotation - Gives the rotation of particles in turns (1 = 360 degrees) */
var(Rotation) noclear export RawDistributionFloat StartRotation;
/** SizeLifeMultiplier - Size scale factor */
var(Size) noclear export RawDistributionVector SizeLifeMultiplier;
/** MultiplyX - If TRUE, scale along the X size axis */
var(Size) bool SizeMultiplyX;
/** MultiplyY - If TRUE, scale along the Y size axis */
var(Size) bool SizeMultiplyY;
/** MultiplyZ - If TRUE, scale along the Z size axis */
var(Size) bool SizeMultiplyZ;
/** StartRotationRate - Gives the rotation rate of particles in turns per second */
var(Rotation) noclear export RawDistributionFloat StartRotationRate;

defaultproperties
{
    Lifetime=Distribution=DistributionFloatUniform'Default__ParticleModuleUberLTISIVCLILIRSSBLIRR.DistributionLifetime',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing Lifetime
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    StartSize=Distribution=DistributionVectorUniform'Default__ParticleModuleUberLTISIVCLILIRSSBLIRR.DistributionStartSize',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing StartSize
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    StartVelocity=Distribution=DistributionVectorUniform'Default__ParticleModuleUberLTISIVCLILIRSSBLIRR.DistributionStartVelocity',Type=0,Op=2,LookupTableNumElements=2,LookupTableChunkSize=6,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing StartVelocity
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    StartVelocityRadial=Distribution=DistributionFloatUniform'Default__ParticleModuleUberLTISIVCLILIRSSBLIRR.DistributionStartVelocityRadial',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing StartVelocityRadial
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    ColorOverLife=Distribution=DistributionVectorConstantCurve'Default__ParticleModuleUberLTISIVCLILIRSSBLIRR.DistributionColorOverLife',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing ColorOverLife
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    AlphaOverLife=Distribution=DistributionFloatConstant'Default__ParticleModuleUberLTISIVCLILIRSSBLIRR.DistributionAlphaOverLife',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing AlphaOverLife
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    StartLocation=Distribution=DistributionVectorUniform'Default__ParticleModuleUberLTISIVCLILIRSSBLIRR.DistributionStartLocation',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing StartLocation
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    StartRotation=Distribution=DistributionFloatUniform'Default__ParticleModuleUberLTISIVCLILIRSSBLIRR.DistributionStartRotation',Type=0,Op=2,LookupTableNumElements=2,LookupTableChunkSize=2,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing StartRotation
System.ArgumentException: Requested value '*_1065353215' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    SizeLifeMultiplier=Distribution=DistributionVectorConstant'Default__ParticleModuleUberLTISIVCLILIRSSBLIRR.DistributionLifeMultiplier',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing SizeLifeMultiplier
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    SizeMultiplyX=true
    SizeMultiplyY=true
    SizeMultiplyZ=true
    StartRotationRate=Distribution=DistributionFloatConstant'Default__ParticleModuleUberLTISIVCLILIRSSBLIRR.DistributionStartRotationRate',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing StartRotationRate
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    RequiredModules(0)=ParticleModuleLifetime
    RequiredModules(1)=ParticleModuleSize
    RequiredModules(2)=ParticleModuleVelocity
    RequiredModules(3)=ParticleModuleColorOverLife
    RequiredModules(4)=ParticleModuleLocation
    RequiredModules(5)=ParticleModuleRotation
    RequiredModules(6)=ParticleModuleSizeMultiplyLife
    RequiredModules(7)=ParticleModuleRotationRate
    bSpawnModule=true
    bUpdateModule=true
}