/*******************************************************************************
 * SVehicleWheel generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SVehicleWheel extends Component
    native(Physics);

enum EWheelSide
{
    SIDE_None,
    SIDE_Left,
    SIDE_Right,
    SIDE_MAX
};

/** INPUT TO CAR SIMULATION */
var() float Steer;
var() float MotorTorque;
var() float BrakeTorque;
/** Torque applied back to the chassis (equal-and-opposite) from this wheel. PARAMS */
var() float ChassisTorque;
var() bool bPoweredWheel;
/** If true, this wheel will collide with other vehicles (add RBCC_Vehicle to its RBCollideWithChannels). */
var() bool bHoverWheel;
var() bool bCollidesVehicles;
/** If true, this wheel will collide with pawns (add RBCC_Pawn to its RBCollideWithChannels). */
var() bool bCollidesPawns;
var bool bIsSquealing;
var bool bWheelOnGround;
/** How steering affects this wheel. 0.0 means it is not steered. 1.0 means steered fully normally. -1.0 means reversed steering. */
var() float SteerFactor;
var() name SkelControlName;
var SkelControlWheel WheelControl;
var() name BoneName;
/** Offset from wheel bone to line check point (middle of tyre). NB: Not affected by scale. */
var() Vector BoneOffset;
/** Length of line check. Usually 2x wheel radius. */
var() float WheelRadius;
var() float SuspensionTravel;
/** Max speed at which rendered wheel will move up or down (0 = instant) */
var() float SuspensionSpeed;
var() ParticleSystem WheelParticleSystem;
/** What side of the vehicle the wheel is on (optional). Wheel slippyness factors - These factors scale the wheel slip curve defined in SVehicleSimBase */
var() SVehicleWheel.EWheelSide Side;
var() float LongSlipFactor;
var() float LatSlipFactor;
var() float HandbrakeLongSlipFactor;
var() float HandbrakeLatSlipFactor;
var() float ParkedSlipFactor;
var Vector WheelPosition;
var float SpinVel;
var float LongSlipRatio;
var float LatSlipAngle;
var Vector ContactNormal;
var Vector LongDirection;
var Vector LatDirection;
var float ContactForce;
var float LongImpulse;
var float LatImpulse;
var float DesiredSuspensionPosition;
var float SuspensionPosition;
var float CurrentRotation;
var const transient Pointer WheelShape;
var const transient int WheelMaterialIndex;
var class<ParticleSystemComponent> WheelPSCClass;
var export editinline ParticleSystemComponent WheelParticleComp;
var name SlipParticleParamName;

defaultproperties
{
    bCollidesVehicles=true
    WheelRadius=35.0
    SuspensionTravel=30.0
    SuspensionSpeed=50.0
    LongSlipFactor=4000.0
    LatSlipFactor=20000.0
    HandbrakeLongSlipFactor=4000.0
    HandbrakeLatSlipFactor=20000.0
    ParkedSlipFactor=20000.0
    WheelPSCClass=class'ParticleSystemComponent'
    SlipParticleParamName=WheelSlip
}