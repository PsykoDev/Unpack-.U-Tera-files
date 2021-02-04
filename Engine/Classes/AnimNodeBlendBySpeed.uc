/*******************************************************************************
 * AnimNodeBlendBySpeed generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimNodeBlendBySpeed extends AnimNodeBlendList
    native(Anim)
    hidecategories(Object,Object,Object,Object);

var float Speed;
var int LastChannel;
/** How fast to blend when going up */
var() float BlendUpTime;
/** How fast to blend when going down */
var() float BlendDownTime;
/** When should we start blending back down */
var() float BlendDownPerc;
/** Weights/ constraints used for transition between child nodes */
var() array<float> Constraints;
/** Use acceleration instead of Velocity to determine speed */
var() bool bUseAcceleration;
/** Optional delay before blending to the next channel */
var() float BlendUpDelay;
/** Optional delay before blending to the next channel */
var() float BlendDownDelay;
var transient float BlendDelayRemaining;

defaultproperties
{
    BlendUpTime=0.10
    BlendDownTime=0.10
    BlendDownPerc=0.20
    Constraints(0)=0.0
    Constraints(1)=180.0
    Constraints(2)=350.0
    Constraints(3)=900.0
}