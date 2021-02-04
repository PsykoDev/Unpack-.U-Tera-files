/*******************************************************************************
 * MaterialExpressionConstantClamp generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MaterialExpressionConstantClamp extends MaterialExpression
    native(Material)
    hidecategories(Object);

var ExpressionInput Input;
var() float Min;
var() float Max;

defaultproperties
{
    Max=1.0
    MenuCategories(0)=Utility
    MenuCategories(1)=WorldPosOffset
}