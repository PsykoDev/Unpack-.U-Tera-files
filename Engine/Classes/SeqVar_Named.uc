/*******************************************************************************
 * SeqVar_Named generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqVar_Named extends SequenceVariable
    native(Sequence)
    hidecategories(Object,SequenceVariable);

/** Class that this variable will act as. Set automatically when connected to a SequenceOp variable connector. */
var() class<SequenceVariable> ExpectedType;
/** Will search entire level's sequences (ie all subsequences) to find a variable whose VarName matches FindVarName. */
var() name FindVarName;
var transient bool bStatusIsOk;

defaultproperties
{
    ObjName="Named Variable"
}