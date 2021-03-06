/*******************************************************************************
 * LevelStreamingVolume generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class LevelStreamingVolume extends Volume
    native
    placeable
    hidecategories(Navigation,Object,Movement,Display,Advanced,Attachment,Collision,Volume);

enum EStreamingVolumeUsage
{
    SVB_Loading,
    SVB_LoadingAndVisibility,
    SVB_VisibilityBlockingOnLoad,
    SVB_BlockingOnLoad,
    SVB_LoadingNotVisible,
    SVB_MAX
};

struct CheckpointRecord
{
    var bool bDisabled;

    structdefaultproperties
    {
        bDisabled=false
    }
};

/** Levels affected by this level streaming volume. */
var() noimport const editconst array<editconst LevelStreaming> StreamingLevels;
/** If TRUE, this streaming volume should only be used for editor streaming level previs. */
var() bool bEditorPreVisOnly;
/**  
 *If TRUE, this streaming volume is ignored by the streaming volume code.  Used to either
 * disable a level streaming volume without disassociating it from the level, or to toggle
 * the control of a level's streaming between Kismet and volume streaming.
 */
var() bool bDisabled;
/** If TRUE, level will stream when closer than TestVolumeDistance to the volume. */
var() bool bTestDistanceToVolume;
/** Determines what this volume is used for, e.g. whether to control loading, loading and visibility or just visibilty (blocking on load) */
var() LevelStreamingVolume.EStreamingVolumeUsage StreamingUsage;
var deprecated LevelStreamingVolume.EStreamingVolumeUsage Usage;
/** If bTestDistanceToVolume is TRUE, level will stream in if closer than this to volume. */
var() float TestVolumeDistance;

simulated function OnToggle(SeqAct_Toggle Action)
{
    // End:0x46
    if(Action.InputLinks[0].bHasImpulse)
    {
        bDisabled = false;
    }
    // End:0xDB
    else
    {
        // End:0x8C
        if(Action.InputLinks[1].bHasImpulse)
        {
            bDisabled = true;
        }
        // End:0xDB
        else
        {
            // End:0xDB
            if(Action.InputLinks[2].bHasImpulse)
            {
                bDisabled = !bDisabled;
            }
        }
    }
    //return;    
}

function CreateCheckpointRecord(out CheckpointRecord Record)
{
    Record.bDisabled = bDisabled;
    //return;    
}

function ApplyCheckpointRecord(const out CheckpointRecord Record)
{
    bDisabled = Record.bDisabled;
    //return;    
}

defaultproperties
{
    StreamingUsage=EStreamingVolumeUsage.SVB_LoadingAndVisibility
    BrushColor=(R=255,G=165,B=0,A=255)
    bColored=true
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        CollideActors=false
        BlockNonZeroExtent=false
    object end
    // Reference: BrushComponent'Default__LevelStreamingVolume.BrushComponent0'
    BrushComponent=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        CollideActors=false
        BlockNonZeroExtent=false
    object end
    // Reference: BrushComponent'Default__LevelStreamingVolume.BrushComponent0'
    Components(0)=BrushComponent0
    bCollideActors=false
    bForceAllowKismetModification=true
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        CollideActors=false
        BlockNonZeroExtent=false
    object end
    // Reference: BrushComponent'Default__LevelStreamingVolume.BrushComponent0'
    CollisionComponent=BrushComponent0
    SupportedEvents(0)=class'SeqEvent_Touch'
}