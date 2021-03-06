/*******************************************************************************
 * Trigger generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Trigger extends Actor
    native
    placeable
    hidecategories(Navigation)
    classgroup(Common);

struct CheckpointRecord
{
    var bool bCollideActors;

    structdefaultproperties
    {
        bCollideActors=false
    }
};

/** Base cylinder component for collision */
var() const editconst export editinline CylinderComponent CylinderComponent;
var bool bRecentlyTriggered;
/** how long bRecentlyTriggered should stay set after each triggering */
var() float AITriggerDelay;

simulated event PostBeginPlay()
{
    super.PostBeginPlay();
    //return;    
}

event Touch(Actor Other, PrimitiveComponent OtherComp, Vector HitLocation, Vector HitNormal)
{
    // End:0x22
    if(FindEventsOfClass(class'SeqEvent_Touch'))
    {
        NotifyTriggered();
    }
    //return;    
}

function NotifyTriggered()
{
    bRecentlyTriggered = true;
    SetTimer(AITriggerDelay, false, 'UnTrigger');
    //return;    
}

function UnTrigger()
{
    bRecentlyTriggered = false;
    //return;    
}

simulated function bool StopsProjectile(Projectile P)
{
    return bBlockActors;
    //return ReturnValue;    
}

function bool ShouldSaveForCheckpoint()
{
    return bStatic || bNoDelete;
    //return ReturnValue;    
}

function CreateCheckpointRecord(out CheckpointRecord Record)
{
    Record.bCollideActors = bCollideActors;
    //return;    
}

function ApplyCheckpointRecord(const out CheckpointRecord Record)
{
    SetCollision(Record.bCollideActors, bBlockActors, bIgnoreEncroachers);
    ForceNetRelevant();
    //return;    
}

defaultproperties
{
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=40.0
        CollisionRadius=40.0
        bAlwaysRenderIfSelected=true
        ReplacementPrimitive=none
        CollideActors=true
    object end
    // Reference: CylinderComponent'Default__Trigger.CollisionCylinder'
    CylinderComponent=CollisionCylinder
    AITriggerDelay=2.0
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.S_Trigger'
        SpriteCategoryName=Triggers
        ReplacementPrimitive=none
        AlwaysLoadOnClient=false
        AlwaysLoadOnServer=false
    object end
    // Reference: SpriteComponent'Default__Trigger.Sprite'
    Components(0)=Sprite
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=40.0
        CollisionRadius=40.0
        bAlwaysRenderIfSelected=true
        ReplacementPrimitive=none
        CollideActors=true
    object end
    // Reference: CylinderComponent'Default__Trigger.CollisionCylinder'
    Components(1)=CollisionCylinder
    bHidden=true
    bNoDelete=true
    bCollideActors=true
    bProjTarget=true
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=40.0
        CollisionRadius=40.0
        bAlwaysRenderIfSelected=true
        ReplacementPrimitive=none
        CollideActors=true
    object end
    // Reference: CylinderComponent'Default__Trigger.CollisionCylinder'
    CollisionComponent=CollisionCylinder
    SupportedEvents(0)=class'SeqEvent_Touch'
    SupportedEvents(1)=class'SeqEvent_Destroyed'
    SupportedEvents(2)=class'SeqEvent_TakeDamage'
    SupportedEvents(3)=class'SeqEvent_HitWall'
    SupportedEvents(4)=class'SeqEvent_AnimNotify'
    SupportedEvents(5)=class'SeqEvent_MobileTouch'
    SupportedEvents(6)=class'SeqEvent_Used'
}