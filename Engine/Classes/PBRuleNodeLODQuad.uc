/*******************************************************************************
 * PBRuleNodeLODQuad generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PBRuleNodeLODQuad extends PBRuleNodeBase
    native(ProcBuilding)
    editinlinenew
    collapsecategories
    hidecategories(Object,Object);

/** This controls how far away this region will change to a simple quad, as a scale of the SimpleMeshMassiveLODDistance of the lowest LOD mesh. Should be less than 1.0 */
var() float MassiveLODDistanceScale;

defaultproperties
{
    MassiveLODDistanceScale=0.70
}