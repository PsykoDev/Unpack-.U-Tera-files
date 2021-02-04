/*******************************************************************************
 * NxForceField generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class NxForceField extends Actor
    abstract
    native(ForceField)
    notplaceable
    hidecategories(Navigation)
    classgroup(Physics);

/** Channel id, used to identify which force field exclude volumes apply to this force field */
var() int ExcludeChannel;
/** Indicates whether the force is active at the moment. */
var() bool bForceActive;
/** Which types of object to apply this force field to */
var() const RBCollisionChannelContainer CollideWithChannels;
/** enum indicating what collision filtering channel this force field should be in */
var() const PrimitiveComponent.ERBCollisionChannel RBChannel;
var native const transient Pointer ForceField;
var native const transient array<Pointer> ConvexMeshes;
var native const transient array<Pointer> ExclusionShapes;
var native const transient array<Pointer> ExclusionShapePoses;
var native const transient Pointer U2NRotation;
var native const int SceneIndex;

replication
{
    // Pos:0x000
    if(bNetDirty)
        bForceActive
}

// Export UNxForceField::execDoInitRBPhys(FFrame&, void* const)
native function DoInitRBPhys();

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
    bForceActive=true
    CollideWithChannels=(Default=true,Nothing=false,Pawn=true,Vehicle=true,Water=true,GameplayPhysics=true,EffectPhysics=true,Untitled1=true,Untitled2=true,Untitled3=true,Untitled4=false,Cloth=true,FluidDrain=true,SoftBody=true,FracturedMeshPart=false,BlockingVolume=false,DeadPawn=false,Clothing=false,ClothingCollision=false)
    RBChannel=ERBCollisionChannel.RBCC_Nothing
    RemoteRole=ENetRole.ROLE_SimulatedProxy
    bNoDelete=true
    bAlwaysRelevant=true
    bOnlyDirtyReplication=true
    NetUpdateFrequency=0.10
}