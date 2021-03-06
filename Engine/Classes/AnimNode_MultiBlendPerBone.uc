/*******************************************************************************
 * AnimNode_MultiBlendPerBone generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimNode_MultiBlendPerBone extends AnimNodeBlendBase
    native(Anim)
    hidecategories(Object,Object,Object);

enum EWeightCheck
{
    EWC_AnimNodeSlotNotPlaying,
    EWC_MAX
};

enum EBlendType
{
    EBT_ParentBoneSpace,
    EBT_MeshSpace,
    EBT_MAX
};

struct native WeightNodeRule
{
    /** Name of node */
    var() name NodeName;
    var AnimNodeBlendBase CachedNode;
    var AnimNodeSlot CachedSlotNode;
    /** How the weight should be checked. */
    var() AnimNode_MultiBlendPerBone.EWeightCheck WeightCheck;
    /** Child index of node to check weight for */
    var() int ChildIndex;

    structdefaultproperties
    {
        NodeName=None
        CachedNode=none
        CachedSlotNode=none
        WeightCheck=EWeightCheck.EWC_AnimNodeSlotNotPlaying
        ChildIndex=0
    }
};

struct native WeightRule
{
    /** Definition of a mask rule. */
    var() WeightNodeRule FirstNode;
    /** Definition of a mask rule. */
    var() WeightNodeRule SecondNode;

    structdefaultproperties
    {
        FirstNode=(NodeName=None,CachedNode=none,CachedSlotNode=none,WeightCheck=EWeightCheck.EWC_AnimNodeSlotNotPlaying,ChildIndex=0)
        SecondNode=(NodeName=None,CachedNode=none,CachedSlotNode=none,WeightCheck=EWeightCheck.EWC_AnimNodeSlotNotPlaying,ChildIndex=0)
    }
};

struct native BranchInfo
{
    /** Name of bone branch is starting from */
    var() name BoneName;
    /** Used to set up smooth blending */
    var() float PerBoneWeightIncrease;

    structdefaultproperties
    {
        BoneName=None
        PerBoneWeightIncrease=1.0
    }
};

struct native PerBoneMaskInfo
{
    /** Per bone masking definition // Exposed properties */
    var() array<BranchInfo> BranchList;
    /** Desired weight for this Mask */
    var() float DesiredWeight;
    /** Desired weight for this Mask */
    var() float BlendTimeToGo;
    /**  
     *Rules for turning off Mask.
     *        This system allows to turn off a mask based on a set of rules.
     *        Most of the time BlendPerBone is associated with a AnimNodeSlot
     *        to play cutsom animations.
     *        So with this system, it's possible to make the BlendPerBone a pass through node
     *        when no custom animation is played on the AnimNodeSlot. Hence optimizing significantly the tree.
     *        
     *        Example:
     *        - NodeName = Name of AnimNodeSlot
     *        - ChildIndex = 0 (source of AnimNodeSlot, when no custom animation is playing)
     *        - WeightCheck = EWC_ChildIndexFullWeight
     *        So this reads, if the Source children of the AnimNodeSlot is full weight
     *        (ie no custom animation is playing), then turn off this mask and
     *        make this BlendPerBone a pass through node.
     *        
     *        @note: When setting up multiple rules, ALL of them must be true in order to turn off the mask.
     *        if one fails, then the mask will NOT be disabled.
     */
    var() array<WeightRule> WeightRuleList;
    /**  
     *Rules for turning off Mask.
     *        This system allows to turn off a mask based on a set of rules.
     *        Most of the time BlendPerBone is associated with a AnimNodeSlot
     *        to play cutsom animations.
     *        So with this system, it's possible to make the BlendPerBone a pass through node
     *        when no custom animation is played on the AnimNodeSlot. Hence optimizing significantly the tree.
     *        
     *        Example:
     *        - NodeName = Name of AnimNodeSlot
     *        - ChildIndex = 0 (source of AnimNodeSlot, when no custom animation is playing)
     *        - WeightCheck = EWC_ChildIndexFullWeight
     *        So this reads, if the Source children of the AnimNodeSlot is full weight
     *        (ie no custom animation is playing), then turn off this mask and
     *        make this BlendPerBone a pass through node.
     *        
     *        @note: When setting up multiple rules, ALL of them must be true in order to turn off the mask.
     *        if one fails, then the mask will NOT be disabled.
     */
    var() bool bWeightBasedOnNodeRules;
    /**  
     *If the owner is not a local human player, then ignore this branch.
     *        (ie AI, other players in network...)
     */
    var() bool bDisableForNonLocalHumanPlayers;
    var transient bool bPendingBlend;
    var transient array<float> PerBoneWeights;
    var transient array<byte> TransformReqBone;
    var transient int TransformReqBoneIndex;

    structdefaultproperties
    {
        BranchList=none
        DesiredWeight=0.0
        BlendTimeToGo=0.0
        WeightRuleList=none
        bWeightBasedOnNodeRules=false
        bDisableForNonLocalHumanPlayers=false
        bPendingBlend=false
        PerBoneWeights=none
        TransformReqBone=none
        TransformReqBoneIndex=0
    }
};

var const transient Pawn PawnOwner;
/** List of Masks. Matches size of Children array - 1 */
var() editfixedsize editinline array<editinline PerBoneMaskInfo> MaskList;
/** How rotation should be blended */
var() AnimNode_MultiBlendPerBone.EBlendType RotationBlendType;

// Export UAnimNode_MultiBlendPerBone::execSetMaskWeight(FFrame&, void* const)
native final function SetMaskWeight(int MaskIndex, float DesiredWeight, float BlendTime);

defaultproperties
{
    Children(0)=(Name=Source,Anim=none,Weight=1.0,BlendWeight=0.0,bMirrorSkeleton=false,bIsAdditive=false,DrawY=0)
    CategoryDesc="Filter"
}