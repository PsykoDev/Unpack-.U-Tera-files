/*******************************************************************************
 * SeqAct_AndGate generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_AndGate extends SequenceAction
    native(Sequence)
    hidecategories(Object);

var transient bool bOpen;
var transient array<bool> LinkedOutputFiredStatus;
var native transient array<Pointer> LinkedOutputs;

defaultproperties
{
    bOpen=true
    bAutoActivateOutputLinks=false
    VariableLinks=none
    ObjName="AND Gate"
    ObjCategory="Misc"
}