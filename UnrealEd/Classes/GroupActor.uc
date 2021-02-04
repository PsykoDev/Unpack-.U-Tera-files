/*******************************************************************************
 * GroupActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GroupActor extends Actor
    native
    notplaceable
    hidecategories(Navigation);

var editoronly bool bLocked;
var editoronly bool bResetProxy;
var editoronly bool bRemergeProxy;
var editoronly byte eMaterialType;
var editoronly byte eVertexColorMode;
var editoronly int iOnScreenSize;
var editoronly int iTextureSize;
var editoronly array<editoronly Actor> GroupActors;
var editoronly array<editoronly GroupActor> SubGroups;

defaultproperties
{
    bLocked=true
    eMaterialType=255
    iOnScreenSize=-1
    iTextureSize=-1
}