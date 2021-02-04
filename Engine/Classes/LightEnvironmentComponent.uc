/*******************************************************************************
 * LightEnvironmentComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class LightEnvironmentComponent extends ActorComponent
    native(Light);

/** Whether the light environment is used or treated the same as a LightEnvironment=NULL reference. */
var() protected const bool bEnabled;
var bool bForceNonCompositeDynamicLights;
var bool bAllowDynamicShadowsOnTranslucency;
var protected const transient bool bAllowPreShadow;
var protected const transient bool bTranslucencyShadowed;
var protected const transient float DominantShadowFactor;
var protected const export editinline transient LightComponent AffectingDominantLight;
var protected const export editinline transient array<export editinline PrimitiveComponent> AffectedComponents;

// Export ULightEnvironmentComponent::execSetEnabled(FFrame&, void* const)
native final function SetEnabled(bool bNewEnabled);

// Export ULightEnvironmentComponent::execIsEnabled(FFrame&, void* const)
native final function bool IsEnabled();

defaultproperties
{
    bEnabled=true
    bAllowPreShadow=true
    DominantShadowFactor=1.0
}