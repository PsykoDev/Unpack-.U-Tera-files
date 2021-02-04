/*******************************************************************************
 * AnimNodeAimOffset generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimNodeAimOffset extends AnimNodeBlendBase
    native(Anim)
    hidecategories(Object,Object,Object,Object);

enum EAnimAimDir
{
    ANIMAIM_LEFTUP,
    ANIMAIM_CENTERUP,
    ANIMAIM_RIGHTUP,
    ANIMAIM_LEFTCENTER,
    ANIMAIM_CENTERCENTER,
    ANIMAIM_RIGHTCENTER,
    ANIMAIM_LEFTDOWN,
    ANIMAIM_CENTERDOWN,
    ANIMAIM_RIGHTDOWN,
    ANIMAIM_MAX
};

enum EAimID
{
    EAID_LeftUp,
    EAID_LeftDown,
    EAID_RightUp,
    EAID_RightDown,
    EAID_ZeroUp,
    EAID_ZeroDown,
    EAID_ZeroLeft,
    EAID_ZeroRight,
    EAID_CellLU,
    EAID_CellCU,
    EAID_CellRU,
    EAID_CellLC,
    EAID_CellCC,
    EAID_CellRC,
    EAID_CellLD,
    EAID_CellCD,
    EAID_CellRD,
    EAID_MAX
};

struct native atomicwhencooked immutablewhencooked AimTransform
{
    /**  
     *9 control points range:
     * 
     * Left  Center  Right
     * 
     * LU    CU              RU              Up
     * LC    CC              RC              Center
     * LD    CD              RD              Down
     */
    var() Quat Quaternion;
    /**  
     *9 control points range:
     * 
     * Left  Center  Right
     * 
     * LU    CU              RU              Up
     * LC    CC              RC              Center
     * LD    CD              RD              Down
     */
    var() Vector Translation;

    structdefaultproperties
    {
        Quaternion=(X=0.0,Y=0.0,Z=0.0,W=0.0)
        Translation=(X=0.0,Y=0.0,Z=0.0)
    }
};

struct native atomicwhencooked immutablewhencooked AimComponent
{
    /** Bone transformed */
    var() name BoneName;
    /** Left column */
    var() AimTransform LU;
    /** Left column */
    var() AimTransform LC;
    /** Left column */
    var() AimTransform LD;
    /** Center */
    var() AimTransform CU;
    /** Center */
    var() AimTransform CC;
    /** Center */
    var() AimTransform CD;
    /** Right */
    var() AimTransform RU;
    /** Right */
    var() AimTransform RC;
    /** Right */
    var() AimTransform RD;

    structdefaultproperties
    {
        BoneName=None
        LU=
/* Exception thrown while deserializing LU
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
        LC=
/* Exception thrown while deserializing LC
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
        LD=
/* Exception thrown while deserializing LD
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
        CU=
/* Exception thrown while deserializing CU
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
        CC=
/* Exception thrown while deserializing CC
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
        CD=
/* Exception thrown while deserializing CD
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
        RU=
/* Exception thrown while deserializing RU
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
        RC=
/* Exception thrown while deserializing RC
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
        RD=
/* Exception thrown while deserializing RD
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    }
};

struct native atomicwhencooked immutablewhencooked AimOffsetProfile
{
    /** Name of this aim-offset profile. */
    var() const editconst name ProfileName;
    /** Maximum horizontal range (min, max) for horizontal aiming. */
    var() Vector2D HorizontalRange;
    /** Maximum horizontal range (min, max) for vertical aiming. */
    var() Vector2D VerticalRange;
    var array<AimComponent> AimComponents;
    /**  
     *Names of animations to use when automatically generating offsets based animations for each direction.
     *               Animations are not actually used in-game - just for editor.
     */
    var() name AnimName_LU;
    /**  
     *Names of animations to use when automatically generating offsets based animations for each direction.
     *               Animations are not actually used in-game - just for editor.
     */
    var() name AnimName_LC;
    /**  
     *Names of animations to use when automatically generating offsets based animations for each direction.
     *               Animations are not actually used in-game - just for editor.
     */
    var() name AnimName_LD;
    /**  
     *Names of animations to use when automatically generating offsets based animations for each direction.
     *               Animations are not actually used in-game - just for editor.
     */
    var() name AnimName_CU;
    /**  
     *Names of animations to use when automatically generating offsets based animations for each direction.
     *               Animations are not actually used in-game - just for editor.
     */
    var() name AnimName_CC;
    /**  
     *Names of animations to use when automatically generating offsets based animations for each direction.
     *               Animations are not actually used in-game - just for editor.
     */
    var() name AnimName_CD;
    /**  
     *Names of animations to use when automatically generating offsets based animations for each direction.
     *               Animations are not actually used in-game - just for editor.
     */
    var() name AnimName_RU;
    /**  
     *Names of animations to use when automatically generating offsets based animations for each direction.
     *               Animations are not actually used in-game - just for editor.
     */
    var() name AnimName_RC;
    /**  
     *Names of animations to use when automatically generating offsets based animations for each direction.
     *               Animations are not actually used in-game - just for editor.
     */
    var() name AnimName_RD;

    structdefaultproperties
    {
        ProfileName=Default
        HorizontalRange=(X=-1.0,Y=1.0)
        VerticalRange=(X=-1.0,Y=1.0)
        AimComponents=none
        AnimName_LU=None
        AnimName_LC=None
        AnimName_LD=None
        AnimName_CU=None
        AnimName_CC=None
        AnimName_CD=None
        AnimName_RU=None
        AnimName_RC=None
        AnimName_RD=None
    }
};

/** Angle of aiming, between -1..+1 */
var() Vector2D Aim;
/** Angle offset applied to Aim before processing */
var() Vector2D AngleOffset;
/** If true, ignore Aim, and use the ForcedAimDir enum instead to determine which aim direction to draw. */
var() bool bForceAimDir;
/** Bake offsets from animations. */
var() bool bBakeFromAnimations;
/** if TRUE, pass through (skip additive animation blending) when mesh is not rendered */
var(Performance) bool bPassThroughWhenNotRendered;
/** When moving the slider, keep nodes with same property in sync. */
var(Editor) bool bSynchronizeNodesInEditor;
/** If the LOD of this skeletal mesh is at or above this LOD, then this node will do nothing. */
var(Performance) int PassThroughAtOrAboveLOD;
/** If bForceAimDir is true, this is the direction to render the character aiming in. */
var() AnimNodeAimOffset.EAnimAimDir ForcedAimDir;
var transient array<byte> RequiredBones;
var transient array<byte> AimCpntIndexLUT;
var transient AnimNodeAimOffset TemplateNode;
/** Array of different aiming 'profiles' */
var() editfixedsize array<AimOffsetProfile> Profiles;
/**  
 *Index of currently active Profile.
 *       Use the SetActiveProfileByName or SetActiveProfileByIndex function to change.
 */
var() const editconst int CurrentProfileIndex;

// Export UAnimNodeAimOffset::execSetActiveProfileByName(FFrame&, void* const)
native function SetActiveProfileByName(name ProfileName);

// Export UAnimNodeAimOffset::execSetActiveProfileByIndex(FFrame&, void* const)
native function SetActiveProfileByIndex(int ProfileIndex);

defaultproperties
{
    bSynchronizeNodesInEditor=true
    PassThroughAtOrAboveLOD=1000
    ForcedAimDir=EAnimAimDir.ANIMAIM_CENTERCENTER
    Children(0)=(Name=Input,Anim=none,Weight=1.0,BlendWeight=0.0,bMirrorSkeleton=false,bIsAdditive=false,DrawY=0)
    bFixNumChildren=true
}