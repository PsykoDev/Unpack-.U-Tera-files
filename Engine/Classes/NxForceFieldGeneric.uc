/*******************************************************************************
 * NxForceFieldGeneric generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class NxForceFieldGeneric extends NxForceField
    native(ForceField)
    placeable
    hidecategories(Navigation);

enum FFG_ForceFieldCoordinates
{
    FFG_CARTESIAN,
    FFG_SPHERICAL,
    FFG_CYLINDRICAL,
    FFG_TOROIDAL,
    FFG_MAX
};

var() editinline ForceFieldShape Shape;
var export editinline ActorComponent DrawComponent;
/** the Shape's internal 3 directional radii, for level designers to know the rough size of the force field */
var() float RoughExtentX;
var() float RoughExtentY;
var() float RoughExtentZ;
/** Type of Coordinates to define the force field */
var() NxForceFieldGeneric.FFG_ForceFieldCoordinates Coordinates;
/** Constant force vector that is applied inside force volume */
var() Vector Constant;
/** Rows of matrix that defines force depending on position */
var() Vector PositionMultiplierX;
var() Vector PositionMultiplierY;
var() Vector PositionMultiplierZ;
/** Vector that defines force depending on position */
var() Vector PositionTarget;
/** Rows of matrix that defines force depending on velocity */
var() Vector VelocityMultiplierX;
var() Vector VelocityMultiplierY;
var() Vector VelocityMultiplierZ;
/** Vector that defines force depending on velocity */
var() Vector VelocityTarget;
/** Vector that scales random noise added to the force */
var() Vector Noise;
/** Linear falloff for vector in chosen coordinate system */
var() Vector FalloffLinear;
/** Quadratic falloff for vector in chosen coordinate system */
var() Vector FalloffQuadratic;
/** Radius of torus in case toroidal coordinate system is used */
var() float TorusRadius;
var native const transient Pointer LinearKernel;

// Export UNxForceFieldGeneric::execDoInitRBPhys(FFrame&, void* const)
native function DoInitRBPhys();

defaultproperties
{
    RoughExtentX=200.0
    RoughExtentY=200.0
    RoughExtentZ=200.0
    TorusRadius=1.0
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.S_RadForce'
        SpriteCategoryName=Physics
        ReplacementPrimitive=none
        HiddenGame=true
        AlwaysLoadOnClient=false
        AlwaysLoadOnServer=false
    object end
    // Reference: SpriteComponent'Default__NxForceFieldGeneric.Sprite'
    Components(0)=Sprite
}