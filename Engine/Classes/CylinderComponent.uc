/*******************************************************************************
 * CylinderComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class CylinderComponent extends PrimitiveComponent
    native
    editinlinenew
    collapsecategories
    noexport;

var() const export float CollisionHeight;
var() const export float CollisionRadius;
/** Color used to draw the cylinder. */
var() const Color CylinderColor;
var const bool bDrawBoundingBox;
var const bool bDrawNonColliding;
var const bool bAlwaysRenderIfSelected;

// Export UCylinderComponent::execSetCylinderSize(FFrame&, void* const)
native final function SetCylinderSize(float NewRadius, float NewHeight);

defaultproperties
{
    CollisionHeight=22.0
    CollisionRadius=22.0
    CylinderColor=(R=223,G=149,B=157,A=255)
    bDrawBoundingBox=true
    ReplacementPrimitive=none
    HiddenGame=true
    bCastDynamicShadow=false
    BlockZeroExtent=true
    BlockNonZeroExtent=true
}