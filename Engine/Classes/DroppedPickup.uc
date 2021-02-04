/*******************************************************************************
 * DroppedPickup generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DroppedPickup extends Actor
    native
    notplaceable
    hidecategories(Navigation);

var Inventory Inventory;
var repnotify class<Inventory> InventoryClass;
var NavigationPoint PickupCache;
var repnotify bool bFadeOut;

replication
{
    // Pos:0x000
    if(Role == ROLE_Authority)
        InventoryClass, bFadeOut
}

// Export UDroppedPickup::execAddToNavigation(FFrame&, void* const)
native final function AddToNavigation();

// Export UDroppedPickup::execRemoveFromNavigation(FFrame&, void* const)
native final function RemoveFromNavigation();

event Destroyed()
{
    // End:0x27
    if(Inventory != none)
    {
        Inventory.Destroy();
    }
    //return;    
}

simulated event ReplicatedEvent(name VarName)
{
    // End:0x6A
    if(VarName == 'InventoryClass')
    {
        SetPickupMesh(InventoryClass.default.DroppedPickupMesh);
        SetPickupParticles(InventoryClass.default.DroppedPickupParticles);
    }
    // End:0xA5
    else
    {
        // End:0x92
        if(VarName == 'bFadeOut')
        {
            GotoState('FadeOut');
        }
        // End:0xA5
        else
        {
            super.ReplicatedEvent(VarName);
        }
    }
    //return;    
}

function Reset()
{
    Destroy();
    //return;    
}

simulated event SetPickupMesh(PrimitiveComponent PickupMesh)
{
    local editinline ActorComponent Comp;

    // End:0x82
    if((PickupMesh != none) && WorldInfo.NetMode != NM_DedicatedServer)
    {
        Comp = new (self) PickupMesh.Class (PickupMesh);
        AttachComponent(Comp);
    }
    //return;    
}

simulated event SetPickupParticles(ParticleSystemComponent PickupParticles)
{
    local editinline ParticleSystemComponent Comp;

    // End:0xA3
    if((PickupParticles != none) && WorldInfo.NetMode != NM_DedicatedServer)
    {
        Comp = new (self) PickupParticles.Class (PickupParticles);
        AttachComponent(Comp);
        Comp.SetActive(true);
    }
    //return;    
}

event EncroachedBy(Actor Other)
{
    Destroy();
    //return;    
}

function float DetourWeight(Pawn Other, float PathWeight)
{
    return Inventory.DetourWeight(Other, PathWeight);
    //return ReturnValue;    
}

event Landed(Vector HitNormal, Actor FloorActor)
{
    bForceNetUpdate = true;
    bNetDirty = true;
    NetUpdateFrequency = 3.0;
    AddToNavigation();
    //return;    
}

function GiveTo(Pawn P)
{
    // End:0x6A
    if(Inventory != none)
    {
        Inventory.AnnouncePickup(P);
        Inventory.super(DroppedPickup).GiveTo(P);
        Inventory = none;
    }
    PickedUpBy(P);
    //return;    
}

function PickedUpBy(Pawn P)
{
    Destroy();
    //return;    
}

function RecheckValidTouch()
{
    //return;    
}

auto state Pickup
{
    function bool ValidTouch(Pawn Other)
    {
        // End:0x83
        if(((Other == none) || !Other.bCanPickupInventory) || (Other.DrivenVehicle == none) && Other.Controller == none)
        {
            return false;
        }
        // End:0xD8
        if(((Physics == 2) && Other == Instigator) && Velocity.Z > float(0))
        {
            return false;
        }
        // End:0x11E
        if(!FastTrace(Other.Location, Location))
        {
            SetTimer(0.50, false, 'RecheckValidTouch');
            return false;
        }
        // End:0x17F
        if(WorldInfo.Game.PickupQuery(Other, Inventory.Class, self))
        {
            return true;
        }
        return false;
        //return ReturnValue;        
    }

    function RecheckValidTouch()
    {
        CheckTouching();
        //return;        
    }

    event Touch(Actor Other, PrimitiveComponent OtherComp, Vector HitLocation, Vector HitNormal)
    {
        local Pawn P;

        P = Pawn(Other);
        // End:0x56
        if((P != none) && ValidTouch(P))
        {
            GiveTo(P);
        }
        //return;        
    }

    event Timer()
    {
        GotoState('FadeOut');
        //return;        
    }

    function CheckTouching()
    {
        local Pawn P;

        // End:0x43
        foreach TouchingActors(class'Pawn', P)
        {
            Touch(P, none, Location, vect(0.0, 0.0, 1.0));            
        }        
        //return;        
    }

    event BeginState(name PreviousStateName)
    {
        AddToNavigation();
        // End:0x31
        if(LifeSpan > 0.0)
        {
            SetTimer(LifeSpan - float(1), false);
        }
        //return;        
    }

    event EndState(name NextStateName)
    {
        RemoveFromNavigation();
        //return;        
    }

Begin:
    CheckTouching();
    stop;        
}

state FadeOut extends Pickup
{
    simulated event BeginState(name PreviousStateName)
    {
        bFadeOut = true;
        RotationRate.Yaw = 60000;
        SetPhysics(5);
        LifeSpan = 1.0;
        //return;        
    }
    stop;    
}

defaultproperties
{
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.S_Inventory'
        SpriteCategoryName=Inventory
        ReplacementPrimitive=none
        HiddenGame=true
        AlwaysLoadOnClient=false
        AlwaysLoadOnServer=false
    object end
    // Reference: SpriteComponent'Default__DroppedPickup.Sprite'
    Components(0)=Sprite
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=20.0
        CollisionRadius=30.0
        ReplacementPrimitive=none
        CollideActors=true
    object end
    // Reference: CylinderComponent'Default__DroppedPickup.CollisionCylinder'
    Components(1)=CollisionCylinder
    RemoteRole=ENetRole.ROLE_SimulatedProxy
    bIgnoreRigidBodyPawns=true
    bOrientOnSlope=true
    bUpdateSimulatedPosition=true
    bOnlyDirtyReplication=true
    bShouldBaseAtStartup=true
    bCollideActors=true
    bCollideWorld=true
    NetUpdateFrequency=8.0
    NetPriority=1.40
    LifeSpan=16.0
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=20.0
        CollisionRadius=30.0
        ReplacementPrimitive=none
        CollideActors=true
    object end
    // Reference: CylinderComponent'Default__DroppedPickup.CollisionCylinder'
    CollisionComponent=CollisionCylinder
    RotationRate=(Pitch=0,Yaw=5000,Roll=0)
}