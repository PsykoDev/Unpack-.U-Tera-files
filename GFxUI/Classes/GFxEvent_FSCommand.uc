/*******************************************************************************
 * GFxEvent_FSCommand generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GFxEvent_FSCommand extends SequenceEvent
    native(UISequence)
    forcescriptorder(true)
    hidecategories(Object);

/** Swf Movie data to use. */
var() SwfMovie Movie;
/** name of fscommand to trigger on */
var() string FSCommand;
var GFxFSCmdHandler_Kismet Handler;

defaultproperties
{
    bPlayerOnly=false
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_String',LinkedVariables=none,LinkDesc="Argument",LinkVar=None,PropertyName=None,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="FsCommand"
    ObjCategory="GFx UI"
}