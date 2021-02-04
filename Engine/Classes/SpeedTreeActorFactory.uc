/*******************************************************************************
 * SpeedTreeActorFactory generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SpeedTreeActorFactory extends ActorFactory
    native(SpeedTree)
    config(Editor)
    editinlinenew
    collapsecategories
    hidecategories(Object);

var() SpeedTree SpeedTree;

defaultproperties
{
    MenuName="Add SpeedTree"
    NewActorClass=class'SpeedTreeActor'
}