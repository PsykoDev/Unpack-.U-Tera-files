/*******************************************************************************
 * AnimNodeBlendBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimNodeBlendBase extends AnimNode
    abstract
    native(Anim)
    hidecategories(Object,Object,Object);

struct native AnimBlendChild
{
    /** Name of link. */
    var() name Name;
    var export editinline AnimNode Anim;
    var float Weight;
    var const transient float BlendWeight;
    var bool bMirrorSkeleton;
    var bool bIsAdditive;
    var editoronly int DrawY;

    structdefaultproperties
    {
        Name=None
        Anim=none
        Weight=0.0
        BlendWeight=0.0
        bMirrorSkeleton=false
        bIsAdditive=false
        DrawY=0
    }
};

var editfixedsize export editinline array<export editinline AnimBlendChild> Children;
var bool bFixNumChildren;
/** Type of animation blending. Affects how the weight interpolates. */
var() Core.Object.AlphaBlendType BlendType;

// Export UAnimNodeBlendBase::execPlayAnim(FFrame&, void* const)
native function PlayAnim(optional bool bLoop, optional float Rate, optional float StartTime)
{
    bLoop = false;
    Rate = 1.0;
    StartTime = 0.0;                    
}

// Export UAnimNodeBlendBase::execStopAnim(FFrame&, void* const)
native function StopAnim();

// Export UAnimNodeBlendBase::execReplayAnim(FFrame&, void* const)
native function ReplayAnim();