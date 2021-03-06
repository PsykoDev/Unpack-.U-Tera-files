/*******************************************************************************
 * RB_CylindricalForceActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class RB_CylindricalForceActor extends RigidBodyBase
    native(ForceField)
    placeable
    hidecategories(Navigation);

/** Used to preview the radius of the force. */
var() export editinline DrawCylinderComponent RenderComponent;
/** Strength of the force applied by this actor. */
var() interp float RadialStrength;
/** Rotational strength of the force applied around the cylinder axis. */
var() interp float RotationalStrength;
/** Strength of the force applied along the cylinder axis */
var() interp float LiftStrength;
/** Lift falloff height, 0-1, lift starts to fall off in a linear way above this height */
var() interp float LiftFalloffHeight;
/** Velocity above which the radial force is ignored. */
var() interp float EscapeVelocity;
/** Radius of influence of the force at the bottom of the cylinder. */
var() interp float ForceRadius;
/** Radius of the force field at the top */
var() interp float ForceTopRadius;
/** Height of force cylinder */
var() interp float ForceHeight;
/** Offset from the actor base to the center of the force field */
var() interp float HeightOffset;
/** Indicates whether the force is active at the moment. */
var() bool bForceActive;
/** Apply force field to cloth */
var() bool bForceApplyToCloth;
/** Apply force field to fluid */
var() bool bForceApplyToFluid;
/** Apply force field to rigid bodies */
var() bool bForceApplyToRigidBodies;
/** Apply force field to projectiles like rockets */
var() bool bForceApplyToProjectiles;
/** Which types of object to apply this force field to */
var() const RBCollisionChannelContainer CollideWithChannels;

replication
{
    // Pos:0x000
    if(bNetDirty)
        bForceActive
}

simulated function OnToggle(SeqAct_Toggle InAction)
{
    // End:0x46
    if(InAction.InputLinks[0].bHasImpulse)
    {
        bForceActive = true;
    }
    // End:0xDB
    else
    {
        // End:0x8C
        if(InAction.InputLinks[1].bHasImpulse)
        {
            bForceActive = false;
        }
        // End:0xDB
        else
        {
            // End:0xDB
            if(InAction.InputLinks[2].bHasImpulse)
            {
                bForceActive = !bForceActive;
            }
        }
    }
    SetForcedInitialReplicatedProperty(boolproperty'bForceActive', bForceActive == default.bForceActive);
    //return;    
}

defaultproperties
{
    begin object name=DrawCylinder0 class=DrawCylinderComponent
        CylinderRadius=200.0
        CylinderTopRadius=200.0
        CylinderHeight=200.0
        bDrawOnlyIfSelected=true
        ReplacementPrimitive=none
    object end
    // Reference: DrawCylinderComponent'Default__RB_CylindricalForceActor.DrawCylinder0'
    RenderComponent=DrawCylinder0
    EscapeVelocity=10000.0
    ForceRadius=200.0
    ForceTopRadius=200.0
    ForceHeight=200.0
    bForceApplyToCloth=true
    bForceApplyToFluid=true
    bForceApplyToRigidBodies=true
    CollideWithChannels=(Default=true,Nothing=false,Pawn=true,Vehicle=true,Water=true,GameplayPhysics=true,EffectPhysics=true,Untitled1=true,Untitled2=true,Untitled3=true,Untitled4=false,Cloth=true,FluidDrain=true,SoftBody=false,FracturedMeshPart=false,BlockingVolume=false,DeadPawn=false,Clothing=false,ClothingCollision=false)
    begin object name=DrawCylinder0 class=DrawCylinderComponent
        CylinderRadius=200.0
        CylinderTopRadius=200.0
        CylinderHeight=200.0
        bDrawOnlyIfSelected=true
        ReplacementPrimitive=none
    object end
    // Reference: DrawCylinderComponent'Default__RB_CylindricalForceActor.DrawCylinder0'
    Components(0)=DrawCylinder0
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.S_RadForce'
        SpriteCategoryName=Physics
        ReplacementPrimitive=none
        HiddenGame=true
        AlwaysLoadOnClient=false
        AlwaysLoadOnServer=false
    object end
    // Reference: SpriteComponent'Default__RB_CylindricalForceActor.Sprite'
    Components(1)=Sprite
    RemoteRole=ENetRole.ROLE_SimulatedProxy
    bNoDelete=true
    bAlwaysRelevant=true
    bOnlyDirtyReplication=true
    NetUpdateFrequency=0.10
}