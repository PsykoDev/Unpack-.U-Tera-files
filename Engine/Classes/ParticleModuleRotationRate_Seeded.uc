/*******************************************************************************
 * ParticleModuleRotationRate_Seeded generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleRotationRate_Seeded extends ParticleModuleRotationRate
    native(Particle)
    editinlinenew
    hidecategories(Object,Object,Object,Object);

/** The random seed(s) to use for looking up values in StartLocation */
var(RandomSeed) ParticleRandomSeedInfo RandomSeedInfo;

defaultproperties
{
    RandomSeedInfo=(ParameterName=None,bGetSeedFromInstance=false,bInstanceSeedIsIndex=false,bResetSeedOnEmitterLooping=true,bRandomlySelectSeedArray=false,RandomSeeds=none)
    StartRotationRate=(Distribution=DistributionFloatConstant'Default__ParticleModuleRotationRate_Seeded.DistributionStartRotationRate')
    bSupportsRandomSeed=true
    bRequiresLoopingNotification=true
}