/*******************************************************************************
 * SeqEvent_SequenceActivated generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqEvent_SequenceActivated extends SequenceEvent
    native(Sequence)
    hidecategories(Object);

/** Text label to use on the sequence input link */
var() string InputLabel;

defaultproperties
{
    InputLabel="In"
    bPlayerOnly=false
    ObjName="Sequence Activated"
}