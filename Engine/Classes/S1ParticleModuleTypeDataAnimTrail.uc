/*******************************************************************************
 * S1ParticleModuleTypeDataAnimTrail generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1ParticleModuleTypeDataAnimTrail extends ParticleModuleTypeDataBase
    native(Particle)
    editinlinenew
    collapsecategories
    hidecategories(Object,Object,Object);

var(AnimTrail) float TickInterval;
var(AnimTrail) float Duration;
var(AnimTrail) float OriginMove;
var(AnimTrail) float Length;
var(AnimTrail) float MinOriginDistance;
var(AnimTrail) bool bSpreadTriangle;
var(AnimTrail) bool bApplyFirstAnimTrailDataParameter;

defaultproperties
{
    TickInterval=0.0040
    Duration=0.20
    Length=30.0
    MinOriginDistance=1.0
    bSpreadTriangle=true
}