/*******************************************************************************
 * KActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class KActor extends DynamicSMActor
    native(Physics)
    nativereplication
    placeable
    classgroup(Physics);

var() bool bDamageAppliesImpulse;
var() repnotify bool bWakeOnLevelStart;
var bool bCurrentSlide;
var bool bSlideActive;
/** Enable 'Stay upright' torque, that tries to keep Z axis of KActor pointing along world Z */
var(StayUprightSpring) bool bEnableStayUprightSpring;
/** If TRUE limit the maximum speed this object can move. */
var() bool bLimitMaxPhysicsVelocity;
var transient bool bNeedsRBStateReplication;
var bool bDisableClientSidePawnInteractions;
var export editinline ParticleSystemComponent ImpactEffectComponent;
var export editinline AudioComponent ImpactSoundComponent;
var export editinline AudioComponent ImpactSoundComponent2;
var float LastImpactTime;
var PhysEffectInfo ImpactEffectInfo;
var export editinline ParticleSystemComponent SlideEffectComponent;
var export editinline AudioComponent SlideSoundComponent;
var float LastSlideTime;
var PhysEffectInfo SlideEffectInfo;
/** Torque applied to try and keep KActor horizontal. */
var(StayUprightSpring) float StayUprightTorqueFactor;
/** Max torque that can be applied to try and keep KActor horizontal */
var(StayUprightSpring) float StayUprightMaxTorque;
/** If bLimitMaxPhysicsVelocity is TRUE, this is how fast the object can move. */
var() float MaxPhysicsVelocity;
var native const RigidBodyState RBState;
var native const float AngErrorAccumulator;
var repnotify Vector ReplicatedDrawScale3D;
var transient Vector InitialLocation;
var transient Rotator InitialRotation;

replication
{
    // Pos:0x000
    if(bNeedsRBStateReplication && Role == ROLE_Authority)
        RBState

    // Pos:0x020
    if(bNetInitial && Role == ROLE_Authority)
        ReplicatedDrawScale3D, bWakeOnLevelStart
}

// Export UKActor::execGetKActorPhysMaterial(FFrame&, void* const)
native final function PhysicalMaterial GetKActorPhysMaterial();

// Export UKActor::execResolveRBState(FFrame&, void* const)
native final function ResolveRBState();

simulated event PostBeginPlay()
{
    super.PostBeginPlay();
    // End:0x4B
    if(bWakeOnLevelStart && StaticMeshComponent != none)
    {
        StaticMeshComponent.WakeRigidBody();
    }
    // End:0x62
    else
    {
        bNeedsRBStateReplication = !bNoDelete;
    }
    ReplicatedDrawScale3D = DrawScale3D * 1000.0;
    // End:0xB9
    if((StaticMeshComponent != none) && StaticMeshComponent.bNotifyRigidBodyCollision)
    {
        SetPhysicalCollisionProperties();
    }
    InitialLocation = Location;
    InitialRotation = Rotation;
    // End:0x135
    if((bDisableClientSidePawnInteractions && Role != ROLE_Authority) && StaticMeshComponent != none)
    {
        StaticMeshComponent.SetRBCollidesWithChannel(2, false);
    }
    //return;    
}

simulated event FellOutOfWorld(class<DamageType> dmgType)
{
    ShutDown();
    super(Actor).FellOutOfWorld(dmgType);
    //return;    
}

simulated event Destroyed()
{
    // End:0x82
    if(ImpactEffectInfo.Sound != none)
    {
        // End:0x52
        if(ImpactSoundComponent != none)
        {
            ImpactSoundComponent.bAutoDestroy = true;
        }
        // End:0x82
        if(ImpactSoundComponent2 != none)
        {
            ImpactSoundComponent2.bAutoDestroy = true;
        }
    }
    // End:0xC5
    if(SlideEffectInfo.Sound != none)
    {
        SlideSoundComponent.bAutoDestroy = true;
    }
    super(Actor).Destroyed();
    //return;    
}

simulated function SetPhysicalCollisionProperties()
{
    local PhysicalMaterial PhysMat;

    PhysMat = GetKActorPhysMaterial();
    ImpactEffectInfo = PhysMat.FindPhysEffectInfo(0);
    SlideEffectInfo = PhysMat.FindPhysEffectInfo(1);
    // End:0x100
    if(ImpactEffectInfo.Effect != none)
    {
        ImpactEffectComponent = new (self) class'ParticleSystemComponent';
        ImpactEffectComponent.bAutoActivate = false;
        ImpactEffectComponent.SetTemplate(ImpactEffectInfo.Effect);
    }
    // End:0x1C8
    if(ImpactEffectInfo.Sound != none)
    {
        ImpactSoundComponent = new (self) class'AudioComponent';
        ImpactSoundComponent.SoundCue = ImpactEffectInfo.Sound;
        ImpactSoundComponent2 = new (self) class'AudioComponent';
        ImpactSoundComponent2.SoundCue = ImpactEffectInfo.Sound;
    }
    // End:0x25E
    if(SlideEffectInfo.Effect != none)
    {
        SlideEffectComponent = new (self) class'ParticleSystemComponent';
        SlideEffectComponent.bAutoActivate = false;
        SlideEffectComponent.SetTemplate(SlideEffectInfo.Effect);
    }
    // End:0x2D3
    if(SlideEffectInfo.Sound != none)
    {
        SlideSoundComponent = new (self) class'AudioComponent';
        SlideSoundComponent.SoundCue = SlideEffectInfo.Sound;
    }
    //return;    
}

simulated event SpawnedByKismet()
{
    // End:0x2C
    if(StaticMeshComponent.bNotifyRigidBodyCollision)
    {
        SetPhysicalCollisionProperties();
    }
    InitialLocation = Location;
    InitialRotation = Rotation;
    //return;    
}

simulated event ReplicatedEvent(name VarName)
{
    local Vector NewDrawScale3D;

    // End:0x47
    if(VarName == 'bWakeOnLevelStart')
    {
        // End:0x44
        if(bWakeOnLevelStart)
        {
            StaticMeshComponent.WakeRigidBody();
        }
    }
    // End:0xA1
    else
    {
        // End:0x8E
        if(VarName == 'ReplicatedDrawScale3D')
        {
            NewDrawScale3D = ReplicatedDrawScale3D / 1000.0;
            SetDrawScale3D(NewDrawScale3D);
        }
        // End:0xA1
        else
        {
            super.ReplicatedEvent(VarName);
        }
    }
    //return;    
}

event ApplyImpulse(Vector ImpulseDir, float ImpulseMag, Vector HitLocation, optional TraceHitInfo HitInfo, optional class<DamageType> DamageType)
{
    local Vector AppliedImpulse;

    AppliedImpulse = Normal(ImpulseDir) * ImpulseMag;
    // End:0xA8
    if(HitInfo.HitComponent != none)
    {
        HitInfo.HitComponent.AddImpulse(AppliedImpulse, HitLocation, HitInfo.BoneName);
    }
    // End:0xDB
    else
    {
        CollisionComponent.AddImpulse(AppliedImpulse, HitLocation);
    }
    //return;    
}

event TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, class<DamageType> DamageType, optional TraceHitInfo HitInfo, optional Actor DamageCauser)
{
    super(Actor).TakeDamage(Damage, EventInstigator, HitLocation, Momentum, DamageType, HitInfo, DamageCauser);
    // End:0x10A
    if(bDamageAppliesImpulse && DamageType.default.KDamageImpulse > float(0))
    {
        // End:0xBE
        if(VSize(Momentum) < 0.0010)
        {
            LogInternal("Zero momentum to KActor.TakeDamage");
            return;
        }
        ApplyImpulse(Momentum, DamageType.default.KDamageImpulse, HitLocation, HitInfo, DamageType);
    }
    //return;    
}

simulated function TakeRadiusDamage(Controller InstigatedBy, float BaseDamage, float DamageRadius, class<DamageType> DamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, optional float DamageFalloffExponent)
{
    local int Idx;
    local SeqEvent_TakeDamage DmgEvt;

    DamageFalloffExponent = 1.0;
    Idx = 0;
    J0x14:
    // End:0xAC [Loop If]
    if(Idx < GeneratedEvents.Length)
    {
        DmgEvt = SeqEvent_TakeDamage(GeneratedEvents[Idx]);
        // End:0x9E
        if(DmgEvt != none)
        {
            DmgEvt.HandleDamage(self, InstigatedBy, DamageType, int(BaseDamage));
        }
        ++ Idx;
        // [Loop Continue]
        goto J0x14;
    }
    // End:0x167
    if((bDamageAppliesImpulse && DamageType.default.RadialDamageImpulse > float(0)) && Role == ROLE_Authority)
    {
        CollisionComponent.AddRadialImpulse(HurtOrigin, DamageRadius, DamageType.default.RadialDamageImpulse, 1, DamageType.default.bRadialDamageVelChange);
    }
    //return;    
}

simulated function OnToggle(SeqAct_Toggle Action)
{
    // End:0x57
    if(Action.InputLinks[0].bHasImpulse)
    {
        StaticMeshComponent.WakeRigidBody();
    }
    //return;    
}

simulated function OnTeleport(SeqAct_Teleport InAction)
{
    local array<Object> objVars;
    local int Idx;
    local Actor destActor;

    InAction.GetObjectVars(objVars, "Destination");
    Idx = 0;
    J0x40:
    // End:0x9D [Loop If]
    if((Idx < objVars.Length) && destActor == none)
    {
        destActor = Actor(objVars[Idx]);
        ++ Idx;
        // [Loop Continue]
        goto J0x40;
    }
    // End:0x134
    if(destActor != none)
    {
        StaticMeshComponent.SetRBPosition(destActor.Location);
        StaticMeshComponent.SetRBRotation(destActor.Rotation);
        PlayTeleportEffect(false, true);
    }
    //return;    
}

simulated function Reset()
{
    StaticMeshComponent.SetRBLinearVelocity(vect(0.0, 0.0, 0.0));
    StaticMeshComponent.SetRBAngularVelocity(vect(0.0, 0.0, 0.0));
    StaticMeshComponent.SetRBPosition(InitialLocation);
    StaticMeshComponent.SetRBRotation(InitialRotation);
    // End:0xDE
    if(!bWakeOnLevelStart)
    {
        StaticMeshComponent.PutRigidBodyToSleep();
    }
    // End:0xFE
    else
    {
        StaticMeshComponent.WakeRigidBody();
    }
    ResolveRBState();
    bForceNetUpdate = true;
    super(Actor).Reset();
    //return;    
}

defaultproperties
{
    bDamageAppliesImpulse=true
    bNeedsRBStateReplication=true
    bDisableClientSidePawnInteractions=true
    StayUprightTorqueFactor=1000.0
    StayUprightMaxTorque=1500.0
    MaxPhysicsVelocity=350.0
    ReplicatedDrawScale3D=(X=1000.0,Y=1000.0,Z=1000.0)
    begin object name=StaticMeshComponent0 class=StaticMeshComponent
        WireframeColor=(R=0,G=255,B=128,A=255)
        ReplacementPrimitive=none
        LightEnvironment=DynamicLightEnvironmentComponent'Default__KActor.MyLightEnvironment'
        RBChannel=ERBCollisionChannel.RBCC_GameplayPhysics
        BlockRigidBody=true
        bBlockFootPlacement=false
        RBCollideWithChannels=(Default=true,GameplayPhysics=true,EffectPhysics=true,BlockingVolume=true)
    object end
    // Reference: StaticMeshComponent'Default__KActor.StaticMeshComponent0'
    StaticMeshComponent=StaticMeshComponent0
    LightEnvironment=DynamicLightEnvironmentComponent'Default__KActor.MyLightEnvironment'
    bPawnCanBaseOn=false
    bSafeBaseIfAsleep=true
    Components(0)=DynamicLightEnvironmentComponent'Default__KActor.MyLightEnvironment'
    begin object name=StaticMeshComponent0 class=StaticMeshComponent
        WireframeColor=(R=0,G=255,B=128,A=255)
        ReplacementPrimitive=none
        LightEnvironment=DynamicLightEnvironmentComponent'Default__KActor.MyLightEnvironment'
        RBChannel=ERBCollisionChannel.RBCC_GameplayPhysics
        BlockRigidBody=true
        bBlockFootPlacement=false
        RBCollideWithChannels=(Default=true,GameplayPhysics=true,EffectPhysics=true,BlockingVolume=true)
    object end
    // Reference: StaticMeshComponent'Default__KActor.StaticMeshComponent0'
    Components(1)=StaticMeshComponent0
    Physics=EPhysics.PHYS_RigidBody
    TickGroup=ETickingGroup.TG_PostAsyncWork
    bNoDelete=true
    bAlwaysRelevant=true
    bUpdateSimulatedPosition=true
    bNetInitialRotation=true
    bBlocksNavigation=true
    bCollideActors=true
    bBlockActors=true
    bProjTarget=true
    bBlocksTeleport=true
    bNoEncroachCheck=true
    begin object name=StaticMeshComponent0 class=StaticMeshComponent
        WireframeColor=(R=0,G=255,B=128,A=255)
        ReplacementPrimitive=none
        LightEnvironment=DynamicLightEnvironmentComponent'Default__KActor.MyLightEnvironment'
        RBChannel=ERBCollisionChannel.RBCC_GameplayPhysics
        BlockRigidBody=true
        bBlockFootPlacement=false
        RBCollideWithChannels=(Default=true,GameplayPhysics=true,EffectPhysics=true,BlockingVolume=true)
    object end
    // Reference: StaticMeshComponent'Default__KActor.StaticMeshComponent0'
    CollisionComponent=StaticMeshComponent0
    SupportedEvents(0)=class'SeqEvent_Touch'
    SupportedEvents(1)=class'SeqEvent_Destroyed'
    SupportedEvents(2)=class'SeqEvent_TakeDamage'
    SupportedEvents(3)=class'SeqEvent_HitWall'
    SupportedEvents(4)=class'SeqEvent_AnimNotify'
    SupportedEvents(5)=class'SeqEvent_MobileTouch'
    SupportedEvents(6)=class'SeqEvent_RigidBodyCollision'
}