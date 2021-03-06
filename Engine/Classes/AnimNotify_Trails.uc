/*******************************************************************************
 * AnimNotify_Trails generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimNotify_Trails extends AnimNotify
    native(Anim)
    editinlinenew
    collapsecategories
    hidecategories(Object);

struct native TrailSocketSamplePoint
{
    var Vector Position;
    var Vector Velocity;

    structdefaultproperties
    {
        Position=(X=0.0,Y=0.0,Z=0.0)
        Velocity=(X=0.0,Y=0.0,Z=0.0)
    }
};

struct native TrailSamplePoint
{
    var float RelativeTime;
    var TrailSocketSamplePoint FirstEdgeSample;
    var TrailSocketSamplePoint ControlPointSample;
    var TrailSocketSamplePoint SecondEdgeSample;

    structdefaultproperties
    {
        RelativeTime=0.0
        FirstEdgeSample=(Position=(X=0.0,Y=0.0,Z=0.0),Velocity=(X=0.0,Y=0.0,Z=0.0))
        ControlPointSample=(Position=(X=0.0,Y=0.0,Z=0.0),Velocity=(X=0.0,Y=0.0,Z=0.0))
        SecondEdgeSample=(Position=(X=0.0,Y=0.0,Z=0.0),Velocity=(X=0.0,Y=0.0,Z=0.0))
    }
};

struct native TrailSample
{
    var float RelativeTime;
    var Vector FirstEdgeSample;
    var Vector ControlPointSample;
    var Vector SecondEdgeSample;

    structdefaultproperties
    {
        RelativeTime=0.0
        FirstEdgeSample=(X=0.0,Y=0.0,Z=0.0)
        ControlPointSample=(X=0.0,Y=0.0,Z=0.0)
        SecondEdgeSample=(X=0.0,Y=0.0,Z=0.0)
    }
};

/** The Particle system to play */
var(Trails) ParticleSystem PSTemplate;
/** The Skeletal Mesh to sample the data from */
var(Trails) editoronly editconst SkeletalMesh SampledSkeletalMesh;
/** If this effect should be considered extreme content */
var(Trails) bool bIsExtremeContent;
/** If TRUE, the particle system will play in the viewer as well as in game */
var() editoronly bool bPreview;
/** If TRUE, this will preview with listed PS and ignore AnimNotify_FX_Preview section in ini for pawn specific data */
var() editoronly bool bPreviewForceExplicit;
/** If Owner is hidden, skip particle effect */
var() bool bSkipIfOwnerIsHidden;
var bool bResampleRequired;
/** The first edge socket - with the second edge defines the edges of the trail */
var(Trails) name FirstEdgeSocketName;
/**  
 *The control point socket - controls the UV tiling as well as
 *       tapering the two edges to this point.
 */
var(Trails) name ControlPointSocketName;
/** The second edge socket - with the first edge defines the edges of the trail */
var(Trails) name SecondEdgeSocketName;
var float LastStartTime;
var float EndTime;
var deprecated float SampleTimeStep;
var deprecated array<deprecated TrailSamplePoint> TrailSampleData;
/** The frame rate (FPS) to sample the animation at for trail points */
var(Trails) float SamplesPerSecond;
var array<TrailSample> TrailSampledData;
var transient float CurrentTime;
var transient float TimeStep;
var transient AnimNodeSequence AnimNodeSeq;

// Export UAnimNotify_Trails::execGetNumSteps(FFrame&, void* const)
native function int GetNumSteps(int InLastTrailIndex);

defaultproperties
{
    bSkipIfOwnerIsHidden=true
    FirstEdgeSocketName=EndControl
    ControlPointSocketName=MidControl
    SecondEdgeSocketName=StartControl
    SamplesPerSecond=60.0
    NotifyColor=(R=255,G=64,B=255,A=255)
}