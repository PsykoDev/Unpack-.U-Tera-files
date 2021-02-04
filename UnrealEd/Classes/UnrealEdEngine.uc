/*******************************************************************************
 * UnrealEdEngine generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UnrealEdEngine extends EditorEngine
    transient
    native
    config(Engine)
    noexport;

enum EPackageNotifyState
{
    NS_BalloonPrompted,
    NS_DialogPrompted,
    NS_PendingPrompt,
    NS_MAX
};

enum EEngineVerWarningState
{
    VWS_PendingWarn,
    VWS_Warned,
    VWS_WarningUnnecessary,
    VWS_MAX
};

struct native SkelSocketCopyInfo
{
    var name SocketName;
    var name BoneName;
    var Vector RelativeLocation;
    var Rotator RelativeRotation;
    var Vector RelativeScale;

    structdefaultproperties
    {
        SocketName=None
        BoneName=None
        RelativeLocation=(X=0.0,Y=0.0,Z=0.0)
        RelativeRotation=(Pitch=0,Yaw=0,Roll=0)
        RelativeScale=(X=0.0,Y=0.0,Z=0.0)
    }
};

struct native ClassMoveInfo
{
    var config string ClassName;
    var config string PackageName;
    var config string GroupName;
    var config bool bActive;

    structdefaultproperties
    {
        ClassName=""
        PackageName=""
        GroupName=""
        bActive=false
    }
};

var const noexport Pointer NotifyVtbl;
var const UnrealEdOptions EditorOptionsInst;
var const BrowserManager BrowserManager;
var const ThumbnailManager ThumbnailManager;
var config string BrowserManagerClassName;
var config string ThumbnailManagerClassName;
var const config int AutoSaveIndex;
var const float AutosaveCount;
var const bool bAutosaveCountPaused;
var const bool bIsAutoSaving;
var const Material MaterialCopyPasteBuffer;
var const array<Object> MatineeCopyPasteBuffer;
var const SoundCue SoundCueCopyPasteBuffer;
var native const array<SkelSocketCopyInfo> SkelSocketPasteBuffer;
var array<AnimationCompressionAlgorithm> AnimationCompressionAlgorithms;
var config array<config string> PackagesToBeFullyLoadedAtStartup;
var config array<config name> HiddenKismetClassNames;
var config array<config string> ApprovedPBRulesetCollections;
var config array<config ClassMoveInfo> ClassRelocationInfo;
var Actor CurrentLODParentActor;
var bool bNeedToPromptForCheckout;
var bool bNeedWarningForPkgEngineVer;
var native map<0, 0> PackageToNotifyState;
var native map<0, 0> PackagesCheckedForEngineVersion;
var array<string> SortedSpriteCategories;
var native map<0, 0> UnlocalizedCategoryToIndexMap;

defaultproperties
{
    NotifyVtbl=none
    PackagesToBeFullyLoadedAtStartup(0)="EditorMaterials"
    PackagesToBeFullyLoadedAtStartup(1)="EditorMeshes"
    PackagesToBeFullyLoadedAtStartup(2)="EditorResources"
    PackagesToBeFullyLoadedAtStartup(3)="EngineMaterials"
    PackagesToBeFullyLoadedAtStartup(4)="EngineFonts"
    PackagesToBeFullyLoadedAtStartup(5)="EngineResources"
    PackagesToBeFullyLoadedAtStartup(6)="Engine_MI_Shaders"
    PackagesToBeFullyLoadedAtStartup(7)="MapTemplateIndex"
}