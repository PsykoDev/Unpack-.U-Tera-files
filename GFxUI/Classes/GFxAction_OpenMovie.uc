/*******************************************************************************
 * GFxAction_OpenMovie generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GFxAction_OpenMovie extends SequenceAction
    native(UISequence)
    forcescriptorder(true)
    hidecategories(Object);

/** Swf Movie data to use */
var() SwfMovie Movie;
/** Type of movie player to use */
var() class<GFxMoviePlayer> MoviePlayerClass;
var GFxMoviePlayer MoviePlayer;
/** if true, focus on load */
var() bool bTakeFocus;
/** if true, capture input */
var() bool bCaptureInput;
/** if true, start paused */
var() bool bStartPaused;
var bool bEnableGammaCorrection;
/** Whether to display the movie even if the HUD is turned off */
var() bool bDisplayWithHudOff;
/** Use RTM_Alpha with BLEND_Translucent, doesn't support add.  Use RTM_AlphaComposite with BLEND_AlphaComposite. */
var() GFxMoviePlayer.GFxRenderTextureMode RenderTextureMode;
/** If set, movie will be played on this RenderTexture */
var() TextureRenderTarget2D RenderTexture;
var() array<name> CaptureKeys;
var() array<name> FocusIgnoreKeys;

static event bool IsValidLevelSequenceObject()
{
    return true;
    //return ReturnValue;    
}

defaultproperties
{
    MoviePlayerClass=class'GFxMoviePlayer'
    bDisplayWithHudOff=true
    OutputLinks(0)=(Links=none,LinkDesc="Success",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(1)=(Links=none,LinkDesc="Failed",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkedVariables=none,LinkDesc="External Interface",LinkVar=None,PropertyName=None,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkedVariables=none,LinkDesc="Player Owner",LinkVar=None,PropertyName=None,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_Object',LinkedVariables=none,LinkDesc="Movie Player",LinkVar=None,PropertyName=None,bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Open GFx Movie"
    ObjCategory="GFx UI"
}