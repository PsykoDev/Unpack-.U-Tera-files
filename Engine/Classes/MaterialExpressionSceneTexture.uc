/*******************************************************************************
 * MaterialExpressionSceneTexture generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MaterialExpressionSceneTexture extends MaterialExpression
    native(Material)
    collapsecategories
    hidecategories(Object,Object);

enum ESceneTextureType
{
    SceneTex_Lighting,
    SceneTex_MAX
};

var ExpressionInput Coordinates;
var() MaterialExpressionSceneTexture.ESceneTextureType SceneTextureType;
/** Matches [0,1] UVs to the view within the back buffer. */
var() bool ScreenAlign;

defaultproperties
{
    MenuCategories(0)=Texture
    Outputs(0)=(OutputName="",Mask=1,MaskR=1,MaskG=1,MaskB=1,MaskA=0)
    Outputs(1)=(OutputName="",Mask=1,MaskR=1,MaskG=0,MaskB=0,MaskA=0)
    Outputs(2)=(OutputName="",Mask=1,MaskR=0,MaskG=1,MaskB=0,MaskA=0)
    Outputs(3)=(OutputName="",Mask=1,MaskR=0,MaskG=0,MaskB=1,MaskA=0)
    Outputs(4)=(OutputName="",Mask=1,MaskR=0,MaskG=0,MaskB=0,MaskA=1)
}