/*******************************************************************************
 * SeqAct_Destroy generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_Destroy extends SequenceAction
    hidecategories(Object);

var() bool bDestroyBasedActors;
var() array< class<Actor> > IgnoreBasedClasses;

defaultproperties
{
    ObjName="Destroy"
    ObjCategory="Actor"
}