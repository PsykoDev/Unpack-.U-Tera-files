/*******************************************************************************
 * LandscapeLayerInfoObject generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class LandscapeLayerInfoObject extends Object
    native(Terrain);

var() name LayerName;
var() PhysicalMaterial PhysMaterial;
var() float Hardness;
var editoronly bool bNoWeightBlend;

defaultproperties
{
    Hardness=0.50
}