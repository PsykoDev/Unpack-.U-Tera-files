/*******************************************************************************
 * DrawBoxComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DrawBoxComponent extends PrimitiveComponent
    native
    editinlinenew
    collapsecategories
    noexport
    hidecategories(Object);

var() Color BoxColor;
var() Material BoxMaterial;
var() Vector BoxExtent;
var() bool bDrawWireBox;
var() bool bDrawLitBox;
var() bool bDrawOnlyIfSelected;

defaultproperties
{
    BoxColor=(R=255,G=0,B=0,A=255)
    BoxExtent=(X=200.0,Y=200.0,Z=200.0)
    bDrawWireBox=true
    ReplacementPrimitive=none
    HiddenGame=true
}