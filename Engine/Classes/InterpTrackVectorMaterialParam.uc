/*******************************************************************************
 * InterpTrackVectorMaterialParam generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class InterpTrackVectorMaterialParam extends InterpTrackVectorBase
    native(Interpolation)
    collapsecategories
    hidecategories(Object);

/**  
 *materials whose parameters we want to change and the references to those materials
 * that need to be given MICs in the same level, compiled at save time
 */
var() const array<MaterialReferenceList> Materials;
/** OR use a material referenced in this Matinee Group actor's Materials array with these indexes */
var() const array<int> MaterialIdx;
var const deprecated MaterialInterface Material;
/** Name of parameter in the MaterialInstance which this track will modify over time. */
var() name ParamName;
var transient bool bNeedsMaterialRefsUpdate;

defaultproperties
{
    TrackInstClass=class'InterpTrackInstVectorMaterialParam'
    TrackTitle="Vector Material Param"
}