/*******************************************************************************
 * ParticleModuleBeamBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleBeamBase extends ParticleModule
    abstract
    native(Particle)
    editinlinenew
    hidecategories(Object,Object);

enum Beam2SourceTargetMethod
{
    PEB2STM_Default,
    PEB2STM_UserSet,
    PEB2STM_Emitter,
    PEB2STM_Particle,
    PEB2STM_Actor,
    PEB2STM_MAX
};

enum Beam2SourceTargetTangentMethod
{
    PEB2STTM_Direct,
    PEB2STTM_UserSet,
    PEB2STTM_Distribution,
    PEB2STTM_Emitter,
    PEB2STTM_MAX
};
