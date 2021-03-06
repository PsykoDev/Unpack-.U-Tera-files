/*******************************************************************************
 * PBRuleNodeRandom generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PBRuleNodeRandom extends PBRuleNodeBase
    native(ProcBuilding)
    editinlinenew
    collapsecategories
    hidecategories(Object,Object);

/** How many outputs are created for this node */
var() int NumOutputs;
/** Min number of the outputs will be executed */
var() int MinNumExecuted;
/** Max number of the outputs will be executed */
var() int MaxNumExecuted;

defaultproperties
{
    NumOutputs=2
    MinNumExecuted=1
    MaxNumExecuted=1
    NextRules(0)=(NextRule=none,LinkName=0,DrawY=0)
    NextRules(1)=(NextRule=none,LinkName=1,DrawY=0)
}