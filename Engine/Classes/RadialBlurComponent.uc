/*******************************************************************************
 * RadialBlurComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class RadialBlurComponent extends ActorComponent
    native
    editinlinenew
    collapsecategories
    hidecategories(Object);

/** Material to affect radial blur opacity/color */
var() const MaterialInterface Material;
/** Scene DPG determines order in which effect is drawn */
var() const Scene.ESceneDepthPriorityGroup DepthPriorityGroup;
/** Scale for the overall blur vectors */
var() interp const float BlurScale;
/** Exponent for falloff rate of blur vectors */
var() interp const float BlurFalloffExponent;
/** Amount to alpha blend the blur effect with the existing scene */
var() interp const float BlurOpacity;
/** Max distance where effect is rendered. If further than this then culled */
var() const float MaxCullDistance;
/** Rate of falloff based on distance from view origin */
var() const float DistanceFalloffExponent;
/**  
 *if TRUE then radial blur vectors are rendered to the velocity buffer 
 * instead of being used to manually sampling scene color values
 */
var() const bool bRenderAsVelocity;
/** if TRUE the effect is enabled and rendered in the scene */
var() const bool bEnabled;
var native const transient Matrix LocalToWorld;

// Export URadialBlurComponent::execSetMaterial(FFrame&, void* const)
native function SetMaterial(MaterialInterface InMaterial);

// Export URadialBlurComponent::execSetBlurScale(FFrame&, void* const)
native function SetBlurScale(float InBlurScale);

// Export URadialBlurComponent::execSetBlurFalloffExponent(FFrame&, void* const)
native function SetBlurFalloffExponent(float InBlurFalloffExponent);

// Export URadialBlurComponent::execSetBlurOpacity(FFrame&, void* const)
native function SetBlurOpacity(float InBlurOpacity);

// Export URadialBlurComponent::execSetEnabled(FFrame&, void* const)
native function SetEnabled(bool bInEnabled);

function OnUpdatePropertyBlurScale()
{
    SetBlurScale(BlurScale);
    //return;    
}

function OnUpdatePropertyBlurFalloffExponent()
{
    SetBlurFalloffExponent(BlurFalloffExponent);
    //return;    
}

function OnUpdatePropertyBlurOpacity()
{
    SetBlurOpacity(BlurOpacity);
    //return;    
}

defaultproperties
{
    DepthPriorityGroup=ESceneDepthPriorityGroup.SDPG_Foreground
    BlurScale=1.0
    BlurFalloffExponent=1.50
    BlurOpacity=1.0
    MaxCullDistance=2000.0
    DistanceFalloffExponent=1.50
    bRenderAsVelocity=true
    bEnabled=true
}