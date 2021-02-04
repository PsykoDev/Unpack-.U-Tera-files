/*******************************************************************************
 * ParticleModuleLocationPrimitiveSphere_Seeded generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleLocationPrimitiveSphere_Seeded extends ParticleModuleLocationPrimitiveSphere
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object,Object,Object);

/** The random seed(s) to use for looking up values in StartLocation */
var(RandomSeed) ParticleRandomSeedInfo RandomSeedInfo;

defaultproperties
{
    RandomSeedInfo=(ParameterName=None,bGetSeedFromInstance=false,bInstanceSeedIsIndex=false,bResetSeedOnEmitterLooping=true,bRandomlySelectSeedArray=false,RandomSeeds=none)
    StartRadius=(Distribution=DistributionFloatConstant'Default__ParticleModuleLocationPrimitiveSphere_Seeded.DistributionStartRadius')
    VelocityScale=(Distribution=DistributionFloatConstant'Default__ParticleModuleLocationPrimitiveSphere_Seeded.DistributionVelocityScale')
    StartLocation=(Distribution=DistributionVectorConstant'Default__ParticleModuleLocationPrimitiveSphere_Seeded.DistributionStartLocation')
    bSupportsRandomSeed=true
    bRequiresLoopingNotification=true
}