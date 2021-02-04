/*******************************************************************************
 * EditorEngine generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class EditorEngine extends Engine
    transient
    native
    config(Engine)
    noexport
    implements(Interface_PylonGeometryProvider);

var private native const noexport Pointer VfTable_IInterface_PylonGeometryProvider;
var private native const noexport Pointer VfTable_FCallbackEventDevice;
var const Model TempModel;
var const Model ConversionTempModel;
var const TransBuffer Trans;
var const TextBuffer Results;
var const array<Pointer> ActorProperties;
var const Pointer LevelProperties;
var const Texture2D Bad;
var const Texture2D Bkgnd;
var const Texture2D BkgndHi;
var const Texture2D BadHighlight;
var const Texture2D MaterialArrow;
var const Texture2D MaterialBackdrop;
var const Font EditorFont;
var const transient SoundCue PreviewSoundCue;
var const export editinline transient AudioComponent PreviewAudioComponent;
var StaticMesh TexPropCube;
var StaticMesh TexPropSphere;
var StaticMesh TexPropPlane;
var StaticMesh TexPropCylinder;
var const bool bFastRebuild;
var const bool bBootstrapping;
var const bool bIsImportingT3D;
var const int TerrainEditBrush;
var const int ClickFlags;
var const Package ParentContext;
var const Vector ClickLocation;
var const Plane ClickPlane;
var const Vector MouseMovement;
var native const array<Pointer> ViewportClients;
var config float FarClippingPlane;
var Engine.Scene.EDetailMode DetailMode;
var const noexport Pointer ConstraintsVtbl;
/** Grid. */
var(Grid) noexport config bool GridEnabled;
var(Grid) noexport config bool SnapScaleEnabled;
var(Grid) noexport config bool SnapVertices;
/** Integer percentage amount to snap scaling to. */
var(Grid) noexport config int ScaleGridSize;
var(Grid) noexport config float SnapDistance;
/** FEditorConstraints::MAX_GRID_SIZES = 11 in native code */
var(Grid) noexport config float GridSizes[11];
/** Index into GridSizes Rotation grid. */
var(Grid) noexport config int CurrentGridSz;
var(RotationGrid) noexport config bool RotGridEnabled;
var(RotationGrid) noexport config Rotator RotGridSize;
var(RotationGrid) noexport config int AngleSnapType;
/** END FEditorConstraints Advanced. */
var(Advanced) config bool UseSizingBox;
var(Advanced) config bool UseAxisIndicator;
var(Advanced) config float FOVAngle;
var(Advanced) config bool GodMode;
/** The location to autosave to. */
var(Advanced) config string AutoSaveDir;
var(Advanced) config bool InvertwidgetZAxis;
var(Advanced) config string GameCommandLine;
/** the list of package names to compile when building scripts */
var(Advanced) globalconfig array<config string> EditPackages;
/** the base directory to use for finding .uc files to compile */
var(Advanced) config string EditPackagesInPath;
/** the directory to save compiled .u files to */
var(Advanced) config string EditPackagesOutPath;
/** the directory to save compiled .u files to when script is compiled with the -FINAL_RELEASE switch */
var(Advanced) config string FRScriptOutputPath;
/** If TRUE, always show the terrain in the overhead 2D view. */
var(Advanced) config bool AlwaysShowTerrain;
/** If TRUE, use the gizmo for rotating actors. */
var(Advanced) config bool UseActorRotationGizmo;
/** If TRUE, show translucent marker polygons on the builder brush and volumes. */
var(Advanced) config bool bShowBrushMarkerPolys;
/** If TRUE, use Maya camera controls. */
var(Advanced) config bool bUseMayaCameraControls;
/** If TRUE, parts of prefabs cannot be individually selected/edited. */
var(Advanced) config bool bPrefabsLocked;
/** If TRUE, socket snapping is enabled in the main level viewports. */
var(Advanced) config bool bEnableSocketSnapping;
/** If TRUE, socket names are enabled in the main level viewports. */
var(Advanced) config bool bEnableSocketNames;
/** If TRUE, determines if reachspecs should be built for this level's pathnodes (may not be necessary if using navmesh) */
var(Advanced) config bool bBuildReachSpecs;
var bool bEnableLODLocking;
/** If TRUE, actors can be grouped and grouping rules will be maintained. When deactivated, any currently existing groups will still be preserved. */
var(Advanced) config bool bGroupingActive;
var config string HeightMapExportClassName;
var config array<config name> HiddenActorFactoryNames;
var const array<ActorFactory> ActorFactories;
var array<Actor> ActorsForGlobalReattach;
var config array<config string> ClassMapPair;
var string UserOpenedFile;
/** Additional per-user/per-game options set in the .ini file. Should be in the form "?option1=X?option2?option3=Y" */
var(Advanced) config string InEditorGameURLOptions;
var const World PlayWorld;
var const Vector PlayWorldLocation;
var const Rotator PlayWorldRotation;
var const bool bIsPlayWorldQueued;
var const bool bStartInSpectatorMode;
var const bool bHasPlayWorldPlacement;
var const bool bUseMobilePreviewForPlayWorld;
var const int PlayWorldDestination;
var const int CurrentPlayWorldDestination;
var config int PlayInEditorWidth;
var config int PlayInEditorHeight;
var config bool bMobilePreviewPortrait;
var config int BuildPlayDevice;
/** Folders in which the editor looks for template map files */
var(Templates) config array<config string> TemplateMapFolders;
var const int PlayInEditorViewportIndex;
var string UserEditedPlayWorldURL;
var config int MatineeCaptureResolutionX;
var config int MatineeCaptureResolutionY;
var transient array<string> KismetDebuggerBreakpointQueue;
var transient bool bIsKismetDebuggerRequested;
var const Pointer InEditorPropagator;
var const Pointer RemotePropagator;
var bool bIsPushingView;
var const transient bool bDecalUpdateRequested;
var const transient TextureRenderTarget2D ScratchRenderTarget2048;
var const transient TextureRenderTarget2D ScratchRenderTarget1024;
var const transient TextureRenderTarget2D ScratchRenderTarget512;
var const transient TextureRenderTarget2D ScratchRenderTarget256;
var const transient Texture2D StreamingBoundsTexture;
var const EditorUserSettings UserSettings;
var native const Pointer EditorClassHierarchy;
var array<string> PreviewMeshNames;
var const export editinline transient StaticMeshComponent PreviewMeshComp;
var const int PreviewMeshIndex;
var const bool bPreviewPlayerHeight;
var config bool bCustomCameraAlignEmitter;
var config float CustomCameraAlignEmitterDistance;
var config bool bDrawSocketsInGMode;
var transient bool bDrawParticleHelpers;
var array<GroupActor> ActiveGroupActors;
var transient array<Actor> BufferLevelActors;
var bool bForcePlayFromHere;
var transient Actor LastCameraAlignTarget;
var transient bool bDoReferenceChecks;
var native transient map<0, 0> StartupPackageToWarnState;

defaultproperties
{
    Bad=Texture2D'EditorResources.Bad'
    Bkgnd=Texture2D'EditorResources.Bkgnd'
    BkgndHi=Texture2D'EditorResources.BkgndHi'
    BadHighlight=Texture2D'EditorResources.BadHighlight'
    MaterialArrow=Texture2D'EditorResources.MaterialArrow'
    MaterialBackdrop=Texture2D'EditorResources.MaterialBackdrop'
    EditorFont=Font'EditorResources.SmallFont'
    TexPropCube=StaticMesh'EditorMeshes.TexPropCube'
    TexPropSphere=StaticMesh'EditorMeshes.TexPropSphere'
    TexPropPlane=StaticMesh'EditorMeshes.TexPropPlane'
    TexPropCylinder=StaticMesh'EditorMeshes.TexPropCylinder'
    DetailMode=EDetailMode.None
    ConstraintsVtbl=none
    GridEnabled=true
    SnapScaleEnabled=true
    ScaleGridSize=5
    SnapDistance=10.0
    CurrentGridSz=4
    RotGridEnabled=true
    RotGridSize=(Pitch=1024,Yaw=1024,Roll=1024)
    UseAxisIndicator=true
    FOVAngle=60.0
    GodMode=true
    AutoSaveDir="..\\S1Game\\Autosaves"
    InvertwidgetZAxis=true
    GameCommandLine="-log"
    EditPackages(0)="Core"
    EditPackages(1)="Engine"
    EditPackages(2)="IpDrv"
    EditPackages(3)="GFxUI"
    EditPackages(4)="GameFramework"
    EditPackages(5)="UnrealEd"
    EditPackages(6)="GFxUIEditor"
    EditPackages(7)="WinDrv"
    EditPackages(8)="OnlineSubsystemPC"
    EditPackages(9)="OnlineSubsystemLive"
    EditPackages(10)="OnlineSubsystemSteamworks"
    EditPackages(11)="OnlineSubsystemGameCenter"
    EditPackages(12)="OnlineSubsystemGameCircle"
    EditPackages(13)="OnlineSubsystemPlayerGameServices"
    EditPackages(14)="SubstanceAir"
    EditPackages(15)="SubstanceAirEd"
    EditPackages(16)="S1Game"
    EditPackages(17)="GodHand"
    EditPackagesInPath="..\\Development\\Src"
    EditPackagesOutPath="..\\S1Game\\Script"
    FRScriptOutputPath="..\\S1Game\\ScriptFinalRelease"
    bUseMayaCameraControls=true
    bPrefabsLocked=true
    bGroupingActive=true
    HeightMapExportClassName="TerrainHeightMapExporterTextT3D"
    CurrentPlayWorldDestination=-1
    TemplateMapFolders(0)="..\\Engine\\Content\\Maps\\Templates"
    PlayInEditorViewportIndex=-1
    bCustomCameraAlignEmitter=true
    CustomCameraAlignEmitterDistance=100.0
    LocalPlayerClassName="UnrealEd.EditorPlayer"
    bSmoothFrameRate=false
    MaxSmoothedFrameRate=120.0
    MinSmoothedFrameRate=5.0
}