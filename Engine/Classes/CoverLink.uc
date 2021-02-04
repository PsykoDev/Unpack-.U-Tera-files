/*******************************************************************************
 * CoverLink generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class CoverLink extends NavigationPoint
    native
    config(Game)
    placeable
    hidecategories(Navigation,Lighting,LightColor,Force)
    classgroup(Cover);

const COVERLINK_ExposureDot = 0.4f;
const COVERLINK_EdgeCheckDot = 0.25f;
const COVERLINK_EdgeExposureDot = 0.85f;
const COVERLINK_DangerDist = 1536.f;

enum ECoverAction
{
    CA_Default,
    CA_BlindLeft,
    CA_BlindRight,
    CA_LeanLeft,
    CA_LeanRight,
    CA_PopUp,
    CA_BlindUp,
    CA_PeekLeft,
    CA_PeekRight,
    CA_PeekUp,
    CA_MAX
};

enum ECoverDirection
{
    CD_Default,
    CD_Left,
    CD_Right,
    CD_Up,
    CD_MAX
};

enum ECoverType
{
    CT_None,
    CT_Standing,
    CT_MidLevel,
    CT_MAX
};

enum ECoverLocationDescription
{
    CoverDesc_None,
    CoverDesc_InWindow,
    CoverDesc_InDoorway,
    CoverDesc_BehindCar,
    CoverDesc_BehindTruck,
    CoverDesc_OnTruck,
    CoverDesc_BehindBarrier,
    CoverDesc_BehindColumn,
    CoverDesc_BehindCrate,
    CoverDesc_BehindWall,
    CoverDesc_BehindStatue,
    CoverDesc_BehindSandbags,
    CoverDesc_MAX
};

enum EFireLinkID
{
    FLI_FireLink,
    FLI_RejectedFireLink,
    FLI_MAX
};

struct native atomicwhencooked immutablewhencooked CoverReference extends ActorReference
{
    /** Slot referenced in the link */
    var() int SlotIdx;
};

struct native atomicwhencooked immutablewhencooked CoverInfo
{
    /** Utility struct for referencing cover link slots. */
    var() editconst CoverLink Link;
    /** Utility struct for referencing cover link slots. */
    var() editconst int SlotIdx;

    structdefaultproperties
    {
        Link=none
        SlotIdx=0
    }
};

struct native atomicwhencooked immutablewhencooked CovPosInfo
{
    var CoverLink Link;
    var int LtSlotIdx;
    var int RtSlotIdx;
    var float LtToRtPct;
    var Vector Location;
    var Vector Normal;
    var Vector Tangent;

    structdefaultproperties
    {
        Link=none
        LtSlotIdx=-1
        RtSlotIdx=-1
        LtToRtPct=0.0
        Location=(X=0.0,Y=0.0,Z=0.0)
        Normal=(X=0.0,Y=0.0,Z=0.0)
        Tangent=(X=0.0,Y=0.0,Z=0.0)
    }
};

struct native atomicwhencooked immutablewhencooked FireLinkItem
{
    var CoverLink.ECoverType SrcType;
    var CoverLink.ECoverAction SrcAction;
    var CoverLink.ECoverType DestType;
    var CoverLink.ECoverAction DestAction;

    structdefaultproperties
    {
        SrcType=ECoverType.CT_None
        SrcAction=ECoverAction.CA_Default
        DestType=ECoverType.CT_None
        DestAction=ECoverAction.CA_Default
    }
};

struct native atomicwhencooked immutablewhencooked FireLink
{
    var array<byte> Interactions;
    var private const int PackedProperties_CoverPairRefAndDynamicInfo;
    var private bool bFallbackLink;
    var private bool bDynamicIndexInited;

    structdefaultproperties
    {
        Interactions=none
        PackedProperties_CoverPairRefAndDynamicInfo=0
        bFallbackLink=false
        bDynamicIndexInited=false
    }
};

struct native atomicwhencooked immutablewhencooked DynamicLinkInfo
{
    var Vector LastTargetLocation;
    var Vector LastSrcLocation;

    structdefaultproperties
    {
        LastTargetLocation=(X=0.0,Y=0.0,Z=0.0)
        LastSrcLocation=(X=0.0,Y=0.0,Z=0.0)
    }
};

struct native atomicwhencooked immutablewhencooked ExposedLink
{
    /** Slot that is dangerous to this link */
    var() const editconst CoverReference TargetActor;
    /**  
     *Scale of how dangerous this exposure is
     *               (0,255] -- ~0 = not very dangerous, 255 = extremely dangerous
     */
    var() byte ExposedScale;

    structdefaultproperties
    {
        TargetActor=
/* Exception thrown while deserializing TargetActor
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
        ExposedScale=0
    }
};

struct native atomicwhencooked immutablewhencooked SlotMoveRef
{
    var() PolyReference Poly;
    var() BasedPosition Dest;
    var() int Direction;

    structdefaultproperties
    {
        Poly=
/* Exception thrown while deserializing Poly
System.ArgumentException: Requested value '*' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
        Dest=(Base=none,Position=(X=0.0,Y=0.0,Z=0.0),CachedBaseLocation=(X=0.0,Y=0.0,Z=0.0),CachedBaseRotation=(Pitch=0,Yaw=0,Roll=0),CachedTransPosition=(X=0.0,Y=0.0,Z=0.0))
        Direction=0
    }
};

struct native atomicwhencooked immutablewhencooked CoverSlot
{
    var Pawn SlotOwner;
    var transient float SlotValidAfterTime;
    /** Gives LDs ability to force the type - CT_None == auto find */
    var() CoverLink.ECoverType ForceCoverType;
    /** Type of cover this slot provides */
    var(Auto) editconst CoverLink.ECoverType CoverType;
    /** Per-slot description tag.  If _None, fall back to the description in the CoverLink. */
    var() CoverLink.ECoverLocationDescription LocationDescription;
    var Vector LocationOffset;
    var Rotator RotationOffset;
    var array<CoverLink.ECoverAction> Actions;
    /** List of all attackable nodes */
    var() editconst array<editconst FireLink> FireLinks;
    /** List of coverlinks/slots that couldn't be shot at - used by COVERLINK_DYNAMIC */
    var() editconst transient array<editconst FireLink> RejectedFireLinks;
    var private array<int> ExposedCoverPackedProperties;
    var private int TurnTargetPackedProperties;
    var array<SlotMoveRef> SlipRefs;
    /**  
     *List of cover slots that should be claimed when this slot is claimed
     *               because they are overlapping
     */
    var(Auto) editconst array<editconst CoverInfo> OverlapClaimsList;
    /** Can we lean left/right to shoot from this slot? */
    var(Auto) bool bLeanLeft;
    /** Can we lean left/right to shoot from this slot? */
    var(Auto) bool bLeanRight;
    /** Can we popup? */
    var(Auto) bool bForceCanPopUp;
    /** Can we popup? */
    var(Auto) editconst bool bCanPopUp;
    /** Can we mantle over this cover? */
    var(Auto) editconst bool bCanMantle;
    /** Can we mantle up? */
    var(Auto) editconst bool bCanClimbUp;
    /** Can cover slip at this slot? */
    var(Auto) bool bForceCanCoverSlip_Left;
    /** Can cover slip at this slot? */
    var(Auto) bool bForceCanCoverSlip_Right;
    /** Can cover slip at this slot? */
    var(Auto) editconst bool bCanCoverSlip_Left;
    /** Can cover slip at this slot? */
    var(Auto) editconst bool bCanCoverSlip_Right;
    /** Can swat turn at this slot? */
    var(Auto) editconst bool bCanSwatTurn_Left;
    /** Can swat turn at this slot? */
    var(Auto) editconst bool bCanSwatTurn_Right;
    /** Is this slot currently enabled? */
    var() bool bEnabled;
    /** Is popping up allowed for midlevel/crouching cover? */
    var() bool bAllowPopup;
    /** Is mantling allowed here? */
    var() bool bAllowMantle;
    /** Is cover slip allowed? */
    var() bool bAllowCoverSlip;
    /** Is climbing up allowed here? */
    var() bool bAllowClimbUp;
    /** Is swat turn allowed? */
    var() bool bAllowSwatTurn;
    /** if this is on ground adjustments will be skipped */
    var() bool bForceNoGroundAdjust;
    /** Slot can only be used by players, not AI */
    var() bool bPlayerOnly;
    /** Override the default behavior of popup on target preffered over lean out */
    var() bool bPreferLeanOverPopup;
    var transient bool bDestructible;
    var transient bool bSelected;
    /** Map Error: Cover slot failed to find surface to align to */
    var() editconst transient bool bFailedToFindSurface;

    structdefaultproperties
    {
        SlotOwner=none
        SlotValidAfterTime=0.0
        ForceCoverType=ECoverType.CT_None
        CoverType=ECoverType.CT_None
        LocationDescription=ECoverLocationDescription.CoverDesc_None
        LocationOffset=(X=0.0,Y=0.0,Z=0.0)
        RotationOffset=(Pitch=0,Yaw=0,Roll=0)
        Actions=none
        FireLinks=none
        RejectedFireLinks=none
        ExposedCoverPackedProperties=none
        TurnTargetPackedProperties=-1
        SlipRefs=none
        OverlapClaimsList=none
        bLeanLeft=false
        bLeanRight=false
        bForceCanPopUp=false
        bCanPopUp=false
        bCanMantle=true
        bCanClimbUp=false
        bForceCanCoverSlip_Left=false
        bForceCanCoverSlip_Right=false
        bCanCoverSlip_Left=true
        bCanCoverSlip_Right=true
        bCanSwatTurn_Left=true
        bCanSwatTurn_Right=true
        bEnabled=true
        bAllowPopup=true
        bAllowMantle=true
        bAllowCoverSlip=true
        bAllowClimbUp=false
        bAllowSwatTurn=true
        bForceNoGroundAdjust=false
        bPlayerOnly=false
        bPreferLeanOverPopup=false
        bDestructible=false
        bSelected=false
        bFailedToFindSurface=false
    }
};

var globalconfig bool GLOBAL_bUseSlotMarkers;
/** Whether cover link is disabled */
var() bool bDisabled;
/** Claim all slots when someone claims one - used for cover that needs more than one slot, but slots overlap */
var() bool bClaimAllSlots;
/** Allow auto-sorting of the Slots array */
var() bool bAutoSort;
/** Allow auto-adjusting of the Slots orientation/position and covertype? */
var() bool bAutoAdjust;
/** Is this circular cover? */
var() bool bCircular;
/** Cover is looped, first slot and last slot should be reachable direclty */
var() bool bLooped;
/** Is this cover restricted to player use? */
var() bool bPlayerOnly;
var bool bDynamicCover;
/** This cover fractures when it is interacted with */
var() bool bFractureOnTouch;
var(Debug) bool bDebug_FireLinks;
var(Debug) bool bDebug_ExposedLinks;
/** when enabled, extra info will be drawn and printed to the log related to generation of cover information for this link */
var(Debug) bool bDebug_CoverGen;
/** Should we automatically insert slots when there is too big of a gap? */
var() bool bDoAutoSlotDensityFixup;
var float LeanTraceDist;
/** All slots linked to this node */
var() editinline array<editinline CoverSlot> Slots;
var array<DynamicLinkInfo> DynamicLinkInfos;
var array<Pawn> Claims;
/** Distance link must move to invalidate it's info */
var() float InvalidateDistance;
/** Max trace dist for fire links to check */
var() float MaxFireLinkDist;
var const Vector CircularOrigin;
var const float CircularRadius;
var const float AlignDist;
var const float AutoCoverSlotInterval;
var const float StandHeight;
var const float MidHeight;
var const Vector StandingLeanOffset;
var const Vector CrouchLeanOffset;
var const Vector PopupOffset;
var const float SlipDist;
var const float TurnDist;
/** Scale applied to danger cost during path finding for slots of this link */
var() float DangerScale;
var const CoverLink NextCoverLink;
/** Description for the entire CoverLink.  Can be overridden per-slot. */
var() const CoverLink.ECoverLocationDescription LocationDescription;

// Export UCoverLink::execGetFireLinkTargetCoverInfo(FFrame&, void* const)
native simulated function bool GetFireLinkTargetCoverInfo(int SlotIdx, int FireLinkIdx, out CoverInfo out_Info, optional CoverLink.EFireLinkID ArrayID);

// Export UCoverLink::execPackFireLinkInteractionInfo(FFrame&, void* const)
native static simulated function byte PackFireLinkInteractionInfo(CoverLink.ECoverType SrcType, CoverLink.ECoverAction SrcAction, CoverLink.ECoverType DestType, CoverLink.ECoverAction DestAction);

// Export UCoverLink::execUnPackFireLinkInteractionInfo(FFrame&, void* const)
native static simulated function UnPackFireLinkInteractionInfo(const byte PackedByte, out CoverLink.ECoverType SrcType, out CoverLink.ECoverAction SrcAction, out CoverLink.ECoverType DestType, out CoverLink.ECoverAction DestAction);

// Export UCoverLink::execGetSlotLocation(FFrame&, void* const)
native final simulated function Vector GetSlotLocation(int SlotIdx, optional bool bForceUseOffset);

// Export UCoverLink::execGetSlotRotation(FFrame&, void* const)
native final simulated function Rotator GetSlotRotation(int SlotIdx, optional bool bForceUseOffset);

// Export UCoverLink::execGetSlotViewPoint(FFrame&, void* const)
native final simulated function Vector GetSlotViewPoint(int SlotIdx, optional CoverLink.ECoverType Type, optional CoverLink.ECoverAction Action);

// Export UCoverLink::execIsExposedTo(FFrame&, void* const)
native final simulated function bool IsExposedTo(int SlotIdx, CoverInfo ChkSlot, out float out_ExposedScale);

final simulated event SetInvalidUntil(int SlotIdx, float TimeToBecomeValid)
{
    Slots[SlotIdx].SlotValidAfterTime = TimeToBecomeValid;
    NotifySlotOwnerCoverDisabled(SlotIdx);
    //return;    
}

final simulated event bool Claim(Pawn NewClaim, int SlotIdx)
{
    local int Idx;
    local bool bResult, bDoClaim;
    local PlayerController PC;
    local Pawn PreviousOwner;
    local int NumClaims;
    local array<int> SlotList;
    local string Str;

    // End:0x5A
    if(bDebug)
    {
        LogInternal((((((string(self) @ "Claim Slot") @ string(SlotIdx)) @ "For") @ string(NewClaim)) @ "(All?)") @ string(bClaimAllSlots));
    }
    // End:0x6B
    if(SlotIdx < 0)
    {
        return false;
    }
    bDoClaim = true;
    // End:0x176
    if(Slots[SlotIdx].SlotOwner != none)
    {
        bResult = Slots[SlotIdx].SlotOwner == NewClaim;
        bDoClaim = false;
        // End:0x176
        if(!bResult)
        {
            PC = PlayerController(NewClaim.Controller);
            // End:0x176
            if(PC != none)
            {
                PreviousOwner = Slots[SlotIdx].SlotOwner;
                bDoClaim = true;
            }
        }
    }
    // End:0x335
    if(bDoClaim)
    {
        // End:0x24A
        if(bClaimAllSlots)
        {
            Idx = 0;
            J0x19B:
            // End:0x247 [Loop If]
            if(Idx < Slots.Length)
            {
                // End:0x239
                if(Slots[Idx].SlotOwner == none)
                {
                    Claims[Claims.Length] = NewClaim;
                    Slots[Idx].SlotOwner = NewClaim;
                    bResult = true;
                }
                ++ Idx;
                // [Loop Continue]
                goto J0x19B;
            }
        }
        // End:0x2A4
        else
        {
            Claims[Claims.Length] = NewClaim;
            Slots[SlotIdx].SlotOwner = NewClaim;
            bResult = true;
        }
        // End:0x335
        if((PreviousOwner != none) && PreviousOwner.Controller != none)
        {
            PreviousOwner.Controller.NotifyCoverClaimViolation(NewClaim.Controller, self, SlotIdx);
        }
    }
    // End:0x4EE
    if(bDebug)
    {
        Idx = 0;
        J0x34D:
        // End:0x39F [Loop If]
        if(Idx < Claims.Length)
        {
            // End:0x391
            if(Claims[Idx] == NewClaim)
            {
                ++ NumClaims;
            }
            ++ Idx;
            // [Loop Continue]
            goto J0x34D;
        }
        Idx = 0;
        J0x3AA:
        // End:0x422 [Loop If]
        if(Idx < Slots.Length)
        {
            // End:0x414
            if(Slots[Idx].SlotOwner == NewClaim)
            {
                SlotList[SlotList.Length] = Idx;
            }
            ++ Idx;
            // [Loop Continue]
            goto J0x3AA;
        }
        // End:0x445
        if(SlotList.Length == 0)
        {
            Str = "None";
        }
        // End:0x4A0
        else
        {
            Idx = 0;
            J0x450:
            // End:0x4A0 [Loop If]
            if(Idx < SlotList.Length)
            {
                Str = Str @ string(SlotList[Idx]);
                ++ Idx;
                // [Loop Continue]
                goto J0x450;
            }
        }
        LogInternal(((((string(self) @ "Claims from") @ string(NewClaim)) @ string(NumClaims)) @ "Slots:") @ Str);
        ScriptTrace();
    }
    return bResult;
    //return ReturnValue;    
}

final simulated event bool UnClaim(Pawn OldClaim, int SlotIdx, bool bUnclaimAll)
{
    local int Idx, NumReleased;
    local bool bResult;
    local int NumClaims;
    local array<int> SlotList;
    local string Str;

    // End:0xA8
    if(bDebug)
    {
        LogInternal(((((((((((((string(self) @ "UnClaim") @ "OldClaim:'") $ string(OldClaim)) $ "'") @ "SlotIdx:'") $ string(SlotIdx)) $ "'") @ "bUnclaimAll:'") $ string(bUnclaimAll)) $ "'") @ "bClaimAllSlots:'") $ string(bClaimAllSlots)) $ "'");
    }
    // End:0xCA
    if(!bUnclaimAll && SlotIdx < 0)
    {
        return false;
    }
    // End:0x17E
    if(bUnclaimAll)
    {
        Idx = 0;
        J0xE2:
        // End:0x17B [Loop If]
        if(Idx < Slots.Length)
        {
            // End:0x16D
            if(Slots[Idx].SlotOwner == OldClaim)
            {
                Slots[Idx].SlotOwner = none;
                ++ NumReleased;
                bResult = true;
            }
            ++ Idx;
            // [Loop Continue]
            goto J0xE2;
        }
    }
    // End:0x202
    else
    {
        // End:0x202
        if(!bClaimAllSlots && Slots[SlotIdx].SlotOwner == OldClaim)
        {
            Slots[SlotIdx].SlotOwner = none;
            ++ NumReleased;
            bResult = true;
        }
    }
    // End:0x266 [Loop If]
    if(NumReleased > 0)
    {
        Idx = Claims.Find(OldClaim);
        // End:0x243
        if(Idx < 0)
        {
            // [Explicit Break]
            goto J0x266;
        }
        Claims.Remove(Idx, 1);
        -- NumReleased;
        J0x266:
        // [Loop Continue]
        goto J0x202;
    }
    // End:0x446
    if(bDebug)
    {
        Idx = 0;
        J0x27E:
        // End:0x2D0 [Loop If]
        if(Idx < Claims.Length)
        {
            // End:0x2C2
            if(Claims[Idx] == OldClaim)
            {
                ++ NumClaims;
            }
            ++ Idx;
            // [Loop Continue]
            goto J0x27E;
        }
        Idx = 0;
        J0x2DB:
        // End:0x353 [Loop If]
        if(Idx < Slots.Length)
        {
            // End:0x345
            if(Slots[Idx].SlotOwner == OldClaim)
            {
                SlotList[SlotList.Length] = Idx;
            }
            ++ Idx;
            // [Loop Continue]
            goto J0x2DB;
        }
        // End:0x376
        if(SlotList.Length == 0)
        {
            Str = "None";
        }
        // End:0x3D1
        else
        {
            Idx = 0;
            J0x381:
            // End:0x3D1 [Loop If]
            if(Idx < SlotList.Length)
            {
                Str = Str @ string(SlotList[Idx]);
                ++ Idx;
                // [Loop Continue]
                goto J0x381;
            }
        }
        LogInternal(((((((((string(self) @ "Claims from") @ "OldClaim:'") $ string(OldClaim)) $ "'") @ "NumClaims:'") $ string(NumClaims)) $ "'") @ "Slots:") @ Str);
        ScriptTrace();
    }
    return bResult;
    //return ReturnValue;    
}

// Export UCoverLink::execIsValidClaim(FFrame&, void* const)
native final function bool IsValidClaim(Pawn ChkClaim, int SlotIdx, optional bool bSkipTeamCheck, optional bool bSkipOverlapCheck);

// Export UCoverLink::execIsValidClaimBetween(FFrame&, void* const)
native final function bool IsValidClaimBetween(Pawn ChkClaim, int StartSlotIdx, int EndSlotIdx, optional bool bSkipTeamCheck, optional bool bSkipOverlapCheck);

final simulated function bool IsStationarySlot(int SlotIdx)
{
    return !bCircular && IsEdgeSlot(SlotIdx, false);
    //return ReturnValue;    
}

// Export UCoverLink::execFindSlots(FFrame&, void* const)
native final simulated function bool FindSlots(Vector CheckLocation, float MaxDistance, out int LeftSlotIdx, out int RightSlotIdx);

// Export UCoverLink::execIsEdgeSlot(FFrame&, void* const)
native final simulated function bool IsEdgeSlot(int SlotIdx, optional bool bIgnoreLeans);

// Export UCoverLink::execIsLeftEdgeSlot(FFrame&, void* const)
native final simulated function bool IsLeftEdgeSlot(int SlotIdx, bool bIgnoreLeans);

// Export UCoverLink::execIsRightEdgeSlot(FFrame&, void* const)
native final simulated function bool IsRightEdgeSlot(int SlotIdx, bool bIgnoreLeans);

// Export UCoverLink::execGetSlotIdxToLeft(FFrame&, void* const)
native final simulated function int GetSlotIdxToLeft(int SlotIdx, optional int Cnt)
{
    Cnt = 1;                
}

// Export UCoverLink::execGetSlotIdxToRight(FFrame&, void* const)
native final simulated function int GetSlotIdxToRight(int SlotIdx, optional int Cnt)
{
    Cnt = 1;                
}

final simulated function bool AllowRightTransition(int SlotIdx)
{
    local int NextSlotIdx;

    NextSlotIdx = GetSlotIdxToRight(SlotIdx);
    // End:0x55
    if(NextSlotIdx >= 0)
    {
        return Slots[NextSlotIdx].bEnabled;
    }
    return false;
    //return ReturnValue;    
}

final simulated function bool AllowLeftTransition(int SlotIdx)
{
    local int NextSlotIdx;

    NextSlotIdx = GetSlotIdxToLeft(SlotIdx);
    // End:0x55
    if(NextSlotIdx >= 0)
    {
        return Slots[NextSlotIdx].bEnabled;
    }
    return false;
    //return ReturnValue;    
}

// Export UCoverLink::execGetFireLinkTo(FFrame&, void* const)
native function bool GetFireLinkTo(int SlotIdx, CoverInfo ChkCover, CoverLink.ECoverAction ChkAction, CoverLink.ECoverType ChkType, out int out_FireLinkIdx, out array<int> out_Items);

// Export UCoverLink::execHasFireLinkTo(FFrame&, void* const)
native function bool HasFireLinkTo(int SlotIdx, CoverInfo ChkCover, optional bool bAllowFallbackLinks);

// Export UCoverLink::execGetSlotActions(FFrame&, void* const)
native final function GetSlotActions(int SlotIdx, out array<CoverLink.ECoverAction> Actions);

simulated event SetDisabled(bool bNewDisabled)
{
    local int SlotIdx;
    local CoverReplicator CoverReplicator;

    bDisabled = bNewDisabled;
    // End:0x67
    if(bDisabled)
    {
        SlotIdx = 0;
        J0x2D:
        // End:0x67 [Loop If]
        if(SlotIdx < Slots.Length)
        {
            NotifySlotOwnerCoverDisabled(SlotIdx);
            ++ SlotIdx;
            // [Loop Continue]
            goto J0x2D;
        }
    }
    // End:0xE8
    if(Role == ROLE_Authority)
    {
        CoverReplicator = WorldInfo.Game.GetCoverReplicator();
        // End:0xE8
        if(CoverReplicator != none)
        {
            CoverReplicator.NotifyLinkDisabledStateChange(self);
        }
    }
    //return;    
}

simulated event SetSlotEnabled(int SlotIdx, bool bEnable)
{
    Slots[SlotIdx].bEnabled = bEnable;
    // End:0x55
    if(!bEnable)
    {
        NotifySlotOwnerCoverDisabled(SlotIdx);
    }
    //return;    
}

simulated function NotifySlotOwnerCoverDisabled(int SlotIdx, optional bool bAIOnly)
{
    local int LeftIdx, RightIdx;

    // End:0x129
    if(((Slots[SlotIdx].SlotOwner != none) && Slots[SlotIdx].SlotOwner.Controller != none) && !bAIOnly || PlayerController(Slots[SlotIdx].SlotOwner.Controller) == none)
    {
        Slots[SlotIdx].SlotOwner.Controller.NotifyCoverDisabled(self, SlotIdx, false);
    }
    LeftIdx = GetSlotIdxToLeft(SlotIdx);
    // End:0x280
    if((((LeftIdx >= 0) && Slots[LeftIdx].SlotOwner != none) && Slots[LeftIdx].SlotOwner.Controller != none) && !bAIOnly || PlayerController(Slots[LeftIdx].SlotOwner.Controller) == none)
    {
        Slots[LeftIdx].SlotOwner.Controller.NotifyCoverDisabled(self, SlotIdx, true);
    }
    RightIdx = GetSlotIdxToRight(SlotIdx);
    // End:0x3D7
    if((((RightIdx >= 0) && Slots[RightIdx].SlotOwner != none) && Slots[RightIdx].SlotOwner.Controller != none) && !bAIOnly || PlayerController(Slots[RightIdx].SlotOwner.Controller) == none)
    {
        Slots[RightIdx].SlotOwner.Controller.NotifyCoverDisabled(self, SlotIdx, true);
    }
    //return;    
}

simulated event SetSlotPlayerOnly(int SlotIdx, bool bInPlayerOnly)
{
    Slots[SlotIdx].bPlayerOnly = bInPlayerOnly;
    // End:0x70
    if(Slots[SlotIdx].bPlayerOnly)
    {
        NotifySlotOwnerCoverDisabled(SlotIdx, true);
    }
    //return;    
}

function OnModifyCover(SeqAct_ModifyCover Action)
{
    local array<int> SlotIndices;
    local int Idx, SlotIdx;
    local CoverReplicator CoverReplicator;

    // End:0x50
    if(Action.Slots.Length > 0)
    {
        SlotIndices = Action.Slots;
    }
    // End:0x9F
    else
    {
        Idx = 0;
        J0x5B:
        // End:0x9F [Loop If]
        if(Idx < Slots.Length)
        {
            SlotIndices[SlotIndices.Length] = Idx;
            ++ Idx;
            // [Loop Continue]
            goto J0x5B;
        }
    }
    Idx = 0;
    J0xAA:
    // End:0x473 [Loop If]
    if(Idx < SlotIndices.Length)
    {
        SlotIdx = SlotIndices[Idx];
        // End:0x465
        if((SlotIdx >= 0) && SlotIdx < Slots.Length)
        {
            // End:0x156
            if(Action.InputLinks[0].bHasImpulse)
            {
                SetSlotEnabled(SlotIdx, true);
            }
            // End:0x465
            else
            {
                // End:0x1A4
                if(Action.InputLinks[1].bHasImpulse)
                {
                    SetSlotEnabled(SlotIdx, false);
                }
                // End:0x465
                else
                {
                    // End:0x2B8
                    if(Action.InputLinks[2].bHasImpulse)
                    {
                        // End:0x2B5
                        if((AutoAdjustSlot(SlotIdx, false) && Slots[SlotIdx].SlotOwner != none) && Slots[SlotIdx].SlotOwner.Controller != none)
                        {
                            Slots[SlotIdx].SlotOwner.Controller.NotifyCoverAdjusted();
                        }
                    }
                    // End:0x465
                    else
                    {
                        // End:0x465
                        if(Action.InputLinks[3].bHasImpulse)
                        {
                            // End:0x41E
                            if(Action.ManualCoverType != 0)
                            {
                                Slots[SlotIdx].CoverType = Action.ManualCoverType;
                                // End:0x41E
                                if((Slots[SlotIdx].SlotOwner != none) && Slots[SlotIdx].SlotOwner.Controller != none)
                                {
                                    Slots[SlotIdx].SlotOwner.Controller.NotifyCoverAdjusted();
                                }
                            }
                            Slots[SlotIdx].bPlayerOnly = Action.bManualAdjustPlayersOnly;
                        }
                    }
                }
            }
        }
        ++ Idx;
        // [Loop Continue]
        goto J0xAA;
    }
    CoverReplicator = WorldInfo.Game.GetCoverReplicator();
    // End:0x669
    if(CoverReplicator != none)
    {
        // End:0x523
        if(Action.InputLinks[0].bHasImpulse)
        {
            CoverReplicator.NotifyEnabledSlots(self, SlotIndices);
        }
        // End:0x669
        else
        {
            // End:0x586
            if(Action.InputLinks[1].bHasImpulse)
            {
                CoverReplicator.NotifyDisabledSlots(self, SlotIndices);
            }
            // End:0x669
            else
            {
                // End:0x5EA
                if(Action.InputLinks[2].bHasImpulse)
                {
                    CoverReplicator.NotifyAutoAdjustSlots(self, SlotIndices);
                }
                // End:0x669
                else
                {
                    // End:0x669
                    if(Action.InputLinks[3].bHasImpulse)
                    {
                        CoverReplicator.NotifySetManualCoverTypeForSlots(self, SlotIndices, Action.ManualCoverType);
                    }
                }
            }
        }
    }
    //return;    
}

// Export UCoverLink::execAutoAdjustSlot(FFrame&, void* const)
native final function bool AutoAdjustSlot(int SlotIdx, bool bOnlyCheckLeans);

// Export UCoverLink::execIsEnabled(FFrame&, void* const)
native final function bool IsEnabled();

function OnToggle(SeqAct_Toggle InAction)
{
    local CoverReplicator CoverReplicator;
    local int SlotIdx;

    super.OnToggle(InAction);
    // End:0x59
    if(InAction.InputLinks[0].bHasImpulse)
    {
        bDisabled = false;
    }
    // End:0xB6
    else
    {
        // End:0x9F
        if(InAction.InputLinks[1].bHasImpulse)
        {
            bDisabled = true;
        }
        // End:0xB6
        else
        {
            bDisabled = !bDisabled;
        }
    }
    SlotIdx = 0;
    J0xC1:
    // End:0x106 [Loop If]
    if(SlotIdx < Slots.Length)
    {
        SetSlotEnabled(SlotIdx, !bDisabled);
        ++ SlotIdx;
        // [Loop Continue]
        goto J0xC1;
    }
    CoverReplicator = WorldInfo.Game.GetCoverReplicator();
    // End:0x173
    if(CoverReplicator != none)
    {
        CoverReplicator.NotifyLinkDisabledStateChange(self);
    }
    //return;    
}

function CreateCheckpointRecord(out CheckpointRecord Record)
{
    super.CreateCheckpointRecord(Record);
    Record.bDisabled = bDisabled;
    //return;    
}

function ApplyCheckpointRecord(const out CheckpointRecord Record)
{
    local CoverReplicator CoverReplicator;

    super.ApplyCheckpointRecord(Record);
    bDisabled = Record.bDisabled;
    CoverReplicator = WorldInfo.Game.GetCoverReplicator();
    // End:0xA8
    if(CoverReplicator != none)
    {
        CoverReplicator.NotifyLinkDisabledStateChange(self);
    }
    //return;    
}

simulated event ShutDown()
{
    super.ShutDown();
    bDisabled = true;
    //return;    
}

// Export UCoverLink::execGetSwatTurnTarget(FFrame&, void* const)
native simulated function bool GetSwatTurnTarget(int SlotIdx, int Direction, out CoverInfo out_Info);

simulated function BreakFracturedMeshes(Vector Origin, float Radius, float RBStrength, class<DamageType> DamageType)
{
    local FracturedStaticMeshActor FracActor;
    local byte bWantPhysChunksAndParticles;

    // End:0x11
    if(!bFractureOnTouch)
    {
        return;
    }
    // End:0x11C
    foreach CollidingActors(class'FracturedStaticMeshActor', FracActor, Radius, Origin, true)
    {
        // End:0x11B
        if((FracActor.Physics == 0) && FracActor.IsFracturedByDamageType(DamageType))
        {
            // End:0x11B
            if(FracActor.FractureEffectIsRelevant(false, Instigator, bWantPhysChunksAndParticles))
            {
                FracActor.BreakOffPartsInRadius(Origin, Radius, RBStrength, ((bWantPhysChunksAndParticles == 1) ? true : false));
            }
        }        
    }    
    //return;    
}

simulated event Tick(float DeltaTime)
{
    local int SlotIdx;
    local CoverSlot Slot;
    local Vector OwnerLoc;
    local byte R, G, B;

    // End:0x17F
    if(bDebug)
    {
        SlotIdx = 0;
        J0x18:
        // End:0x17F [Loop If]
        if(SlotIdx < Slots.Length)
        {
            Slot = Slots[SlotIdx];
            // End:0x171
            if(Slot.SlotOwner != none)
            {
                // End:0xF3
                if(Slot.SlotOwner != none)
                {
                    OwnerLoc = Slot.SlotOwner.Location;
                    R = 166;
                    G = 236;
                    B = 17;
                }
                // End:0x12E
                else
                {
                    OwnerLoc = vect(0.0, 0.0, 0.0);
                    R = 170;
                    G = 0;
                    B = 0;
                }
                DrawDebugLine(GetSlotLocation(SlotIdx), OwnerLoc, R, G, B);
            }
            ++ SlotIdx;
            // [Loop Continue]
            goto J0x18;
        }
    }
    //return;    
}

// Export UCoverLink::execAddCoverSlot(FFrame&, void* const)
native final function int AddCoverSlot(Vector SlotLocation, Rotator SlotRotation, optional int SlotIdx, optional bool bForceSlotUpdate, optional Scout Scout)
{
    SlotIdx = -1;                                    
}

final simulated event string GetDebugString(int SlotIdx)
{
    return (("L:" $ GetRightMost(string(self))) @ "S:") $ string(SlotIdx);
    //return ReturnValue;    
}

// Export UCoverLink::execGetLocationDescription(FFrame&, void* const)
native final simulated function CoverLink.ECoverLocationDescription GetLocationDescription(int SlotIdx);

simulated event string GetDebugAbbrev()
{
    return "CL";
    //return ReturnValue;    
}

defaultproperties
{
    bAutoSort=true
    bAutoAdjust=true
    LeanTraceDist=64.0
    Slots(0)=
/* Exception thrown while deserializing Slots
System.ArgumentException: Requested value 'CT_None' was not found.
   at System.Enum.TryParseEnum(Type enumType, String value, Boolean ignoreCase, EnumResult& parseResult)
   at System.Enum.Parse(Type enumType, String value, Boolean ignoreCase)
   at UELib.Core.UDefaultProperty.Deserialize()
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) */
    InvalidateDistance=64.0
    MaxFireLinkDist=2048.0
    AlignDist=36.0
    AutoCoverSlotInterval=175.0
    StandHeight=160.0
    MidHeight=70.0
    StandingLeanOffset=(X=0.0,Y=78.0,Z=69.0)
    CrouchLeanOffset=(X=0.0,Y=70.0,Z=19.0)
    PopupOffset=(X=0.0,Y=0.0,Z=70.0)
    SlipDist=60.0
    TurnDist=512.0
    DangerScale=2.0
    bSpecialMove=true
    bDestinationOnly=true
    bBuildLongPaths=false
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=58.0
        CollisionRadius=48.0
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__CoverLink.CollisionCylinder'
    CylinderComponent=CollisionCylinder
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorMaterials.CoverIcons.CoverNodeNoneLocked'
        SpriteCategoryName=Cover
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__CoverLink.Sprite'
    GoodSprite=Sprite
    begin object name=Sprite2 class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__CoverLink.Sprite2'
    BadSprite=Sprite2
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorMaterials.CoverIcons.CoverNodeNoneLocked'
        SpriteCategoryName=Cover
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__CoverLink.Sprite'
    Components(0)=Sprite
    begin object name=Sprite2 class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__CoverLink.Sprite2'
    Components(1)=Sprite2
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=58.0
        CollisionRadius=48.0
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__CoverLink.CollisionCylinder'
    Components(2)=CollisionCylinder
    begin object name=CoverMesh class=CoverMeshComponent
        ReplacementPrimitive=none
    object end
    // Reference: CoverMeshComponent'Default__CoverLink.CoverMesh'
    Components(3)=CoverMesh
    begin object name=CollisionCylinder class=CylinderComponent
        CollisionHeight=58.0
        CollisionRadius=48.0
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__CoverLink.CollisionCylinder'
    CollisionComponent=CollisionCylinder
}