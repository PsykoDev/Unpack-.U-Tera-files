/*******************************************************************************
 * GameCrowdInteractionPoint generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GameCrowdInteractionPoint extends Actor
    abstract
    native
    placeable
    hidecategories(Navigation,Advanced,Collision,Display,Actor,Movement,Physics)
    classgroup(Crowd);

/** If this interactionpoint is currently enabled */
var() bool bIsEnabled;
/** Cylinder component */
var() export editinline CylinderComponent CylinderComponent;

replication
{
    // Pos:0x000
    if(bNoDelete)
        bIsEnabled
}

function OnToggle(SeqAct_Toggle Action)
{
    // End:0x46
    if(Action.InputLinks[0].bHasImpulse)
    {
        bIsEnabled = true;
    }
    // End:0xDB
    else
    {
        // End:0x8C
        if(Action.InputLinks[1].bHasImpulse)
        {
            bIsEnabled = false;
        }
        // End:0xDB
        else
        {
            // End:0xDB
            if(Action.InputLinks[2].bHasImpulse)
            {
                bIsEnabled = !bIsEnabled;
            }
        }
    }
    ForceNetRelevant();
    //return;    
}

defaultproperties
{
    bIsEnabled=true
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=40.0
        CollisionRadius=200.0
        CylinderColor=(R=0,G=255,B=0,A=255)
        bDrawBoundingBox=false
        bDrawNonColliding=true
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__GameCrowdInteractionPoint.CollisionCylinder'
    CylinderComponent=CollisionCylinder
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=40.0
        CollisionRadius=200.0
        CylinderColor=(R=0,G=255,B=0,A=255)
        bDrawBoundingBox=false
        bDrawNonColliding=true
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__GameCrowdInteractionPoint.CollisionCylinder'
    Components(0)=CollisionCylinder
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.Crowd.T_Crowd_Behavior'
        ReplacementPrimitive=none
        HiddenGame=true
        AlwaysLoadOnClient=false
        AlwaysLoadOnServer=false
        Scale=0.50
    object end
    // Reference: SpriteComponent'Default__GameCrowdInteractionPoint.Sprite'
    Components(1)=Sprite
    TickGroup=ETickingGroup.TG_DuringAsyncWork
    bNoDelete=true
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=40.0
        CollisionRadius=200.0
        CylinderColor=(R=0,G=255,B=0,A=255)
        bDrawBoundingBox=false
        bDrawNonColliding=true
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__GameCrowdInteractionPoint.CollisionCylinder'
    CollisionComponent=CollisionCylinder
}