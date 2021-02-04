/*******************************************************************************
 * GamePawn generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GamePawn extends Pawn
    abstract
    native
    nativereplication
    config(Game)
    hidecategories(Navigation);

var transient bool bLastHitWasHeadShot;
var bool bRespondToExplosions;

replication
{
    // Pos:0x000
    if(Role == ROLE_Authority)
        bLastHitWasHeadShot
}

simulated event UpdateShadowSettings(bool bInWantShadow)
{
    local bool bNewCastShadow, bNewCastDynamicShadow;

    // End:0x16F
    if(Mesh != none)
    {
        bNewCastShadow = default.Mesh.CastShadow && bInWantShadow;
        bNewCastDynamicShadow = default.Mesh.bCastDynamicShadow && bInWantShadow;
        // End:0x16F
        if((bNewCastShadow != Mesh.CastShadow) || bNewCastDynamicShadow != Mesh.bCastDynamicShadow)
        {
            Mesh.CastShadow = bNewCastShadow;
            Mesh.bCastDynamicShadow = bNewCastDynamicShadow;
            // End:0x165
            if(WorldInfo.bAggressiveLOD == true)
            {
                ReattachMesh();
            }
            // End:0x16F
            else
            {
                ReattachMeshWithoutBeingSeen();
            }
        }
    }
    //return;    
}

simulated function ReattachMesh()
{
    ClearTimer('ReattachMeshWithoutBeingSeen');
    ReattachComponent(Mesh);
    //return;    
}

simulated function ReattachMeshWithoutBeingSeen()
{
    // End:0x54
    if(LastRenderTime > (WorldInfo.TimeSeconds - 1.0))
    {
        SetTimer(0.50 + (FRand() * 0.50), false, 'ReattachMeshWithoutBeingSeen');
    }
    // End:0x5E
    else
    {
        ReattachMesh();
    }
    //return;    
}

defaultproperties
{
    begin object name=CollisionCylinder class=CylinderComponent
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__GamePawn.CollisionCylinder'
    CylinderComponent=CollisionCylinder
    begin object name=Sprite class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__GamePawn.Sprite'
    Components(0)=Sprite
    begin object name=CollisionCylinder class=CylinderComponent
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__GamePawn.CollisionCylinder'
    Components(1)=CollisionCylinder
    begin object name=Arrow class=ArrowComponent
        ReplacementPrimitive=none
    object end
    // Reference: ArrowComponent'Default__GamePawn.Arrow'
    Components(2)=Arrow
    bCanBeAdheredTo=true
    bCanBeFrictionedTo=true
    begin object name=CollisionCylinder class=CylinderComponent
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__GamePawn.CollisionCylinder'
    CollisionComponent=CollisionCylinder
}