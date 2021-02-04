/*******************************************************************************
 * ParticleModuleParameterDynamic generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleParameterDynamic extends ParticleModuleParameterBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

enum EEmitterDynamicParameterValue
{
    EDPV_UserSet,
    EDPV_VelocityX,
    EDPV_VelocityY,
    EDPV_VelocityZ,
    EDPV_VelocityMag,
    EDPV_MAX
};

struct native EmitterDynamicParameter
{
    /** The parameter name - from the material DynamicParameter expression. READ-ONLY */
    var() editconst name ParamName;
    /** If TRUE, use the EmitterTime to retrieve the value, otherwise use Particle RelativeTime. */
    var() bool bUseEmitterTime;
    /** If TRUE, only set the value at spawn time of the particle, otherwise update each frame. */
    var() bool bSpawnTimeOnly;
    /** Where to get the parameter value from. */
    var() ParticleModuleParameterDynamic.EEmitterDynamicParameterValue ValueMethod;
    /** If TRUE, scale the velocity value selected in ValueMethod by the evaluated ParamValue. */
    var() bool bScaleVelocityByParamValue;
    /** The distriubtion for the parameter value. */
    var() RawDistributionFloat ParamValue;

    structdefaultproperties
    {
        ParamName=None
        bUseEmitterTime=false
        bSpawnTimeOnly=false
        ValueMethod=EEmitterDynamicParameterValue.EDPV_UserSet
        bScaleVelocityByParamValue=false
        ParamValue=(Distribution=none,Type=0,Op=0,LookupTableNumElements=0,LookupTableChunkSize=0,LookupTable=none,LookupTableTimeScale=0.0,LookupTableStartTime=0.0)
    }
};

/** The dynamic parameters this module uses. */
var() editfixedsize array<EmitterDynamicParameter> DynamicParams;
var int UpdateFlags;
var bool bUsesVelocity;

defaultproperties
{
    DynamicParams(0)=(ParamName=None,bUseEmitterTime=false,bSpawnTimeOnly=false,ValueMethod=EEmitterDynamicParameterValue.EDPV_UserSet,bScaleVelocityByParamValue=false,ParamValue=Distribution=DistributionFloatConstant'Default__ParticleModuleParameterDynamic.DistributionParam1',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing ParamValue
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */,LookupTableTimeScale=0.0,LookupTableStartTime=0.0)
    DynamicParams(1)=none
    DynamicParams(2)=(ParamName=None,bUseEmitterTime=false,bSpawnTimeOnly=false,ValueMethod=EEmitterDynamicParameterValue.EDPV_UserSet,bScaleVelocityByParamValue=false,ParamValue=Distribution=DistributionFloatConstant'Default__ParticleModuleParameterDynamic.DistributionParam2',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing ParamValue
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */,LookupTableTimeScale=0.0,LookupTableStartTime=0.0)
    DynamicParams(3)=none
    bSpawnModule=true
    bUpdateModule=true
}