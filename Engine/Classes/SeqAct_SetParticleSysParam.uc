/*******************************************************************************
 * SeqAct_SetParticleSysParam generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_SetParticleSysParam extends SequenceAction
    hidecategories(Object);

var() export editinline array<export editinline ParticleSysParam> InstanceParameters;
/** Should ScalarValue override any entries to InstanceParameters? */
var() bool bOverrideScalar;
/** Override scalar value */
var() float ScalarValue;

defaultproperties
{
    bOverrideScalar=true
    VariableLinks(0)=(ExpectedType=class'SeqVar_Object',LinkedVariables=none,LinkDesc="Target",LinkVar=None,PropertyName=Targets,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(1)=(ExpectedType=class'SeqVar_Float',LinkedVariables=none,LinkDesc="Scalar Value",LinkVar=None,PropertyName=ScalarValue,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Set Particle Param"
    ObjCategory="Particles"
}