/*******************************************************************************
 * PortalTeleporter generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PortalTeleporter extends SceneCapturePortalActor
    abstract
    native
    notplaceable
    hidecategories(Navigation);

/** destination portal */
var() PortalTeleporter SisterPortal;
/** resolution for texture render target; must be a power of 2 */
var() int TextureResolutionX;
/** resolution for texture render target; must be a power of 2 */
var() int TextureResolutionY;
var PortalMarker MyMarker;
/** whether or not encroachers (movers, vehicles, and such) can move this portal */
var() bool bMovablePortal;
var bool bAlwaysTeleportNonPawns;
var bool bCanTeleportVehicles;

// Export UPortalTeleporter::execTransformActor(FFrame&, void* const)
native final function bool TransformActor(Actor A);

// Export UPortalTeleporter::execTransformVectorDir(FFrame&, void* const)
native final function Vector TransformVectorDir(Vector V);

// Export UPortalTeleporter::execTransformHitLocation(FFrame&, void* const)
native final function Vector TransformHitLocation(Vector HitLocation);

// Export UPortalTeleporter::execCreatePortalTexture(FFrame&, void* const)
native final function TextureRenderTarget2D CreatePortalTexture();

simulated function bool StopsProjectile(Projectile P)
{
    return !TransformActor(P);
    //return ReturnValue;    
}

defaultproperties
{
    TextureResolutionX=256
    TextureResolutionY=256
    bAlwaysTeleportNonPawns=true
    begin object name=StaticMeshComponent2 class=StaticMeshComponent
        ReplacementPrimitive=none
        HiddenGame=false
        CollideActors=true
    object end
    // Reference: StaticMeshComponent'Default__PortalTeleporter.StaticMeshComponent2'
    StaticMesh=StaticMeshComponent2
    SceneCapture=SceneCapturePortalComponent'Default__PortalTeleporter.SceneCapturePortalComponent0'
    Components(0)=SceneCapturePortalComponent'Default__PortalTeleporter.SceneCapturePortalComponent0'
    begin object name=StaticMeshComponent1 class=StaticMeshComponent
        ReplacementPrimitive=none
    object end
    // Reference: StaticMeshComponent'Default__PortalTeleporter.StaticMeshComponent1'
    Components(1)=StaticMeshComponent1
    begin object name=StaticMeshComponent2 class=StaticMeshComponent
        ReplacementPrimitive=none
        HiddenGame=false
        CollideActors=true
    object end
    // Reference: StaticMeshComponent'Default__PortalTeleporter.StaticMeshComponent2'
    Components(2)=StaticMeshComponent2
    bWorldGeometry=true
    bMovable=false
    bCollideActors=true
    bBlockActors=true
    begin object name=StaticMeshComponent2 class=StaticMeshComponent
        ReplacementPrimitive=none
        HiddenGame=false
        CollideActors=true
    object end
    // Reference: StaticMeshComponent'Default__PortalTeleporter.StaticMeshComponent2'
    CollisionComponent=StaticMeshComponent2
}