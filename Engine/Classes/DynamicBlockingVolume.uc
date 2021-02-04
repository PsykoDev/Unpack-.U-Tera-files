/*******************************************************************************
 * DynamicBlockingVolume generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DynamicBlockingVolume extends BlockingVolume
    native
    placeable
    hidecategories(Navigation,Object,Display);

struct CheckpointRecord
{
    var Vector Location;
    var Rotator Rotation;
    var bool bCollideActors;
    var bool bBlockActors;
    var bool bNeedsReplication;

    structdefaultproperties
    {
        Location=(X=0.0,Y=0.0,Z=0.0)
        Rotation=(Pitch=0,Yaw=0,Roll=0)
        bCollideActors=false
        bBlockActors=false
        bNeedsReplication=false
    }
};

/** Is the volume enabled by default? */
var() bool bEnabled;

simulated event PostBeginPlay()
{
    super(Volume).PostBeginPlay();
    SetCollision(bEnabled, bBlockActors);
    //return;    
}

function CreateCheckpointRecord(out CheckpointRecord Record)
{
    Record.Location = Location;
    Record.Rotation = Rotation;
    Record.bCollideActors = bCollideActors;
    Record.bBlockActors = bBlockActors;
    Record.bNeedsReplication = RemoteRole != ROLE_None;
    //return;    
}

function ApplyCheckpointRecord(const out CheckpointRecord Record)
{
    // End:0x4D
    if(!bHardAttach)
    {
        SetLocation(Record.Location);
        SetRotation(Record.Rotation);
    }
    CollisionComponent.SetActorCollision(true, true);
    CollisionComponent.SetTraceBlocking(false, true);
    CollisionComponent.SetBlockRigidBody(Record.bCollideActors);
    SetCollision(Record.bCollideActors, Record.bBlockActors);
    // End:0x134
    if(Record.bNeedsReplication)
    {
        ForceNetRelevant();
    }
    //return;    
}

defaultproperties
{
    bEnabled=true
    BrushColor=(R=255,G=255,B=100,A=255)
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__DynamicBlockingVolume.BrushComponent0'
    BrushComponent=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__DynamicBlockingVolume.BrushComponent0'
    Components(0)=BrushComponent0
    Physics=EPhysics.PHYS_Interpolating
    bStatic=false
    bWorldGeometry=false
    bAlwaysRelevant=true
    bOnlyDirtyReplication=true
    bMovable=true
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__DynamicBlockingVolume.BrushComponent0'
    CollisionComponent=BrushComponent0
}