/*******************************************************************************
 * AnimNodeBlendByProperty generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimNodeBlendByProperty extends AnimNodeBlendList
    native(Anim)
    hidecategories(Object,Object,Object,Object);

/** Property Name to look up */
var() name PropertyName;
/** If Property should be looked up on the Owner's base instead of the Owner. */
var() bool bUseOwnersBase;
var const transient bool bForceUpdate;
/** Use BlendToChild1Time/BlendToChild2Time instead of BlendTime? */
var() bool bUseSpecificBlendTimes;
/** When moving the slider, keep nodes with same property in sync. */
var(Editor) bool bSynchronizeNodesInEditor;
var transient name CachedPropertyName;
var native const transient Pointer CachedFloatProperty;
var native const transient Pointer CachedBoolProperty;
var native const transient Pointer CachedByteProperty;
var transient Actor CachedOwner;
var() float BlendTime;
var() float FloatPropMin;
var() float FloatPropMax;
var() float BlendToChild1Time;
var() float BlendToChild2Time;

defaultproperties
{
    bSynchronizeNodesInEditor=true
    BlendTime=0.10
    FloatPropMax=1.0
    BlendToChild1Time=0.10
    BlendToChild2Time=0.10
    bForceChildFullWeightWhenBecomingRelevant=false
    Children(0)=(Name=Child1,Anim=none,Weight=0.0,BlendWeight=0.0,bMirrorSkeleton=false,bIsAdditive=false,DrawY=0)
    Children(1)=(Name=Child2,Anim=none,Weight=0.0,BlendWeight=0.0,bMirrorSkeleton=false,bIsAdditive=false,DrawY=0)
}