/*******************************************************************************
 * AnimNodeBlendByBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimNodeBlendByBase extends AnimNodeBlendList
    native(Anim)
    hidecategories(Object,Object,Object,Object);

enum EBaseBlendType
{
    BBT_ByActorTag,
    BBT_ByActorClass,
    BBT_MAX
};

/** Type of comparison to do */
var() AnimNodeBlendByBase.EBaseBlendType Type;
/** Actor tag that will match the base */
var() name ActorTag;
/** Actor class that will match the base */
var() class<Actor> ActorClass<AllowAbstract=>;
/** Duration of blend */
var() float BlendTime;
var transient Actor CachedBase;

defaultproperties
{
    BlendTime=0.20
    Children(0)=(Name=Normal,Anim=none,Weight=0.0,BlendWeight=0.0,bMirrorSkeleton=false,bIsAdditive=false,DrawY=0)
    Children(1)=(Name=Based,Anim=none,Weight=0.0,BlendWeight=0.0,bMirrorSkeleton=false,bIsAdditive=false,DrawY=0)
    bFixNumChildren=true
}