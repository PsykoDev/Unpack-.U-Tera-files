/*******************************************************************************
 * MaterialExpressionScreenPosition generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MaterialExpressionScreenPosition extends MaterialExpression
    native(Material)
    collapsecategories
    hidecategories(Object,Object);

/** applies the divide by w as well as [-1,1]->[1,1] mapping for screen alignment */
var() bool ScreenAlign;

defaultproperties
{
    MenuCategories(0)=Coordinates
}