/*******************************************************************************
 * ParticleModuleCollision generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleCollision extends ParticleModuleCollisionBase
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object);

enum ParticleAttractorActionType
{
    PAAT_None,
    PAAT_Destroy,
    PAAT_Freeze,
    PAAT_Event,
    PAAT_MAX
};

struct native ParticleAttractorCollisionAction
{
    /** The action type. */
    var() ParticleModuleCollision.ParticleAttractorActionType Type;
    /** The name of the event if using PAAT_Event as a type. */
    var() string EventName;

    structdefaultproperties
    {
        Type=ParticleAttractorActionType.PAAT_None
        EventName=""
    }
};

/**  
 *How much to `slow' the velocity of the particle after a collision.
 *       Value is obtained using the EmitterTime at particle spawn.
 */
var(Collision) RawDistributionVector DampingFactor;
/**  
 *How much to `slow' the rotation of the particle after a collision.
 *       Value is obtained using the EmitterTime at particle spawn.
 */
var(Collision) RawDistributionVector DampingFactorRotation;
/**  
 *The maximum number of collisions a particle can have. 
 *  Value is obtained using the EmitterTime at particle spawn.
 */
var(Collision) RawDistributionFloat MaxCollisions;
/**  
 *What to do once a particles MaxCollisions is reached.
 *       One of the following:
 *       EPCC_Kill
 *               Kill the particle when MaxCollisions is reached
 *       EPCC_Freeze
 *               Freeze in place, NO MORE UPDATES
 *       EPCC_HaltCollisions,
 *               Stop collision checks, keep updating everything
 *       EPCC_FreezeTranslation,
 *               Stop translations, keep updating everything else
 *       EPCC_FreezeRotation,
 *               Stop rotations, keep updating everything else
 *       EPCC_FreezeMovement
 *               Stop all movement, keep updating
 */
var(Collision) ParticleModuleCollisionBase.EParticleCollisionComplete CollisionCompletionOption;
/**  
 *If TRUE, physic will be applied between a particle and the 
 *       object it collides with. 
 *       This is one-way - particle --> object. The particle does 
 *       not have physics applied to it - it just generates an 
 *       impulse applied to the object it collides with.
 */
var(Collision) bool bApplyPhysics;
/**  
 *If TRUE, then collisions with Pawns will still react, but 
 *       the UsedMaxCollisions count will not be decremented. 
 *       (ie., They don't 'count' as collisions)
 */
var(Collision) bool bPawnsDoNotDecrementCount;
/**  
 *If TRUE, then collisions that do not have a vertical hit 
 *       normal will still react, but UsedMaxCollisions count will 
 *       not be decremented. (ie., They don't 'count' as collisions)
 *       Useful for having particles come to rest on floors.
 */
var(Collision) bool bOnlyVerticalNormalsDecrementCount;
/** If TRUE, when the WorldInfo.bDropDetail flag is set, the module will be ignored. */
var(Performance) bool bDropDetail;
/** If TRUE, Particle collision only if particle system is currently being rendered. */
var(Performance) bool bCollideOnlyIfVisible;
/**  
 *When TRUE this particle system will collide with anything in the world besides
 *  WorldAttractors.
 */
var(Attractors) bool bCollideWithWorld;
/**  
 *When TRUE this particle system will collide with WorldAttractors and perform
 *  the list of actions in the ParticleAttractorArrivalActions array.
 */
var(Attractors) bool bCollideWithWorldAttractors;
/**  
 *The mass of the particle - for use when bApplyPhysics is TRUE. 
 *       Value is obtained using the EmitterTime at particle spawn.
 */
var(Collision) RawDistributionFloat ParticleMass;
/**  
 *The directional scalar value - used to scale the bounds to 
 *       'assist' in avoiding inter-penetration or large gaps.
 */
var(Collision) float DirScalar;
/**  
 *The fudge factor to use to determine vertical.
 *       True vertical will have a Hit.Normal.Z == 1.0
 *       This will allow for Z components in the range of
 *       [1.0-VerticalFudgeFactor..1.0]
 *       to count as vertical collisions.
 */
var(Collision) float VerticalFudgeFactor;
/**  
 *How long to delay before checking a particle for collisions.
 *       Value is retrieved using the EmitterTime.
 *       During update, the particle flag IgnoreCollisions will be 
 *       set until the particle RelativeTime has surpassed the 
 *       DelayAmount.
 */
var(Collision) RawDistributionFloat DelayAmount;
/** Max distance at which particle collision will occur. */
var(Performance) float MaxCollisionDistance;
/**  
 *This list of actions dictates what happens when particles collide with
 *  the attractor.
 */
var(Attractors) array<ParticleAttractorCollisionAction> ParticleAttractorCollisionActions;

defaultproperties
{
    DampingFactor=Distribution=DistributionVectorUniform'Default__ParticleModuleCollision.DistributionDampingFactor',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing DampingFactor
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    DampingFactorRotation=Distribution=DistributionVectorConstant'Default__ParticleModuleCollision.DistributionDampingFactorRotation',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=3,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing DampingFactorRotation
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    MaxCollisions=Distribution=DistributionFloatUniform'Default__ParticleModuleCollision.DistributionMaxCollisions',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing MaxCollisions
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    bPawnsDoNotDecrementCount=true
    bDropDetail=true
    bCollideOnlyIfVisible=true
    bCollideWithWorld=true
    ParticleMass=Distribution=DistributionFloatConstant'Default__ParticleModuleCollision.DistributionParticleMass',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing ParticleMass
System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.UName.Deserialize(IUnrealStream stream)
   at UELib.UObjectStream.ReadNameReference()
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    DirScalar=3.50
    VerticalFudgeFactor=0.10
    DelayAmount=Distribution=DistributionFloatConstant'Default__ParticleModuleCollision.DistributionDelayAmount',Type=0,Op=1,LookupTableNumElements=1,LookupTableChunkSize=1,LookupTable=/* Array type was not detected. */,
/* Exception thrown while deserializing DelayAmount
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    MaxCollisionDistance=1000.0
    bSpawnModule=true
    bUpdateModule=true
    LODDuplicate=false
}