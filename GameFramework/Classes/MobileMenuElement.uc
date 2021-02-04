/*******************************************************************************
 * MobileMenuElement generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MobileMenuElement extends Object;

var Vector2D VpPos;
var Vector2D VpSize;
var bool bIsVisible;
var bool bIsActive;

function bool OnTouch(Engine.Interaction.ETouchType EventType, float TouchX, float TouchY, float DeltaTime)
{
    return false;
    //return ReturnValue;    
}

function RenderElement(MobileMenuObject Owner, Canvas Canvas, float DeltaTime, float Opacity)
{
    //return;    
}

function GetIconIndexes(out array<int> IconIndexes)
{
    //return;    
}

defaultproperties
{
    bIsVisible=true
    bIsActive=true
}