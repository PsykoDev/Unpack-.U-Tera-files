/*******************************************************************************
 * RB_Handle generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class RB_Handle extends ActorComponent
    native(Physics)
    collapsecategories
    hidecategories(Object);

var export editinline PrimitiveComponent GrabbedComponent;
var name GrabbedBoneName;
var native const transient int SceneIndex;
var native const transient bool bInHardware;
var native const transient bool bRotationConstrained;
var bool bInterpolating;
var native const transient Pointer HandleData;
var native const transient Pointer KinActorData;
/** How strong handle is. */
var() float LinearDamping;
var() float LinearStiffness;
/** Scales the handle spring stiffness along each axis (in local space of handle) */
var() Vector LinearStiffnessScale3D;
/** Scales the handle spring damping along each axis (in local space of handle) */
var() Vector LinearDampingScale3D;
var() float AngularDamping;
var() float AngularStiffness;
var Vector Destination;
var Vector StepSize;
var Vector Location;

// Export URB_Handle::execGrabComponent(FFrame&, void* const)
native function GrabComponent(PrimitiveComponent Component, name InBoneName, Vector GrabLocation, bool bConstrainRotation);

// Export URB_Handle::execReleaseComponent(FFrame&, void* const)
native function ReleaseComponent();

// Export URB_Handle::execSetLocation(FFrame&, void* const)
native function SetLocation(Vector NewLocation);

// Export URB_Handle::execSetSmoothLocation(FFrame&, void* const)
native function SetSmoothLocation(Vector NewLocation, float MoveTime);

// Export URB_Handle::execUpdateSmoothLocation(FFrame&, void* const)
native function UpdateSmoothLocation(const out Vector NewLocation);

// Export URB_Handle::execSetOrientation(FFrame&, void* const)
native function SetOrientation(const out Quat NewOrientation);

// Export URB_Handle::execGetOrientation(FFrame&, void* const)
native function Quat GetOrientation();

defaultproperties
{
    LinearDamping=100.0
    LinearStiffness=1300.0
    LinearStiffnessScale3D=(X=1.0,Y=1.0,Z=1.0)
    LinearDampingScale3D=(X=1.0,Y=1.0,Z=1.0)
    AngularDamping=200.0
    AngularStiffness=1000.0
    TickGroup=ETickingGroup.TG_PreAsyncWork
}