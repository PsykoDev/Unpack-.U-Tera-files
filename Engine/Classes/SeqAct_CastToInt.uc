/*******************************************************************************
 * SeqAct_CastToInt generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_CastToInt extends SeqAct_SetSequenceVariable
    native(Sequence)
    hidecategories(Object);

/** If TRUE, the float value will be truncated into the integer rather than rounded into it. */
var() bool bTruncate;
var float Value;
var int IntResult;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=class'SeqVar_Float',LinkedVariables=none,LinkDesc="Int",LinkVar=None,PropertyName=Value,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(1)=(ExpectedType=class'SeqVar_Int',LinkedVariables=none,LinkDesc="Result",LinkVar=None,PropertyName=IntResult,bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Cast To Int"
    ObjCategory="Math"
}