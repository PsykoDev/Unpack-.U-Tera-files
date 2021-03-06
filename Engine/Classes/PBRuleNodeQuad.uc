/*******************************************************************************
 * PBRuleNodeQuad generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PBRuleNodeQuad extends PBRuleNodeBase
    native(ProcBuilding)
    editinlinenew
    collapsecategories
    hidecategories(Object,Object);

/** Material to apply to created quad. */
var() MaterialInterface Material;
/** How large each repeat of the texture is allowed to be along X. */
var() float RepeatMaxSizeX;
/** How large each repeat of the texture is allowed to be along Z. */
var() float RepeatMaxSizeZ;
/** Resolution of lightmap on this quad */
var() int QuadLightmapRes;
/** Amount to offset this quad along Y */
var() float YOffset;
/** If TRUE, UV range will just be 0-1, and not repeating based on RepeatMaxSize */
var() bool bDisableMaterialRepeat;

defaultproperties
{
    RepeatMaxSizeX=512.0
    RepeatMaxSizeZ=512.0
    QuadLightmapRes=32
    NextRules=none
}