/*******************************************************************************
 * AnimNodeBlendList generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimNodeBlendList extends AnimNodeBlendBase
    native(Anim)
    hidecategories(Object,Object,Object,Object);

var array<float> TargetWeight;
var float BlendTimeToGo;
var int ActiveChildIndex;
/** Call play anim when active child is changed */
var() bool bPlayActiveChild;
/**  
 *If TRUE (Default), then when the node becomes relevant, the Active Child will be forced to full weight.
 * This is a general optimization, as multiple nodes tend to change state at the same time, this will
 * reduce the maximum number of blends and animation decompression done at the same time.
 * Setting it to FALSE, will let the node interpolate animation normally.
 */
var(Performance) bool bForceChildFullWeightWhenBecomingRelevant;
/**  
 *if TRUE, do not blend when the Skeletal Mesh is not visible.
 * Optimization to save on blending time when meshes are not rendered.
 * Instant switch instead.
 */
var(Performance) bool bSkipBlendWhenNotRendered;
var const float SliderPosition;
/** ActiveChildIndex for use in editor only, to debug transitions */
var() editoronly int EditorActiveChildIndex;

// Export UAnimNodeBlendList::execSetActiveChild(FFrame&, void* const)
native function SetActiveChild(int ChildIndex, float BlendTime);

defaultproperties
{
    bForceChildFullWeightWhenBecomingRelevant=true
    bSkipBlendWhenNotRendered=true
    Children(0)=(Name=Child1,Anim=none,Weight=0.0,BlendWeight=0.0,bMirrorSkeleton=false,bIsAdditive=false,DrawY=0)
    CategoryDesc="BlendBy"
}