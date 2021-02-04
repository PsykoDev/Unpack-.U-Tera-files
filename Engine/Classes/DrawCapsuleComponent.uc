/*******************************************************************************
 * DrawCapsuleComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DrawCapsuleComponent extends PrimitiveComponent
    native
    editinlinenew
    collapsecategories
    noexport
    hidecategories(Object);

var() Color CapsuleColor;
var() Material CapsuleMaterial;
var() float CapsuleHeight;
var() float CapsuleRadius;
var() bool bDrawWireCapsule;
var() bool bDrawLitCapsule;
var() bool bDrawOnlyIfSelected;

defaultproperties
{
    CapsuleColor=(R=255,G=0,B=0,A=255)
    CapsuleHeight=200.0
    CapsuleRadius=200.0
    bDrawWireCapsule=true
    ReplacementPrimitive=none
    HiddenGame=true
}