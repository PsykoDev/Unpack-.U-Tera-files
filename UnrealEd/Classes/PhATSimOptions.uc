/*******************************************************************************
 * PhATSimOptions generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PhATSimOptions extends Object
    native
    config(EditorUserSettings)
    hidecategories(Object);

/** AnimSet used for playing animations . */
var(Anim) transient AnimSet PreviewAnimSet;
/** Lets you manually control the physics/animation */
var(Anim) transient float PhysicsBlend;
/** Whether we should just show animation until poked, then snap to physics, wait PokePauseTime, then blend back to animation over PokeBlendTime. */
var(Anim) transient bool bBlendOnPoke;
var(Simulation) config bool bDrawContacts;
var(Advanced) config bool bPromptOnBoneDelete;
var(Advanced) config bool bShowConstraintsAsPoints;
var(Advanced) config bool bShowNamesInHierarchy;
/** Time between poking ragdoll and starting to blend back. */
var(Anim) config float PokePauseTime;
/** Time taken to blend from physics to animation. */
var(Anim) config float PokeBlendTime;
/** Overall spring scaling applied to all motors. */
var(Anim) transient float AngularSpringScale;
/** Overall damping scaling applied to all motors. */
var(Anim) transient float AngularDampingScale;
var(Simulation) config float SimSpeed;
var(Simulation) config float FloorGap;
var(Simulation) config float GravScale;
var(MouseSpring) config float HandleLinearDamping;
var(MouseSpring) config float HandleLinearStiffness;
var(MouseSpring) config float HandleAngularDamping;
var(MouseSpring) config float HandleAngularStiffness;
var(Poking) config float PokeStrength;
var(Lighting) config float SkyBrightness;
var(Lighting) config float Brightness;
var(Snap) config float AngularSnap;
var(Snap) config float LinearSnap;
/** Controls how large constraints are drawn in PhAT */
var(Drawing) config float ConstraintDrawSize;

defaultproperties
{
    PhysicsBlend=1.0
    bPromptOnBoneDelete=true
    bShowNamesInHierarchy=true
    PokePauseTime=0.50
    PokeBlendTime=0.50
    AngularSpringScale=1.0
    AngularDampingScale=1.0
    SimSpeed=1.0
    FloorGap=25.0
    GravScale=1.0
    PokeStrength=100.0
    SkyBrightness=0.250
    Brightness=1.0
    AngularSnap=15.0
    LinearSnap=2.0
    ConstraintDrawSize=0.010
}