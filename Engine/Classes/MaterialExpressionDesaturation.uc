/*******************************************************************************
 * MaterialExpressionDesaturation generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MaterialExpressionDesaturation extends MaterialExpression
    native(Material)
    collapsecategories
    hidecategories(Object,Object);

var ExpressionInput Input;
var ExpressionInput Percent;
/** Color component factors for converting a color to greyscale. */
var() LinearColor LuminanceFactors;

defaultproperties
{
    LuminanceFactors=(R=0.110,G=0.590,B=0.30,A=0.0)
    MenuCategories(0)=Color
    MenuCategories(1)=Utility
}