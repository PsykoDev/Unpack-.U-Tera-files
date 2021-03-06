/*******************************************************************************
 * MaterialExpressionCustom generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MaterialExpressionCustom extends MaterialExpression
    native(Material)
    collapsecategories
    hidecategories(Object,Object);

enum ECustomMaterialOutputType
{
    CMOT_Float1,
    CMOT_Float2,
    CMOT_Float3,
    CMOT_Float4,
    CMOT_MAX
};

struct native CustomInput
{
    var() string InputName;
    var edithide ExpressionInput Input;

    structdefaultproperties
    {
        InputName=""
        Input=(Expression=none,OutputIndex=0,InputName="",Mask=0,MaskR=0,MaskG=0,MaskB=0,MaskA=0,GCC64_Padding=0)
    }
};

var() edittextbox string Code;
var() MaterialExpressionCustom.ECustomMaterialOutputType OutputType;
var() string Description;
var() array<CustomInput> Inputs;

defaultproperties
{
    OutputType=ECustomMaterialOutputType.CMOT_Float3
    Description="Custom"
    Inputs(0)=(InputName="",Input=(Expression=none,OutputIndex=0,InputName="",Mask=0,MaskR=0,MaskG=0,MaskB=0,MaskA=0,GCC64_Padding=0))
    MenuCategories(0)=Custom
}