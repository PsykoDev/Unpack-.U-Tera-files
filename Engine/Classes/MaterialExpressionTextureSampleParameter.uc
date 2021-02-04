/*******************************************************************************
 * MaterialExpressionTextureSampleParameter generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MaterialExpressionTextureSampleParameter extends MaterialExpressionTextureSample
    abstract
    native(Material)
    collapsecategories
    hidecategories(Object,Object,Object);

var() name ParameterName;
var const Guid ExpressionGUID;
/** The name of the parameter Group to display in MaterialInstance Editor. Default is None group */
var() name Group;

defaultproperties
{
    bIsParameterExpression=true
    MenuCategories(0)=Obsolete
}