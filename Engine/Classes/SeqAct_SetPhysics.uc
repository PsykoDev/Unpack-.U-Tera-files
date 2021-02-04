/*******************************************************************************
 * SeqAct_SetPhysics generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_SetPhysics extends SequenceAction
    native(Sequence)
    hidecategories(Object);

/** Physics mode to change the Actor to. */
var() Actor.EPhysics newPhysics<autocomment=true>;

defaultproperties
{
    ObjName="Set Physics"
    ObjCategory="Physics"
    bSuppressAutoComment=false
}