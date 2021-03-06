/*******************************************************************************
 * ParticleModuleUberRainDrops generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ParticleModuleUberRainDrops extends ParticleModuleUberBase
    native(Particle)
    editinlinenew
    collapsecategories
    hidecategories(Object,Object,Object);

/** Lifetime Module Members                                                                                                                /----------------------------------------------------------------------------- */
var(Lifetime) float LifetimeMin;
var(Lifetime) float LifetimeMax;
/** Size Module Members                                                                                                                    /----------------------------------------------------------------------------- */
var(Size) Vector StartSizeMin;
var(Size) Vector StartSizeMax;
/** Velocity Module Members                                                                                                                /----------------------------------------------------------------------------- */
var(Velocity) Vector StartVelocityMin;
var(Velocity) Vector StartVelocityMax;
var(Velocity) float StartVelocityRadialMin;
var(Velocity) float StartVelocityRadialMax;
/** ColorOverLife Module Members                                                                                           /----------------------------------------------------------------------------- */
var(Color) Vector ColorOverLife;
var(Color) float AlphaOverLife;
/** PrimitiveCylinder Module Members                                                                                       /----------------------------------------------------------------------------- */
var(Location) bool bIsUsingCylinder;
var(Location) bool bPositive_X;
var(Location) bool bPositive_Y;
var(Location) bool bPositive_Z;
var(Location) bool bNegative_X;
var(Location) bool bNegative_Y;
var(Location) bool bNegative_Z;
var(Location) bool bSurfaceOnly;
var(Location) bool bVelocity;
var(Location) bool bRadialVelocity;
var(Location) float PC_VelocityScale;
var(Location) Vector PC_StartLocation;
var(Location) float PC_StartRadius;
var(Location) float PC_StartHeight;
var(Location) ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis PC_HeightAxis;
/** Location Module Members                                                                                                                /----------------------------------------------------------------------------- */
var(Location) Vector StartLocationMin;
var(Location) Vector StartLocationMax;

defaultproperties
{
    LifetimeMin=1.0
    LifetimeMax=1.0
    StartSizeMin=(X=1.0,Y=1.0,Z=1.0)
    StartSizeMax=(X=1.0,Y=1.0,Z=1.0)
    StartVelocityMin=(X=1.0,Y=1.0,Z=1.0)
    StartVelocityMax=(X=1.0,Y=1.0,Z=1.0)
    ColorOverLife=(X=255.90,Y=255.90,Z=255.90)
    AlphaOverLife=255.90
    bPositive_X=true
    bPositive_Y=true
    bPositive_Z=true
    bNegative_X=true
    bNegative_Y=true
    bNegative_Z=true
    bRadialVelocity=true
    PC_VelocityScale=1.0
    PC_StartRadius=50.0
    PC_StartHeight=50.0
    PC_HeightAxis=CylinderHeightAxis.PMLPC_HEIGHTAXIS_Z
    bSpawnModule=true
    bUpdateModule=true
    bSupported3DDrawMode=true
}