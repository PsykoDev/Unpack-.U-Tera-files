/*******************************************************************************
 * LandscapeGizmoActiveActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class LandscapeGizmoActiveActor extends LandscapeGizmoActor
    native(Terrain)
    notplaceable
    hidecategories(Navigation);

enum ELandscapeGizmoType
{
    LGT_None,
    LGT_Height,
    LGT_Weight,
    LGT_MAX
};

struct native GizmoSelectData
{
    var editoronly float Ratio;
    var editoronly float HeightData;
    var editoronly native map<0, 0> WeightDataMap;

    structdefaultproperties
    {
        Ratio=0.0
        HeightData=0.0
    }
};

var editoronly transient LandscapeGizmoActiveActor.ELandscapeGizmoType DataType;
var private native const map<0, 0> SelectedData;
var editoronly Texture2D GizmoTexture;
var editoronly Vector2D TextureScale;
var editoronly array<editoronly Vector> SampledHeight;
var editoronly array<editoronly Vector> SampledNormal;
var editoronly int SampleSizeX;
var editoronly int SampleSizeY;
var editoronly float CachedWidth;
var editoronly float CachedHeight;
var editoronly float CachedScaleXY;
var editoronly transient Vector FrustumVerts[8];
var editoronly Material GizmoMaterial;
var editoronly MaterialInstance GizmoDataMaterial;
var editoronly Material GizmoMeshMaterial;
var editoronly Material GizmoMeshMaterial2;
/** only for showing LayerNames currently contained... */
var() editoronly editconst array<editoronly editconst name> LayerNames;

defaultproperties
{
    GizmoMaterial=Material'EditorLandscapeResources.LandscapeGizmo_Mat'
    GizmoDataMaterial=MaterialInstanceConstant'EditorLandscapeResources.LandscapeGizmo_Mat_Copied'
    GizmoMeshMaterial=Material'EditorLandscapeResources.LandscapeGizmoHeight_Mat'
    GizmoMeshMaterial2=Material'EditorLandscapeResources.LandscapeGizmoHeight_UnderMat'
    begin object name=GizmoRenderer class=LandscapeGizmoRenderComponent
        ReplacementPrimitive=none
    object end
    // Reference: LandscapeGizmoRenderComponent'Default__LandscapeGizmoActiveActor.GizmoRenderer'
    Components(0)=GizmoRenderer
    bEditable=true
}