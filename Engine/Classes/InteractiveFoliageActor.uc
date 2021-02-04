/*******************************************************************************
 * InteractiveFoliageActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class InteractiveFoliageActor extends StaticMeshActor
    native(Foliage)
    placeable
    hidecategories(Navigation);

var private export editinline CylinderComponent CylinderComponent;
var private transient Vector TouchingActorEntryPosition;
var private transient Vector FoliageVelocity;
var private transient Vector FoliageForce;
var private transient Vector FoliagePosition;
/** Scales forces applied from damage events. */
var(FoliagePhysics) float FoliageDamageImpulseScale;
/** Scales forces applied from touch events. */
var(FoliagePhysics) float FoliageTouchImpulseScale;
/** Determines how strong the force that pushes toward the spring's center will be. */
var(FoliagePhysics) float FoliageStiffness;
/**  
 *Same as FoliageStiffness, but the strength of this force increases with the square of the distance to the spring's center.
 * This force is used to prevent the spring from extending past a certain point due to touch and damage forces.
 */
var(FoliagePhysics) float FoliageStiffnessQuadratic;
/**  
 *Determines the amount of energy lost by the spring as it oscillates.
 * This force is similar to air friction.
 */
var(FoliagePhysics) float FoliageDamping;
/** Clamps the magnitude of each damage force applied. */
var(FoliagePhysics) float MaxDamageImpulse;
/** Clamps the magnitude of each touch force applied. */
var(FoliagePhysics) float MaxTouchImpulse;
/** Clamps the magnitude of combined forces applied each update. */
var(FoliagePhysics) float MaxForce;
var float Mass;

// Export UInteractiveFoliageActor::execTakeDamage(FFrame&, void* const)
native simulated event TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, class<DamageType> DamageType, optional TraceHitInfo HitInfo, optional Actor DamageCauser);

// Export UInteractiveFoliageActor::execTouch(FFrame&, void* const)
native simulated event Touch(Actor Other, PrimitiveComponent OtherComp, Vector HitLocation, Vector HitNormal);

defaultproperties
{
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=200.0
        CollisionRadius=60.0
        ReplacementPrimitive=none
        CollideActors=true
        BlockZeroExtent=false
    object end
    // Reference: CylinderComponent'Default__InteractiveFoliageActor.CollisionCylinder'
    CylinderComponent=CollisionCylinder
    FoliageDamageImpulseScale=20.0
    FoliageTouchImpulseScale=10.0
    FoliageStiffness=10.0
    FoliageStiffnessQuadratic=0.30
    FoliageDamping=2.0
    MaxDamageImpulse=100000.0
    MaxTouchImpulse=1000.0
    MaxForce=100000.0
    Mass=1.0
    begin object name=FoliageMeshComponent0 class=InteractiveFoliageComponent
        ReplacementPrimitive=none
        bAllowApproximateOcclusion=true
        bAcceptsStaticDecals=false
        bForceDirectLightMap=true
        bUsePrecomputedShadows=true
    object end
    // Reference: InteractiveFoliageComponent'Default__InteractiveFoliageActor.FoliageMeshComponent0'
    StaticMeshComponent=FoliageMeshComponent0
    begin object name=FoliageMeshComponent0 class=InteractiveFoliageComponent
        ReplacementPrimitive=none
        bAllowApproximateOcclusion=true
        bAcceptsStaticDecals=false
        bForceDirectLightMap=true
        bUsePrecomputedShadows=true
    object end
    // Reference: InteractiveFoliageComponent'Default__InteractiveFoliageActor.FoliageMeshComponent0'
    Components(0)=FoliageMeshComponent0
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=200.0
        CollisionRadius=60.0
        ReplacementPrimitive=none
        CollideActors=true
        BlockZeroExtent=false
    object end
    // Reference: CylinderComponent'Default__InteractiveFoliageActor.CollisionCylinder'
    Components(1)=CollisionCylinder
    TickGroup=ETickingGroup.TG_DuringAsyncWork
    bStatic=false
    bNoDelete=true
    bWorldGeometry=false
    bBlockActors=false
    bProjTarget=true
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=200.0
        CollisionRadius=60.0
        ReplacementPrimitive=none
        CollideActors=true
        BlockZeroExtent=false
    object end
    // Reference: CylinderComponent'Default__InteractiveFoliageActor.CollisionCylinder'
    CollisionComponent=CollisionCylinder
}