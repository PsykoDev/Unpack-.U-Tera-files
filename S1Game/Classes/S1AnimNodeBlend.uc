/*******************************************************************************
 * S1AnimNodeBlend generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1AnimNodeBlend extends AnimNodeBlendBase
    native
    hidecategories(Object,Object,Object);

enum ES1AnimType
{
    S1ANIM_NONE,
    S1ANIM_ACTION,
    S1ANIM_LIFE,
    S1ANIM_SOCIAL,
    S1ANIM_MOVE_OR_WAIT,
    S1ANIM_MOVE_ONLY,
    S1ANIM_WAIT_ONLY,
    S1ANIM_BARRACK,
    S1ANIM_PENDING,
    S1ANIM_MAX
};

struct native S1AnimPlayInfo
{
    var S1AnimNodeBlend.ES1AnimType AnimType;
    var name AnimName;
    var float fRate;
    var float fDuration;
    var float fBlendInTime;
    var float fRootMotionXYRate;
    var float fRootMotionZRate;
    var float fScale;
    var float fRootMotionDistance;
    var float fStartTime;
    var bool bLooping;
    var bool bRootMotion;
    var bool bRotateMotion;
    var bool bLast;
    var bool bRemainForDuration;
    var bool bEnableBlendInTimeWhenNpc;
    var int nToolId;

    structdefaultproperties
    {
        AnimType=ES1AnimType.S1ANIM_NONE
        AnimName=None
        fRate=0.0
        fDuration=0.0
        fBlendInTime=0.0
        fRootMotionXYRate=0.0
        fRootMotionZRate=0.0
        fScale=0.0
        fRootMotionDistance=0.0
        fStartTime=0.0
        bLooping=false
        bRootMotion=false
        bRotateMotion=false
        bLast=false
        bRemainForDuration=false
        bEnableBlendInTimeWhenNpc=false
        nToolId=0
    }
};

var array<S1AnimPlayInfo> m_AnimSeqList;
var bool m_bNewPlayList;
var bool m_bCancel;
var bool m_bPendingPlay;
var bool m_bSetPosition;
var bool m_bFixedBlendInTime;
var const bool bIsPlayingCustomAnim;
var float m_fPosition;
var float m_fDefaultAnimBlendInTime;
var float m_fRootMotionDistance;
var int m_CurrentCustomNodeIndex;
var S1AnimPlayInfo m_CurAnimPlayInfo;
var init native const transient array<init Pointer> m_AnimEventList;
var const int TargetChildIndex;
var array<float> TargetWeight;
var const float BlendTimeToGo;

defaultproperties
{
    m_fDefaultAnimBlendInTime=0.20
    m_fRootMotionDistance=-1.0
    m_CurrentCustomNodeIndex=1
    m_CurAnimPlayInfo=(AnimType=ES1AnimType.S1ANIM_NONE,AnimName=None,fRate=1.0,fDuration=0.0,fBlendInTime=0.0,fRootMotionXYRate=1.0,fRootMotionZRate=1.0,fScale=1.0,fRootMotionDistance=-1.0,fStartTime=0.0,bLooping=false,bRootMotion=false,bRotateMotion=false,bLast=false,bRemainForDuration=false,bEnableBlendInTimeWhenNpc=false,nToolId=0)
    TargetWeight(0)=1.0
    Children=/* Array type was not detected. */
    bFixNumChildren=true
    NodeName=S1AnimNodeBlend
}