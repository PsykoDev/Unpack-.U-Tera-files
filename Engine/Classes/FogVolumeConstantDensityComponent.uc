/*******************************************************************************
 * FogVolumeConstantDensityComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class FogVolumeConstantDensityComponent extends FogVolumeDensityComponent
    native(FogVolume)
    editinlinenew
    collapsecategories
    hidecategories(Object,Object);

/** The constant density coefficient */
var() interp float Density;

defaultproperties
{
    Density=0.00050
}