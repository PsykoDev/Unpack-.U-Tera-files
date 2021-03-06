/*******************************************************************************
 * SceneCaptureReflectActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SceneCaptureReflectActor extends SceneCaptureActor
    native
    placeable
    hidecategories(Navigation);

/** draws the face using a static mesh */
var() const export editinline StaticMeshComponent StaticMesh;
var transient MaterialInstanceConstant ReflectMaterialInst;

defaultproperties
{
    begin object name=StaticMeshComponent0 class=StaticMeshComponent
        StaticMesh=StaticMesh'EditorMeshes.TexPropPlane'
        ReplacementPrimitive=none
        HiddenGame=true
        CastShadow=false
        bAcceptsLights=false
        CollideActors=false
        Scale3D=(X=4.0,Y=4.0,Z=4.0)
    object end
    // Reference: StaticMeshComponent'Default__SceneCaptureReflectActor.StaticMeshComponent0'
    StaticMesh=StaticMeshComponent0
    begin object name=SceneCaptureReflectComponent0 class=SceneCaptureReflectComponent
        bSkipUpdateIfTextureUsersOccluded=true
    object end
    // Reference: SceneCaptureReflectComponent'Default__SceneCaptureReflectActor.SceneCaptureReflectComponent0'
    SceneCapture=SceneCaptureReflectComponent0
    begin object name=Sprite class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__SceneCaptureReflectActor.Sprite'
    Components(0)=Sprite
    begin object name=SceneCaptureReflectComponent0 class=SceneCaptureReflectComponent
        bSkipUpdateIfTextureUsersOccluded=true
    object end
    // Reference: SceneCaptureReflectComponent'Default__SceneCaptureReflectActor.SceneCaptureReflectComponent0'
    Components(1)=SceneCaptureReflectComponent0
    begin object name=StaticMeshComponent0 class=StaticMeshComponent
        StaticMesh=StaticMesh'EditorMeshes.TexPropPlane'
        ReplacementPrimitive=none
        HiddenGame=true
        CastShadow=false
        bAcceptsLights=false
        CollideActors=false
        Scale3D=(X=4.0,Y=4.0,Z=4.0)
    object end
    // Reference: StaticMeshComponent'Default__SceneCaptureReflectActor.StaticMeshComponent0'
    Components(2)=StaticMeshComponent0
    Rotation=(Pitch=16384,Yaw=0,Roll=0)
}