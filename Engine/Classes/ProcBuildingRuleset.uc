/*******************************************************************************
 * ProcBuildingRuleset generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ProcBuildingRuleset extends Object
    native(ProcBuilding)
    hidecategories(Object);

enum EProcBuildingAxis
{
    EPBAxis_X,
    EPBAxis_Z,
    EPBAxis_MAX
};

struct native PBVariationInfo
{
    /** Name of this variation */
    var() name VariationName;
    /** If TRUE, meshes are placed on top of simple face poly, rather than making hole for meshes. */
    var() bool bMeshOnTopOfFacePoly;

    structdefaultproperties
    {
        VariationName=None
        bMeshOnTopOfFacePoly=false
    }
};

struct native PBParamSwatch
{
    /** Name of this swatch */
    var() name SwatchName;
    /** Set of parameters that should be applied when this swatch is selected for a building */
    var() array<PBMaterialParam> Params;

    structdefaultproperties
    {
        SwatchName=None
        Params=none
    }
};

var export editinline PBRuleNodeBase RootRule;
var editoronly transient bool bBeingEdited;
/** Whether to have any 'interior' texture on the LOD building windows */
var(LOD) bool bEnableInteriorTexture;
/** If TRUE, roof only displays in when building drops to low-detail version */
var(LOD) bool bLODOnlyRoof;
/** If TRUE, then pick a random swatch if a building is currently None (or not supported by current ruleset) */
var() bool bPickRandomSwatch;
/** Material applied to roof surface by default (can be overridden) */
var(Roof) MaterialInterface DefaultRoofMaterial;
/** Material applied to floor surface by default (can be overridden) */
var(Floor) MaterialInterface DefaultFloorMaterial;
/** Material applied to non-rectangular surfaces by default (can be overridden) */
var() MaterialInterface DefaultNonRectWallMaterial;
/** Offset applied to floor poly if at very top of overall building */
var(Roof) float RoofZOffset;
/** Offset applied to roof poly if not at very top of overall building */
var(Roof) float NotRoofZOffset;
/** Offset applied to floor poly if at very bottom of overall building */
var(Floor) float FloorZOffset;
/** Offset applied to floor poly if not at very bottom of overall building */
var(Floor) float NotFloorZOffset;
/** Amount to 'pull in' vertices of the generated roof poly. */
var(Roof) float RoofPolyInset;
/** Amount to 'pull in' vertices of the generated floor poly. */
var(Floor) float FloorPolyInset;
/** Amount of specular to apply to low LOD building material */
var(LOD) float BuildingLODSpecular;
/** How much to raise top of scopes that meet the roof of the building, forming a short wall around the roof. */
var(Roof) float RoofEdgeScopeRaise;
/** Cubemap texture to use for the LOD version of the building. */
var(LOD) Texture LODCubemap;
/** Texture to use for 'interior' of LOD building windows */
var(LOD) Texture InteriorTexture;
/** Array of 'variations' supported within this ruleset */
var() array<PBVariationInfo> Variations;
/** Pre-defined, names 'swatches' (or sets) of parameters that can be selected on a building */
var() array<PBParamSwatch> ParamSwatches;
var editoronly array<editoronly PBRuleNodeComment> Comments;

defaultproperties
{
    bEnableInteriorTexture=true
    BuildingLODSpecular=2.0
}