/*******************************************************************************
 * SeqAct_StreamInTextures generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_StreamInTextures extends SeqAct_Latent
    native(Sequence)
    hidecategories(Object);

var deprecated bool bLocationBased;
var const bool bStreamingActive;
var const bool bHasTriggeredAllLoaded;
/** Number of seconds to force the streaming system to stream in all of the target's textures or enforce bForceMiplevelsToBeResident */
var() float Seconds;
/**  
 *Allows adjusting the desired streaming distance around the specified Location.
 * 1.0 is the default, whereas a higher value makes the textures stream in sooner from far away.
 * A lower value (0.0-1.0) makes the textures stream in later and use less memory.
 */
var() float StreamingDistanceMultiplier;
var const int NumWantingResourcesID;
var const float StopTimestamp;
/** Textures surrounding the LocationActors will begin to stream in */
var() array<Object> LocationActors;
/** Array of Materials to set bForceMiplevelsToBeResident on their textures for the duration of this action. */
var() array<MaterialInterface> ForceMaterials;
/** Texture groups that will use extra (higher resolution) mip-levels. */
var(CinematicMipLevels) const TextureGroupContainer CinematicTextureGroups;
var private native const transient int SelectedCinematicTextureGroups;

static event int GetObjClassVersion()
{
    return super(SequenceObject).GetObjClassVersion() + 2;
    //return ReturnValue;    
}

defaultproperties
{
    Seconds=15.0
    StreamingDistanceMultiplier=1.0
    InputLinks(0)=(LinkDesc="Start",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    InputLinks(1)=(LinkDesc="Stop",bHasImpulse=false,QueuedActivations=0,bDisabled=false,bDisabledPIE=false,LinkedOp=none,DrawY=0,bHidden=false,ActivateDelay=0.0,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    OutputLinks(0)=(Links=none,LinkDesc="Out",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(1)=(Links=none,LinkDesc="Aborted",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    OutputLinks(2)=(Links=none,LinkDesc="All Loaded",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    VariableLinks(0)=(ExpectedType=class'SeqVar_Object',LinkedVariables=none,LinkDesc="Actor",LinkVar=None,PropertyName=Targets,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(1)=(ExpectedType=class'SeqVar_Object',LinkedVariables=none,LinkDesc="Location",LinkVar=None,PropertyName=LocationActors,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Stream In Textures"
    ObjCategory="Actor"
}