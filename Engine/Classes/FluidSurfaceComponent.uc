/*******************************************************************************
 * FluidSurfaceComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class FluidSurfaceComponent extends PrimitiveComponent
    native(Fluid)
    editinlinenew
    hidecategories(Object)
    autoexpandcategories(FluidSurfaceComponent,Fluid,FluidDetail);

/** Surface material */
var() MaterialInterface FluidMaterial;
/** Resolution of the fluid's texture lightmap. */
var(Lighting) int LightMapResolution;
/** The Lightmass settings for this object. */
var(Lightmass) LightmassPrimitiveSettings LightmassSettings<ScriptOrder=true>;
/** Whether the vertex positions in the simulation grid should be animated or not */
var(Fluid) bool EnableSimulation;
/** Whether the detail simulation grid should be used or not */
var(Fluid) bool EnableDetail;
/** Whether to make the detail simulation tiled. */
var(FluidDetail) bool bTiling;
/** Whether to update the fluid or pause it */
var(FluidDebug) transient bool bPause;
/** Whether to render lines for normals */
var(FluidDebug) transient bool bShowSimulationNormals;
/** Whether to visualize the placement of the simulated grid */
var(FluidDebug) bool bShowSimulationPosition;
/** Whether to render an overlay of the detail normal for debugging */
var(FluidDebug) bool bShowDetailNormals;
/** Whether to visualize the placement of the detail texture */
var(FluidDebug) bool bShowDetailPosition;
/** Whether to visualize the height of the main fluid grid */
var(FluidDebug) transient bool bShowFluidSimulation;
/** Whether to show the detail normalmap on the fluid */
var(FluidDebug) transient bool bShowFluidDetail;
/** Whether to enable a force for debugging */
var(FluidDebug) bool bTestRipple;
/** Whether the test ripple should center on the detail texture or the main grid. */
var(FluidDebug) bool bTestRippleCenterOnDetail;
/** Number of quads in the simulated grid (along the X-axis) */
var(Fluid) int SimulationQuadsX;
/** Number of quads in the simulated grid (along the Y-axis) */
var(Fluid) int SimulationQuadsY;
/** The size of a grid cell in the vertex simulation (in world space units) */
var(Fluid) float GridSpacing;
/** Fluids automatically draw a low-resolution grid when they are deactivated. A reasonable value is needed for vertex fogging to work when the fluid is translucent. A maximum of 65000 vertices are allowed before GridSpacingLowRes is clamped. */
var(Fluid) float GridSpacingLowRes;
/** Target actor which the simulation grid will center around.  If none is provided, the simulation grid will center around the active camera. */
var(Fluid) Actor TargetSimulation;
/** How much the GPU should tessellate the fluid grid. (Only used on platforms that completely supports GPU tessellation.) */
var(Fluid) float GPUTessellationFactor;
/** How much to dampen the amplitude of waves in the fluid (0.0-30.0) */
var(Fluid) float FluidDamping;
/** Wave travel speed factor for the simulation grid (0.0-1.0) */
var(Fluid) float FluidTravelSpeed;
/** Wave height scale - higher value produces higher waves */
var(Fluid) float FluidHeightScale;
/** Fluid update rate in number of updates per second */
var(Fluid) float FluidUpdateRate;
/** How much ripple to make when fluid is hit by a weapon or touched by a object for the first time. */
var(Fluid) float ForceImpact;
/** How much ripple to make when an Actor moves through the fluid. */
var(Fluid) float ForceContinuous;
/** Increasing this value adds more contrast to the lighting by exaggerating the curvature for the fluid normals. */
var(Fluid) float LightingContrast;
/** Target actor which the detail texture will center around.  If none is provided, the detail texture will center around the active camera. */
var(Fluid) Actor TargetDetail;
/** Distance between the camera and the closest fluid edge where the fluid will deactivate and start rendering as a simple flat quad. */
var(Fluid) float DeactivationDistance;
/** Number of simulation cells along each axis in the detail texture */
var(FluidDetail) int DetailResolution;
/** World space size of one edge of the detail texture */
var(FluidDetail) float DetailSize;
/** How much to dampen the amplitude of waves in the detail texture (0.0-30.0) */
var(FluidDetail) float DetailDamping;
/** Wave travel speed factor for the detail texture (0.0-1.0) */
var(FluidDetail) float DetailTravelSpeed;
/** How much of an applied force should be transferred to the detail texture (0.0-1.0) */
var(FluidDetail) float DetailTransfer;
/** Wave height scale for the detail texture - higher value produces higher waves */
var(FluidDetail) float DetailHeightScale;
/** Fluid update rate in number of updates per second */
var(FluidDetail) float DetailUpdateRate;
/** The length of the visualized normals, when bShowSimulationNormals is turned on */
var(FluidDebug) float NormalLength;
/** Angular speed of the test ripple */
var(FluidDebug) float TestRippleSpeed;
/** Number of seconds between each pling on the test ripple. 0 makes it continuous. */
var(FluidDebug) float TestRippleFrequency;
/** Radius of the test ripple, in world space */
var(FluidDebug) float TestRippleRadius;
/** #if WITH_S1zzangse */
var(Fluid) float FluidWidth;
var(Fluid) float FluidHeight;
var private native transient float TestRippleTime;
var private native transient float TestRippleAngle;
var private native transient float DeactivationTimer;
var private native transient float ViewDistance;
var private native transient Vector SimulationPosition;
var private native transient Vector DetailPosition;
var const array<byte> ClampMap;
var private const array<ShadowMap2D> ShadowMaps;
var private native const LightMapRef LightMap;
var private native const transient Pointer FluidSimulation;

// Export UFluidSurfaceComponent::execApplyForce(FFrame&, void* const)
native final function ApplyForce(Vector WorldPos, float Strength, float Radius, optional bool bImpulse);

// Export UFluidSurfaceComponent::execSetDetailPosition(FFrame&, void* const)
native final function SetDetailPosition(Vector WorldPos);

// Export UFluidSurfaceComponent::execSetSimulationPosition(FFrame&, void* const)
native final function SetSimulationPosition(Vector WorldPos);

defaultproperties
{
    LightMapResolution=128
    LightmassSettings=(bUseTwoSidedLighting=false,bShadowIndirectOnly=false,bUseEmissiveForStaticLighting=false,EmissiveLightFalloffExponent=2.0,EmissiveLightExplicitInfluenceRadius=0.0,EmissiveBoost=1.0,DiffuseBoost=1.0,SpecularBoost=1.0,FullyOccludedSamplesFraction=1.0)
    EnableSimulation=true
    EnableDetail=true
    bShowFluidSimulation=true
    bShowFluidDetail=true
    SimulationQuadsX=200
    SimulationQuadsY=200
    GridSpacing=10.0
    GridSpacingLowRes=800.0
    GPUTessellationFactor=1.0
    FluidDamping=1.0
    FluidTravelSpeed=1.0
    FluidHeightScale=1.0
    FluidUpdateRate=30.0
    ForceImpact=-3.0
    ForceContinuous=-200.0
    LightingContrast=1.0
    DeactivationDistance=3000.0
    DetailResolution=256
    DetailSize=500.0
    DetailDamping=1.0
    DetailTravelSpeed=1.0
    DetailTransfer=0.50
    DetailHeightScale=1.0
    DetailUpdateRate=30.0
    NormalLength=10.0
    TestRippleSpeed=1.0
    TestRippleFrequency=1.0
    TestRippleRadius=30.0
    FluidWidth=2000.0
    FluidHeight=2000.0
    ReplacementPrimitive=none
    bIgnoreNearPlaneIntersection=true
    bForceDirectLightMap=true
    bAcceptsLights=true
    bUsePrecomputedShadows=true
    CollideActors=true
    BlockZeroExtent=true
    BlockNonZeroExtent=true
    bTickInEditor=true
}