/*******************************************************************************
 * NavMeshObstacle generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class NavMeshObstacle extends Actor
    native(AI)
    placeable
    hidecategories(Navigation)
    implements(Interface_NavMeshPathObstacle);

struct CheckpointRecord
{
    var bool bEnabled;

    structdefaultproperties
    {
        bEnabled=false
    }
};

var private native const noexport Pointer VfTable_IInterface_NavMeshPathObstacle;
var() bool bEnabled;
var() bool bPreserveInternalGeo;

event bool GetObstacleBoudingShape(out array<Vector> Shape)
{
    local float Scale;
    local Vector Offset;

    Scale = 200.0 * DrawScale;
    Offset.X = Scale * DrawScale3D.X;
    Offset.Y = Scale * DrawScale3D.Y;
    Shape.AddItem(Location + (Offset >> Rotation));
    Offset.X = -Scale * DrawScale3D.X;
    Offset.Y = Scale * DrawScale3D.Y;
    Shape.AddItem(Location + (Offset >> Rotation));
    Offset.X = -Scale * DrawScale3D.X;
    Offset.Y = -Scale * DrawScale3D.Y;
    Shape.AddItem(Location + (Offset >> Rotation));
    Offset.X = Scale * DrawScale3D.X;
    Offset.Y = -Scale * DrawScale3D.Y;
    Shape.AddItem(Location + (Offset >> Rotation));
    return true;
    //return ReturnValue;    
}

// Export UNavMeshObstacle::execRegisterObstacle(FFrame&, void* const)
native function RegisterObstacle();

// Export UNavMeshObstacle::execUnRegisterObstacle(FFrame&, void* const)
native function UnRegisterObstacle();

simulated function PostBeginPlay()
{
    super.PostBeginPlay();
    // End:0x21
    if(bEnabled)
    {
        RegisterObstacle();
    }
    //return;    
}

simulated function OnToggle(SeqAct_Toggle Action)
{
    // End:0x46
    if(Action.InputLinks[0].bHasImpulse)
    {
        bEnabled = true;
    }
    // End:0xDB
    else
    {
        // End:0x8C
        if(Action.InputLinks[1].bHasImpulse)
        {
            bEnabled = false;
        }
        // End:0xDB
        else
        {
            // End:0xDB
            if(Action.InputLinks[2].bHasImpulse)
            {
                bEnabled = !bEnabled;
            }
        }
    }
    SetEnabled(bEnabled);
    //return;    
}

function SetEnabled(bool bInEnabled)
{
    // End:0x1A
    if(bInEnabled)
    {
        RegisterObstacle();
    }
    // End:0x24
    else
    {
        UnRegisterObstacle();
    }
    //return;    
}

function CreateCheckpointRecord(out CheckpointRecord Record)
{
    Record.bEnabled = bEnabled;
    //return;    
}

function ApplyCheckpointRecord(const out CheckpointRecord Record)
{
    SetEnabled(Record.bEnabled);
    //return;    
}

defaultproperties
{
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.S_Keypoint'
        SpriteCategoryName=Navigation
        ReplacementPrimitive=none
        HiddenGame=true
        AlwaysLoadOnClient=false
        AlwaysLoadOnServer=false
    object end
    // Reference: SpriteComponent'Default__NavMeshObstacle.Sprite'
    Components(0)=Sprite
    begin object name=DrawBox0 class=DrawBoxComponent
        BoxColor=(R=64,G=70,B=255,A=255)
        ReplacementPrimitive=none
    object end
    // Reference: DrawBoxComponent'Default__NavMeshObstacle.DrawBox0'
    Components(1)=DrawBox0
}