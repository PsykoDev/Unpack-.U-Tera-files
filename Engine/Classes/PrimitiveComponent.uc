/*******************************************************************************
 * PrimitiveComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PrimitiveComponent extends ActorComponent
    abstract
    native(Mesh)
    noexport;

enum ERBCollisionChannel
{
    RBCC_Default,
    RBCC_Nothing,
    RBCC_Pawn,
    RBCC_Vehicle,
    RBCC_Water,
    RBCC_GameplayPhysics,
    RBCC_EffectPhysics,
    RBCC_Untitled1,
    RBCC_Untitled2,
    RBCC_Untitled3,
    RBCC_Untitled4,
    RBCC_Cloth,
    RBCC_FluidDrain,
    RBCC_SoftBody,
    RBCC_FracturedMeshPart,
    RBCC_BlockingVolume,
    RBCC_DeadPawn,
    RBCC_Clothing,
    RBCC_ClothingCollision,
    RBCC_MAX
};

enum GJKResult
{
    GJK_Intersect,
    GJK_NoIntersection,
    GJK_Fail,
    GJK_MAX
};

enum ERadialImpulseFalloff
{
    RIF_Constant,
    RIF_Linear,
    RIF_MAX
};

struct MaterialViewRelevance
{
    var bool bOpaque;
    var bool bTranslucent;
    var bool bDistortion;
    var bool bOneLayerDistortionRelevance;
    var bool bLit;
    var bool bUsesSceneColor;

    structdefaultproperties
    {
        bOpaque=false
        bTranslucent=false
        bDistortion=false
        bOneLayerDistortionRelevance=false
        bLit=false
        bUsesSceneColor=false
    }
};

struct RBCollisionChannelContainer
{
    /**  
     *Container for indicating a set of collision channel that this object will collide with.
     *       Mirrored manually in UnPhysPublic.h
     */
    var() const bool Default;
    var const bool Nothing;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool Pawn;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool Vehicle;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool Water;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool GameplayPhysics;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool EffectPhysics;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool Untitled1;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool Untitled2;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool Untitled3;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool Untitled4;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool Cloth;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool FluidDrain;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool SoftBody;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool FracturedMeshPart;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool BlockingVolume;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool DeadPawn;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool Clothing;
    /** This is reserved to allow an object to opt-out of all collisions, and should not be set. */
    var() const bool ClothingCollision;

    structdefaultproperties
    {
        Default=false
        Nothing=false
        Pawn=false
        Vehicle=false
        Water=false
        GameplayPhysics=false
        EffectPhysics=false
        Untitled1=false
        Untitled2=false
        Untitled3=false
        Untitled4=false
        Cloth=false
        FluidDrain=false
        SoftBody=false
        FracturedMeshPart=false
        BlockingVolume=false
        DeadPawn=false
        Clothing=false
        ClothingCollision=false
    }
};

var native const transient int Tag;
var native const transient BoxSphereBounds Bounds;
var const transient bool bUseBoundsOfOwnerActorForDistanceCulling;
var native const transient BoxSphereBounds BoundsOfOwnerActor;
var private native const transient Pointer SceneInfo;
var private native const int DetachFence;
var native const transient float LocalToWorldDeterminant;
var native const transient Matrix LocalToWorld;
var native const transient int MotionBlurInfoIndex;
var private noimport native const array<Pointer> DecalList;
var private const export editinline transient array<export editinline DecalComponent> DecalsToReattach;
var const export editinline PrimitiveComponent ShadowParent;
/** Replacement primitive to draw instead of this one (multiple UPrim's will point to the same Replacement) */
var(Rendering) crosslevelpassive export editinline PrimitiveComponent ReplacementPrimitive;
var const export editinline transient FogVolumeDensityComponent FogVolumeComponent;
var const export editinline transient LightComponent OverrideLightComponent;
var const export editinline LightEnvironmentComponent LightEnvironment;
var private const export editinline transient LightEnvironmentComponent PreviousLightEnvironment;
/**  
 *The minimum distance at which the primitive should be rendered,
 * measured in world space units from the center of the primitive's bounding sphere to the camera position.
 */
var(Rendering) float MinDrawDistance;
/**  
 *The distance at which the renderer will switch from parent (low LOD) to children (high LOD).
 * This is basically the same as MinDrawDistance, except that the low LOD will draw even up close, if there are no children.
 * This is needed so the high lod meshes can be in a streamable sublevel, and if streamed out, the low LOD will draw up close.
 */
var(Rendering) float MassiveLODDistance;
/**  
 *Max draw distance exposed to LDs. The real max draw distance is the min (disregarding 0) of this and volumes affecting this object.
 * This is renamed to LDMaxDrawDistance in c++
 */
var(Rendering) private const noexport float MaxDrawDistance;
/**  
 *The distance to cull this primitive at.
 * A CachedMaxDrawDistance of 0 indicates that the primitive should not be culled by distance.
 */
var(Rendering) editconst float CachedMaxDrawDistance;
/**  
 *Scalar controlling the amount of motion blur to be applied when object moves.
 * 0=none, 1=full instance motion blur(default), value should be 0 or bigger
 */
var(Rendering) float MotionBlurInstanceScale;
var private const noexport deprecated float CullDistance;
var editconst deprecated float CachedCullDistance;
/** The scene depth priority group to draw the primitive in. */
var(Rendering) const Scene.ESceneDepthPriorityGroup DepthPriorityGroup;
var const Scene.ESceneDepthPriorityGroup ViewOwnerDepthPriorityGroup;
/** If detail mode is > system detail mode, primitive won't be rendered. */
var(Rendering) const Scene.EDetailMode DetailMode;
/** Enum indicating what type of object this should be considered for rigid body collision. */
var(Collision) const PrimitiveComponent.ERBCollisionChannel RBChannel;
/**  
 *Used for creating one-way physics interactions (via constraints or contacts)
 *       Groups with lower RBDominanceGroup push around higher values in a 'one way' fashion. Must be <32.
 */
var(Physics) byte RBDominanceGroup;
var byte PreviewEnvironmentShadowing;
var const bool bUseViewOwnerDepthPriorityGroup;
/** Whether to accept cull distance volumes to modify cached cull distance. */
var(Rendering) const bool bAllowCullDistanceVolume;
var(Rendering) const bool HiddenGame;
var(Rendering) const bool HiddenEditor;
/** If this is True, this component won't be visible when the view actor is the component's owner, directly or indirectly. */
var(Rendering) const bool bOwnerNoSee;
/** If this is True, this component will only be visible when the view actor is the component's owner, directly or indirectly. */
var(Rendering) const bool bOnlyOwnerSee;
/** If true, bHidden on the Owner of this component will be ignored. */
var(Rendering) const bool bIgnoreOwnerHidden;
var bool bUseAsOccluder;
/** If this is True, this component doesn't need exact occlusion info. */
var(Rendering) bool bAllowApproximateOcclusion;
var bool bFirstFrameOcclusion;
var bool bIgnoreNearPlaneIntersection;
var bool bSelectable;
/** If TRUE, forces mips for textures used by this component to be resident when this component's level is loaded. */
var(Rendering) const bool bForceMipStreaming;
var const deprecated bool bAcceptsDecals;
var const deprecated bool bAcceptsDecalsDuringGameplay;
/** If TRUE, this primitive accepts static level placed decals in the editor. */
var(Rendering) const bool bAcceptsStaticDecals;
/** If TRUE, this primitive accepts dynamic decals spawned during gameplay. */
var(Rendering) const bool bAcceptsDynamicDecals;
var native const transient bool bIsRefreshingDecals;
/** If TRUE, this primitive accepts foliage. */
var(Rendering) const bool bAcceptsFoliage;
var transient bool bAllowDecalAutomaticReAttach;
var bool bUsePerInstanceHitProxies;
/**  
 *Whether to cast any shadows or not
 * 
 * controls whether the primitive component should cast a shadow or not. Currently dynamic primitives will not receive shadows from static objects unless both this flag and bCastDynamicSahdow are enabled.
 */
var(Lighting) bool CastShadow;
/**  
 *If true, forces all static lights to use light-maps for direct lighting on this primitive, regardless of the light's UseDirectLightMap property.
 * 
 * forces the use of lightmaps for all static lights affecting this primitive even though the light might not be set to use light maps. This means that the primitive will not receive any shadows from dynamic objects obstructing static lights. It will correctly shadow in the case of dynamic lights
 */
var(Lighting) const bool bForceDirectLightMap;
/**  
 *If false, primitive does not cast dynamic shadows.
 * 
 * controls whether the primitive should cast shadows in the case of non precomputed shadowing like e.g. the primitive being in between a light and a dynamic object. This flag is only used if CastShadow is TRUE. Currently dynamic primitives will not receive shadows from static objects unless both this flag and CastShadow are enabled.
 */
var(Lighting) bool bCastDynamicShadow;
/** Whether the object should cast a static shadow from shadow casting lights.  Also requires Cast Shadow to be set to True. */
var(Lighting) bool bCastStaticShadow;
/**  
 *If true, the primitive will only shadow itself and will not cast a shadow on other primitives.
 * This can be used as an optimization when the shadow on other primitives won't be noticeable.
 */
var(Lighting) bool bSelfShadowOnly;
/**  
 *For mobile platforms only! If true, the primitive will not receive projected mod shadows, not from itself nor any other mod shadow caster.
 * This can be used to avoid self-shadowing artifacts.
 */
var(Lighting) bool bNoModSelfShadow;
/**  
 *Optimization for objects which don't need to receive dominant light shadows.
 * This is useful for objects which eat up a lot of GPU time and are heavily texture bound yet never receive noticeable shadows from dominant lights like trees.
 */
var(Lighting) bool bAcceptsDynamicDominantLightShadows;
/**  
 *If TRUE, the primitive will cast shadows even if bHidden is TRUE.
 * 
 *       Controls whether the primitive should cast shadows when hidden.
 *       This flag is only used if CastShadow is TRUE.
 */
var(Lighting) bool bCastHiddenShadow;
/** Whether this primitive should cast dynamic shadows as if it were a two sided material. */
var(Lighting) bool bCastShadowAsTwoSided;
/**  
 *Does this primitive accept lights?
 * 
 * controls whether the primitive accepts any lights. Should be set to FALSE for e.g. unlit objects as its a nice optimization - especially for larger objects.
 */
var(Lighting) const bool bAcceptsLights;
/**  
 *Whether this primitives accepts dynamic lights
 * 
 * controls whether the object should be affected by dynamic lights.
 */
var(Lighting) const bool bAcceptsDynamicLights;
/**  
 *If TRUE, dynamically lit translucency on this primitive will render in one pass,
 * Which is cheaper and ensures correct blending but approximates lighting using one directional light and all other lights in an unshadowed SH environment.
 * If FALSE, dynamically lit translucency will render in multiple passes which uses more shader instructions and results in incorrect blending.
 */
var(Lighting) const bool bUseOnePassLightingOnTranslucency;
/** Whether to allow the primitive to use precomputed shadows or lighting. */
var(Lighting) const bool bUsePrecomputedShadows;
var private const transient bool bHasExplicitShadowParent;
var deprecated bool bAllowAmbientOcclusion;
/** Collision flags. */
var(Collision) const bool CollideActors;
var const bool bExcludeFromWorldSpatialOctree;
var const bool AlwaysCheckCollision;
var(Collision) const bool BlockActors;
var(Collision) const bool BlockZeroExtent;
var(Collision) const bool BlockNonZeroExtent;
/** TRUE if this primitive is eligible to block camera traces, FALSE if the camera should ignore it. */
var(Collision) const bool CanBlockCamera;
var(Collision) const bool BlockRigidBody;
/** If TRUE will block foot placement line checks (default). FALSE will skip right through. */
var(Collision) const bool bBlockFootPlacement;
/** Never create any physics engine representation for this body. */
var(Physics) const bool bDisableAllRigidBody;
/** When creating rigid body, will skip normal geometry creation step, and will rely on ModifyNxActorDesc to fill in geometry. */
var(Physics) const bool bSkipRBGeomCreation;
/** Flag that indicates if OnRigidBodyCollision function should be called for physics collisions involving this PrimitiveComponent. */
var(Physics) const bool bNotifyRigidBodyCollision;
/** Whether this object should act as a 'drain' for fluid, and destroy fluid particles when they contact it. */
var(Physics) const bool bFluidDrain;
/** Indicates that fluid interaction with this object should be 'two-way' - that is, force should be applied to both fluid and object. */
var(Physics) const bool bFluidTwoWay;
/** Will ignore radial impulses applied to this component. */
var(Physics) bool bIgnoreRadialImpulse;
/** Will ignore radial forces applied to this component. */
var(Physics) bool bIgnoreRadialForce;
/** Will ignore force field applied to this component. */
var(Physics) bool bIgnoreForceField;
/**  
 *Place into a NxCompartment that will run in parallel with the primary scene's physics with potentially different simulation parameters.
 *  If double buffering is enabled in the WorldInfo then physics will run in parallel with the entire game for this component.
 */
var(Physics) const bool bUseCompartment;
var private const bool AlwaysLoadOnClient;
var private const bool AlwaysLoadOnServer;
/** Allow certain components to render even if the parent actor is part of the camera's HiddenActors array. */
var() bool bIgnoreHiddenActorsMembership;
var() const bool AbsoluteTranslation;
var() const bool AbsoluteRotation;
var() const bool AbsoluteScale;
var bool bAllowShadowFade;
var bool bSupportedOnMobile;
var native const transient bool bWasSNFiltered;
var native const transient array<int> OctreeNodes;
var native const transient array<int> OctreeNodeMap;
var native transient bool bS1GameObject;
var native transient bool bForceNoCull;
var native transient bool bUseOverlayMaterial;
var native transient string OverlayMIName;
var native transient float fOverlayAlpha;
var native transient bool bUseClearAlphaRender;
var native transient bool bUseCulledTranslucent;
var native transient bool bUseCulledTranslucentForBackgroundObject;
/**  
 *Translucent objects with a lower sort priority draw behind objects with a higher priority.
 * Translucent objects with the same priority are rendered from back-to-front based on their bounds origin.
 * 
 * Ignored if the object is not translucent.  The default priority is zero.
 * Warning: This should never be set to a non-default value unless you know what you are doing, as it will prevent the renderer from sorting correctly.
 * It is especially problematic on dynamic gameplay effects.
 */
var(Rendering) int TranslucencySortPriority;
var duplicatetransient int VisibilityId;
/** Lighting channels controlling light/ primitive interaction. Only allows interaction if at least one channel is shared */
var(Lighting) const LightingChannelContainer LightingChannels;
/** Types of objects that this physics objects will collide with. */
var(Collision) const RBCollisionChannelContainer RBCollideWithChannels;
/** Allows you to override the PhysicalMaterial to use for this PrimitiveComponent. */
var(Physics) const PhysicalMaterial PhysMaterialOverride;
var duplicatetransient native const RB_BodyInstance BodyInstance;
var native const transient Matrix CachedParentToWorld;
var() const Vector Translation;
var() const Rotator Rotation;
var() const float Scale<UIMin=0.0|UIMax=4.0>;
var() const Vector Scale3D;
/**  
 *Scales the bounds of the object.
 * This is useful when using World Position Offset to animate the vertices of the object outside of its bounds.
 * Warning: Increasing the bounds of an object will reduce performance and shadow quality!
 * Currently only used by StaticMeshComponent and SkeletalMeshComponent.
 */
var() const float BoundsScale<UIMin=1|UIMax=10.0>;
var const transient float LastSubmitTime;
var transient float LastRenderTime;
var float ScriptRigidBodyCollisionThreshold;

// Export UPrimitiveComponent::execAddImpulse(FFrame&, void* const)
native final function AddImpulse(Vector Impulse, optional Vector Position, optional name BoneName, optional bool bVelChange);

// Export UPrimitiveComponent::execAddRadialImpulse(FFrame&, void* const)
native final function AddRadialImpulse(Vector Origin, float Radius, float Strength, PrimitiveComponent.ERadialImpulseFalloff Falloff, optional bool bVelChange);

// Export UPrimitiveComponent::execAddForce(FFrame&, void* const)
native final function AddForce(Vector Force, optional Vector Position, optional name BoneName);

// Export UPrimitiveComponent::execAddRadialForce(FFrame&, void* const)
native final function AddRadialForce(Vector Origin, float Radius, float Strength, PrimitiveComponent.ERadialImpulseFalloff Falloff);

// Export UPrimitiveComponent::execAddTorque(FFrame&, void* const)
native final function AddTorque(Vector Torque, optional name BoneName);

// Export UPrimitiveComponent::execSetRBLinearVelocity(FFrame&, void* const)
native final function SetRBLinearVelocity(Vector NewVel, optional bool bAddToCurrent);

// Export UPrimitiveComponent::execSetRBAngularVelocity(FFrame&, void* const)
native final function SetRBAngularVelocity(Vector NewAngVel, optional bool bAddToCurrent);

// Export UPrimitiveComponent::execRetardRBLinearVelocity(FFrame&, void* const)
native final function RetardRBLinearVelocity(Vector RetardDir, float VelScale);

// Export UPrimitiveComponent::execSetRBPosition(FFrame&, void* const)
native final function SetRBPosition(Vector NewPos, optional name BoneName);

// Export UPrimitiveComponent::execSetRBRotation(FFrame&, void* const)
native final function SetRBRotation(Rotator NewRot, optional name BoneName);

// Export UPrimitiveComponent::execWakeRigidBody(FFrame&, void* const)
native final function WakeRigidBody(optional name BoneName);

// Export UPrimitiveComponent::execPutRigidBodyToSleep(FFrame&, void* const)
native final function PutRigidBodyToSleep(optional name BoneName);

// Export UPrimitiveComponent::execRigidBodyIsAwake(FFrame&, void* const)
native final function bool RigidBodyIsAwake(optional name BoneName);

// Export UPrimitiveComponent::execSetBlockRigidBody(FFrame&, void* const)
native final function SetBlockRigidBody(bool bNewBlockRigidBody);

// Export UPrimitiveComponent::execSetRBCollidesWithChannel(FFrame&, void* const)
native final function SetRBCollidesWithChannel(PrimitiveComponent.ERBCollisionChannel Channel, bool bNewCollides);

// Export UPrimitiveComponent::execSetRBCollisionChannels(FFrame&, void* const)
native final function SetRBCollisionChannels(RBCollisionChannelContainer Channels);

// Export UPrimitiveComponent::execSetRBChannel(FFrame&, void* const)
native final function SetRBChannel(PrimitiveComponent.ERBCollisionChannel Channel);

// Export UPrimitiveComponent::execSetNotifyRigidBodyCollision(FFrame&, void* const)
native final function SetNotifyRigidBodyCollision(bool bNewNotifyRigidBodyCollision);

// Export UPrimitiveComponent::execInitRBPhys(FFrame&, void* const)
native final function InitRBPhys();

// Export UPrimitiveComponent::execSetPhysMaterialOverride(FFrame&, void* const)
native final function SetPhysMaterialOverride(PhysicalMaterial NewPhysMaterial);

// Export UPrimitiveComponent::execGetRootBodyInstance(FFrame&, void* const)
native final function RB_BodyInstance GetRootBodyInstance();

// Export UPrimitiveComponent::execSetRBDominanceGroup(FFrame&, void* const)
native final function SetRBDominanceGroup(byte InDomGroup);

// Export UPrimitiveComponent::execShouldComponentAddToScene(FFrame&, void* const)
native final function bool ShouldComponentAddToScene();

// Export UPrimitiveComponent::execSetHidden(FFrame&, void* const)
native final function SetHidden(bool NewHidden);

// Export UPrimitiveComponent::execSetOwnerNoSee(FFrame&, void* const)
native final function SetOwnerNoSee(bool bNewOwnerNoSee);

// Export UPrimitiveComponent::execSetOnlyOwnerSee(FFrame&, void* const)
native final function SetOnlyOwnerSee(bool bNewOnlyOwnerSee);

// Export UPrimitiveComponent::execSetIgnoreOwnerHidden(FFrame&, void* const)
native final function SetIgnoreOwnerHidden(bool bNewIgnoreOwnerHidden);

// Export UPrimitiveComponent::execSetShadowParent(FFrame&, void* const)
native final function SetShadowParent(PrimitiveComponent NewShadowParent);

// Export UPrimitiveComponent::execSetLightEnvironment(FFrame&, void* const)
native final function SetLightEnvironment(LightEnvironmentComponent NewLightEnvironment);

// Export UPrimitiveComponent::execSetCullDistance(FFrame&, void* const)
native final function SetCullDistance(float NewCullDistance);

// Export UPrimitiveComponent::execSetLightingChannels(FFrame&, void* const)
native final function SetLightingChannels(LightingChannelContainer NewLightingChannels);

// Export UPrimitiveComponent::execSetDepthPriorityGroup(FFrame&, void* const)
native final function SetDepthPriorityGroup(Scene.ESceneDepthPriorityGroup NewDepthPriorityGroup);

// Export UPrimitiveComponent::execSetViewOwnerDepthPriorityGroup(FFrame&, void* const)
native final function SetViewOwnerDepthPriorityGroup(bool bNewUseViewOwnerDepthPriorityGroup, Scene.ESceneDepthPriorityGroup NewViewOwnerDepthPriorityGroup);

// Export UPrimitiveComponent::execSetTraceBlocking(FFrame&, void* const)
native final function SetTraceBlocking(bool NewBlockZeroExtent, bool NewBlockNonZeroExtent);

// Export UPrimitiveComponent::execSetActorCollision(FFrame&, void* const)
native final function SetActorCollision(bool NewCollideActors, bool NewBlockActors, optional bool NewAlwaysCheckCollision);

// Export UPrimitiveComponent::execSetTranslation(FFrame&, void* const)
native function SetTranslation(Vector NewTranslation);

// Export UPrimitiveComponent::execSetRotation(FFrame&, void* const)
native function SetRotation(Rotator NewRotation);

// Export UPrimitiveComponent::execSetScale(FFrame&, void* const)
native function SetScale(float NewScale);

// Export UPrimitiveComponent::execSetScale3D(FFrame&, void* const)
native function SetScale3D(Vector NewScale3D);

// Export UPrimitiveComponent::execSetAbsolute(FFrame&, void* const)
native function SetAbsolute(optional bool NewAbsoluteTranslation, optional bool NewAbsoluteRotation, optional bool NewAbsoluteScale);

// Export UPrimitiveComponent::execGetPosition(FFrame&, void* const)
native function Vector GetPosition();

// Export UPrimitiveComponent::execGetRotation(FFrame&, void* const)
native function Rotator GetRotation();

// Export UPrimitiveComponent::execClosestPointOnComponentToPoint(FFrame&, void* const)
native final function PrimitiveComponent.GJKResult ClosestPointOnComponentToPoint(out Vector POI, out Vector Extent, out Vector OutPointA, out Vector OutPointB);

// Export UPrimitiveComponent::execClosestPointOnComponentToComponent(FFrame&, void* const)
native function PrimitiveComponent.GJKResult ClosestPointOnComponentToComponent(out PrimitiveComponent OtherComponent, out Vector PointOnComponentA, out Vector PointOnComponentB);

defaultproperties
{
    ReplacementPrimitive=none
    MotionBlurInstanceScale=1.0
    DepthPriorityGroup=ESceneDepthPriorityGroup.SDPG_World
    RBDominanceGroup=15
    PreviewEnvironmentShadowing=180
    bAllowCullDistanceVolume=true
    bSelectable=true
    bAcceptsFoliage=true
    bAllowDecalAutomaticReAttach=true
    bCastDynamicShadow=true
    bCastStaticShadow=true
    bAcceptsDynamicDominantLightShadows=true
    bAcceptsDynamicLights=true
    bUseOnePassLightingOnTranslucency=true
    CanBlockCamera=true
    bBlockFootPlacement=true
    AlwaysLoadOnClient=true
    AlwaysLoadOnServer=true
    bAllowShadowFade=true
    bSupportedOnMobile=true
    VisibilityId=-1
    Scale=1.0
    Scale3D=(X=1.0,Y=1.0,Z=1.0)
    BoundsScale=1.0
    LastRenderTime=-1000.0
}