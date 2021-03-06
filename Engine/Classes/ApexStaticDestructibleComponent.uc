/*******************************************************************************
 * ApexStaticDestructibleComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ApexStaticDestructibleComponent extends ApexStaticComponent
    native(Mesh)
    editinlinenew
    hidecategories(Object);

/** Increasing this value will cause fracture chunks to be put to sleep more quickly. */
var(Physics) float SleepEnergyThreshold<ClampMin=0.0>;
/** Increasing this value will cause fracture chunks to be gradually slowed down before putting them to sleep. */
var(Physics) float SleepDamping<ClampMin=0.0>;
var duplicatetransient native Pointer ApexDestructibleActor;
var duplicatetransient native Pointer ApexDestructiblePreview;
var native bool bIsThumbnailComponent;

defaultproperties
{
    SleepEnergyThreshold=1250.0
    SleepDamping=0.20
    ReplacementPrimitive=none
    bUsePrecomputedShadows=false
}