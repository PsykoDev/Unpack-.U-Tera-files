/*******************************************************************************
 * FogVolumeDensityComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class FogVolumeDensityComponent extends ActorComponent
    abstract
    native(FogVolume)
    editinlinenew
    hidecategories(Object);

/** Fog Material to use on the AutomaticComponent.  This will not be used on FogVolumeActors, they will use their existing materials. */
var() MaterialInterface FogMaterial;
var MaterialInterface DefaultFogVolumeMaterial;
/** True if the fog is enabled. */
var() const bool bEnabled;
/**  
 *Controls whether the fog volume affects intersecting translucency.  
 * If FALSE, the fog volume will sort normally with translucency and not fog intersecting translucent objects.
 */
var() bool bAffectsTranslucency;
/** Controls whether the fog volume affects opaque pixels, or just intersecting translucency. */
var() bool bOnlyAffectsTranslucency;
/**  
 *Sets the 'EmissiveColor' Vector Parameter of FogMaterial.
 * This will have no effect if FogMaterial has been overridden with a material that does not have a 'EmissiveColor' parameter.
 */
var() interp LinearColor SimpleLightColor;
/**  
 *Color used to approximate fog material color on transparency. 
 * Important: Set this color to match the overall color of the fog material, otherwise transparency will not be fogged correctly.
 */
var() interp LinearColor ApproxFogLightColor;
/** Distance from the camera that the fog should start, in world units. */
var() interp float StartDistance;
/**  
 *MaxDistance can be tweaked to be as low as it can go without making the fog noticeably less opaque, 
 * And that will greatly improve the anti aliasing effect on opaque geometry in the foreground.
 */
var() float MaxDistance;
/**  
 *Optional array of actors that will define the shape of the fog volume. 
 * These actors will not be moved along with the fog volume, and they can be selected directly.
 */
var() array<Actor> FogVolumeActors;

// Export UFogVolumeDensityComponent::execSetEnabled(FFrame&, void* const)
native final function SetEnabled(bool bSetEnabled);

defaultproperties
{
    DefaultFogVolumeMaterial=Material'EngineMaterials.FogVolumeMaterial'
    bEnabled=true
    bAffectsTranslucency=true
    SimpleLightColor=(R=0.70,G=0.50,B=0.50,A=1.0)
    ApproxFogLightColor=(R=0.70,G=0.50,B=0.50,A=1.0)
    MaxDistance=65535.0
}