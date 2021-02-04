/*******************************************************************************
 * SkelControlBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SkelControlBase extends AnimObject
    abstract
    native(Anim)
    hidecategories(Object,Object);

enum EBoneControlSpace
{
    BCS_WorldSpace,
    BCS_ActorSpace,
    BCS_ComponentSpace,
    BCS_ParentBoneSpace,
    BCS_BoneSpace,
    BCS_OtherBoneSpace,
    BCS_BaseMeshSpace,
    BCS_MAX
};

/** Name used to identify this SkelControl. */
var(Controller) name ControlName;
/**  
 *Used to control how much affect this SkelControl has.
 *       1.0 means fully active, 0.0 means have no affect.
 *       Exactly how the control ramps up depends on the specific control type.
 */
var(Controller) float ControlStrength;
/** When calling SetActive passing in 'true', indicates how many seconds to take to reach a ControlStrength of 1.0. */
var(Controller) float BlendInTime;
/** When calling SetActive passing in 'false', indicates how many seconds to take to reach a ControlStrength of 0.0. */
var(Controller) float BlendOutTime;
/** BlendType - Easy in/out */
var(Controller) Core.Object.AlphaBlendType BlendType;
/** If TRUE, this controller will be applied AFTER physics has been run, as part of the process of blending physics into the graphics skeleton. */
var(Controller) bool bPostPhysicsController;
/** If true, Strength will be the same as given AnimNode(s). This is to make transitions easier between nodes and Controllers. */
var(Controller) bool bSetStrengthFromAnimNode;
var transient bool bInitializedCachedNodeList;
/** if TRUE, weight default to 0, and metadata in animation will enable the node based on animation weight. */
var(Controller) bool bControlledByAnimMetada;
/** If TRUE, weight defaults to 1, and metadata will set that to zero, disabling the node */
var(Controller) bool bInvertMetadataWeight;
/** If true, calling SetSkelControlActive on this node will call SetSkelControlActive on the next one in the chain as well. */
var(Controller) bool bPropagateSetActive;
/**  
 *whether this control should be ignored if the SkeletalMeshComponent being composed hasn't been rendered recently
 * 
 *       @note this can be forced by the SkeletalMeshComponent's bIgnoreControllersWhenNotRendered flag
 */
var(Performance) bool bIgnoreWhenNotRendered;
var bool bShouldTickInScript;
var bool bShouldTickOwner;
/** This will change to BlendType in general */
var() editconst deprecated bool bEnableEaseInOut;
var float StrengthTarget;
var transient float BlendTimeToGo;
/** List of AnimNode names, to get Strength from */
var(Controller) array<name> StrengthAnimNodeNameList;
var transient array<AnimNode> CachedNodeList;
var const transient float AnimMetadataWeight;
var const transient int AnimMetaDataUpdateTag;
/** This scaling is applied to the bone that this control is acting upon. */
var(Controller) float BoneScale;
var transient int ControlTickTag;
/** If the LOD of this skeletal mesh is at or above this LOD, then this SkelControl will not be applied. */
var(Performance) int IgnoreAtOrAboveLOD;
var SkelControlBase NextControl;
var deprecated int ControlPosX;
var deprecated int ControlPosY;

// Export USkelControlBase::execSetSkelControlActive(FFrame&, void* const)
native final function SetSkelControlActive(bool bInActive);

// Export USkelControlBase::execSetSkelControlStrength(FFrame&, void* const)
native final function SetSkelControlStrength(float NewStrength, float InBlendTime);

event TickSkelControl(float DeltaTime, SkeletalMeshComponent SkelComp)
{
    //return;    
}

// Export USkelControlBase::execGetControlMetadataWeight(FFrame&, void* const)
native final function float GetControlMetadataWeight();

defaultproperties
{
    BlendInTime=0.20
    BlendOutTime=0.20
    BoneScale=1.0
    IgnoreAtOrAboveLOD=1000
}