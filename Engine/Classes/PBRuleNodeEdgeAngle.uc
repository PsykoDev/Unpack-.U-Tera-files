/*******************************************************************************
 * PBRuleNodeEdgeAngle generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PBRuleNodeEdgeAngle extends PBRuleNodeBase
    native(ProcBuilding)
    editinlinenew
    collapsecategories
    hidecategories(Object,Object);

enum EProcBuildingEdge
{
    EPBE_Top,
    EPBE_Bottom,
    EPBE_Left,
    EPBE_Right,
    EPBE_MAX
};

struct native RBEdgeAngleInfo
{
    /** Angle (in degrees) */
    var() float Angle;

    structdefaultproperties
    {
        Angle=0.0
    }
};

/** Edge of scope that we want to look at angle of */
var() PBRuleNodeEdgeAngle.EProcBuildingEdge Edge;
/** Set of angles of edge connection, each corresponds to an output of this node */
var() array<RBEdgeAngleInfo> Angles;

defaultproperties
{
    Edge=EProcBuildingEdge.EPBE_Left
    NextRules=none
}