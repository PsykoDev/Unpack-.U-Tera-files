/*******************************************************************************
 * SeqAct_MobileAddInputZones generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_MobileAddInputZones extends SequenceAction
    native
    forcescriptorder(true)
    hidecategories(Object);

/** Name for this zone, it will be used in Kismet zone input events */
var() name ZoneName;
/** All the details needed to set up a zone */
var() editinline MobileInputZone NewZone;

defaultproperties
{
    VariableLinks=none
    ObjName="Add Input Zone"
    ObjCategory="Mobile"
}