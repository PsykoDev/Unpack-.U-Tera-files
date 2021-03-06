/*******************************************************************************
 * GameSkelCtrl_Recoil generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GameSkelCtrl_Recoil extends SkelControlBase
    native(Anim)
    hidecategories(Object,Object);

enum ERecoilStart
{
    ERS_Zero,
    ERS_Random,
    ERS_MAX
};

struct native RecoilParams
{
    /** Recoil params */
    var() GameSkelCtrl_Recoil.ERecoilStart X;
    /** Recoil params */
    var() GameSkelCtrl_Recoil.ERecoilStart Y;
    /** Recoil params */
    var() GameSkelCtrl_Recoil.ERecoilStart Z;
    var const transient byte Padding;

    structdefaultproperties
    {
        X=ERecoilStart.ERS_Zero
        Y=ERecoilStart.ERS_Zero
        Z=ERecoilStart.ERS_Zero
        Padding=0
    }
};

struct native RecoilDef
{
    var transient float TimeToGo;
    /** Duration in seconds of current recoil shake */
    var() float TimeDuration;
    /** Rotation amplitude */
    var() Vector RotAmplitude;
    /** Rotation frequency */
    var() Vector RotFrequency;
    var Vector RotSinOffset;
    /** Rotation parameters */
    var() RecoilParams RotParams;
    var transient Rotator RotOffset;
    /** Loc offset amplitude */
    var() Vector LocAmplitude;
    /** Loc offset frequency */
    var() Vector LocFrequency;
    var Vector LocSinOffset;
    /** Loc parameters */
    var() RecoilParams LocParams;
    var transient Vector LocOffset;

    structdefaultproperties
    {
        TimeToGo=0.0
        TimeDuration=0.330
        RotAmplitude=(X=0.0,Y=0.0,Z=0.0)
        RotFrequency=(X=0.0,Y=0.0,Z=0.0)
        RotSinOffset=(X=0.0,Y=0.0,Z=0.0)
        RotParams=(X=ERecoilStart.ERS_Zero,Y=ERecoilStart.ERS_Zero,Z=ERecoilStart.ERS_Zero,Padding=0)
        RotOffset=(Pitch=0,Yaw=0,Roll=0)
        LocAmplitude=(X=0.0,Y=0.0,Z=0.0)
        LocFrequency=(X=0.0,Y=0.0,Z=0.0)
        LocSinOffset=(X=0.0,Y=0.0,Z=0.0)
        LocParams=(X=ERecoilStart.ERS_Zero,Y=ERecoilStart.ERS_Zero,Z=ERecoilStart.ERS_Zero,Padding=0)
        LocOffset=(X=0.0,Y=0.0,Z=0.0)
    }
};

/** If TRUE, Aim is ignored, and recoil is just applied in the local bone space. */
var() bool bBoneSpaceRecoil;
/** variable to play recoil */
var() transient bool bPlayRecoil;
var transient bool bOldPlayRecoil;
var transient bool bApplyControl;
/** Recoil Information */
var() RecoilDef Recoil;
var() Vector2D Aim;

defaultproperties
{
    Recoil=(TimeToGo=0.0,TimeDuration=0.330,RotAmplitude=(X=0.0,Y=0.0,Z=0.0),RotFrequency=(X=0.0,Y=0.0,Z=0.0),RotSinOffset=(X=0.0,Y=0.0,Z=0.0),RotParams=(X=ERecoilStart.ERS_Zero,Y=ERecoilStart.ERS_Zero,Z=ERecoilStart.ERS_Zero,Padding=0),RotOffset=(Pitch=0,Yaw=0,Roll=0),LocAmplitude=(X=0.0,Y=0.0,Z=0.0),LocFrequency=(X=0.0,Y=0.0,Z=0.0),LocSinOffset=(X=0.0,Y=0.0,Z=0.0),LocParams=(X=ERecoilStart.ERS_Zero,Y=ERecoilStart.ERS_Zero,Z=ERecoilStart.ERS_Zero,Padding=0),LocOffset=(X=0.0,Y=0.0,Z=0.0))
    CategoryDesc="Recoil"
}