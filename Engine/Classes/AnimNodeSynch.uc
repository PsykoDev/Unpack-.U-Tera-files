/*******************************************************************************
 * AnimNodeSynch generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimNodeSynch extends AnimNodeBlendBase
    native(Anim)
    hidecategories(Object,Object,Object);

struct native SynchGroup
{
    var array<AnimNodeSequence> SeqNodes;
    var transient AnimNodeSequence MasterNode;
    /** Name of group. */
    var() name GroupName;
    /** If FALSE, do not trigger slave nodes notifies. */
    var() bool bFireSlaveNotifies;
    /** Rate Scale */
    var() float RateScale;

    structdefaultproperties
    {
        SeqNodes=none
        MasterNode=none
        GroupName=None
        bFireSlaveNotifies=false
        RateScale=1.0
    }
};

/** List of groups to synchronize */
var() array<SynchGroup> Groups;

// Export UAnimNodeSynch::execAddNodeToGroup(FFrame&, void* const)
native final function AddNodeToGroup(AnimNodeSequence SeqNode, name GroupName);

// Export UAnimNodeSynch::execRemoveNodeFromGroup(FFrame&, void* const)
native final function RemoveNodeFromGroup(AnimNodeSequence SeqNode, name GroupName);

// Export UAnimNodeSynch::execGetMasterNodeOfGroup(FFrame&, void* const)
native final function AnimNodeSequence GetMasterNodeOfGroup(name GroupName);

// Export UAnimNodeSynch::execForceRelativePosition(FFrame&, void* const)
native final function ForceRelativePosition(name GroupName, float RelativePosition);

// Export UAnimNodeSynch::execGetRelativePosition(FFrame&, void* const)
native final function float GetRelativePosition(name GroupName);

// Export UAnimNodeSynch::execSetGroupRateScale(FFrame&, void* const)
native final function SetGroupRateScale(name GroupName, float NewRateScale);

defaultproperties
{
    Children(0)=(Name=Input,Anim=none,Weight=1.0,BlendWeight=0.0,bMirrorSkeleton=false,bIsAdditive=false,DrawY=0)
    bFixNumChildren=true
}