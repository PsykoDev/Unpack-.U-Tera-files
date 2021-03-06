/*******************************************************************************
 * MobileInputZone generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MobileInputZone extends Object
    native
    config(Game)
    perobjectconfig
    editinlinenew;

enum EZoneType
{
    ZoneType_Button,
    ZoneType_Joystick,
    ZoneType_Trackball,
    ZoneType_Slider,
    ZoneType_SubClassed,
    ZoneType_MAX
};

enum EZoneState
{
    ZoneState_Inactive,
    ZoneState_Activating,
    ZoneState_Active,
    ZoneState_Deactivating,
    ZoneState_MAX
};

enum EZoneSlideType
{
    ZoneSlide_UpDown,
    ZoneSlide_LeftRight,
    ZoneSlide_MAX
};

struct native TextureUVs
{
    /** Structure to allow easy storage of UVs for a rendered image */
    var() float U;
    /** Structure to allow easy storage of UVs for a rendered image */
    var() float V;
    /** Structure to allow easy storage of UVs for a rendered image */
    var() float UL;
    /** Structure to allow easy storage of UVs for a rendered image */
    var() float VL;

    structdefaultproperties
    {
        U=0.0
        V=0.0
        UL=64.0
        VL=64.0
    }
};

/** What type of zone is this. */
var(Zone) config MobileInputZone.EZoneType Type;
/** Which touchpad this zone will respond to */
var(Zone) byte TouchpadIndex;
var MobileInputZone.EZoneState State;
/** Determines what type of slide it is */
var(Options) config MobileInputZone.EZoneSlideType SlideType;
/** For button zones, the Caption property will be displayed in the center of the button */
var(Zone) config string Caption;
/** Input to send to input subsystem on event (vertical input for analog, can be NAME_None) */
var(Input) config name InputKey;
/** Input to send for horizontal analog input (can be NAME_None) */
var(Input) config name HorizontalInputKey;
/** Input to send for tap input (e.g. for tap-to-fire) */
var(Input) config name TapInputKey;
/** Input to send from a double tap */
var(Input) config name DoubleTapInputKey;
/** Multiplier to scale the analog vertical input by */
var(Input) config float VertMultiplier;
/** Multiplier to scale the analog horizontal input by */
var(Input) config float HorizMultiplier;
/** How much acceleration to apply to Trackball or Joystick movement (0.0 for none, no upper bounds) */
var(Input) config float Acceleration;
/** How much input smoothing to apply to Trackball or Joystick movement (0.0 for none, 1.0 for max) */
var(Input) config float Smoothing;
/** How much escape velocity to use for Trackball movement (0.0 for none, 1.0 for max) */
var(Input) config float EscapeVelocityStrength;
/** If true, this control will use it's "strength" to scale the movement of the pawn */
var(Input) config bool bScalePawnMovement;
/** If any of the bReleative vars are true, then the corresponding X/Y/SizeX/SizeY will be consider a percentage of the viewport */
var(Bounds) config bool bRelativeX;
var(Bounds) config bool bRelativeY;
var(Bounds) config bool bRelativeSizeX;
var(Bounds) config bool bRelativeSizeY;
/** If this is true, then ActiveSizeY is relative to ActiveSizeX */
var(Bounds) config bool bActiveSizeYFromX;
/** If this is true, then SizeX is relative to SizeY */
var(Bounds) config bool bSizeYFromSizeX;
/** If true, then the Global Scale values will be applied to the active Sizes */
var(Bounds) config bool bApplyGlobalScaleToActiveSizes;
/** if true, then this zone will be centered around the original X value.  NOTE: X will be updated to reflect it's actual position */
var(Bounds) config bool bCenterX;
/** if true, then this zone will be centered around the original Y value.  NOTE: Y will be updated to reflect it's actual position */
var(Bounds) config bool bCenterY;
/** Do we draw anything on screen for this zone? */
var(Options) config bool bIsInvisible;
/** If true, then this double tap will be considered a quick press/release, other wise it's tap and hold */
var(Options) config bool bQuickDoubleTap;
/** If true, this zone will have it's "center" set when you touch it, otherwise the center will be set to the center of the zone */
var(Options) config bool bCenterOnEvent;
/** Slider type has a track that can be clicked on and button will center on click */
var(Options) config bool bSliderHasTrack;
/** If true, the tilt zone will float within the SizeX/SizeY */
var(Options) config bool bFloatingTiltZone;
/**  
 *If true, the zone will gracefully transition from Inactive to Active and vice-versus.  NOTE: transitions are strickly visual.  A
 *    zone becomes active or inactive the moment a touch is applied or removed
 */
var(Transitions) config bool bUseGentleTransitions;
/** Unless enabled, the first movement delta for a trackball zone will be ignored.  This is useful for devices with inconsistent 'dead zones' for initial touch deltas, however this will reduce responsiveness of trackball drags slightly. */
var(Advanced) config bool bAllowFirstDeltaForTrackballZone;
/** If true, the zone will render little guide lines for debugging */
var(Rendering) config bool bRenderGuides;
var bool bIsDoubleTapAndHold;
/** Top left corner */
var(Bounds) config float X;
/** Top left corner */
var(Bounds) config float Y;
/** Size of the zone */
var(Bounds) config float SizeX;
/** Size of the zone */
var(Bounds) config float SizeY;
/**  
 *Size of active Zone.  Note if it's set to 0, then SizeX/SizeY will be copied here.  
 *    This setting is used when you have a zone that has bCenterOnEvent set and defines the size of 
 *       zone when it's active
 */
var(Bounds) config float ActiveSizeX;
/**  
 *Size of active Zone.  Note if it's set to 0, then SizeX/SizeY will be copied here.  
 *    This setting is used when you have a zone that has bCenterOnEvent set and defines the size of 
 *       zone when it's active
 */
var(Bounds) config float ActiveSizeY;
var const float InitialX;
var const float InitialY;
var const float InitialSizeX;
var const float InitialSizeY;
var const float InitialActiveSizeX;
var const float InitialActiveSizeY;
/** This is the scale factor you are authoring for. 2.0 is useful for Retina display resolution (960x640), 1.0 for iPads and older iPhones */
var(Bounds) config float AuthoredGlobalScale;
/** Border is an invisible region around the zone.  The border is included in hit determination. */
var(Bounds) config float Border;
/** If bCenterOnEvent is enabled and this is non zero, the center position will be reset to it's initial center after this period of inactivity */
var(Options) config float ResetCenterAfterInactivityTime;
var(Options) config float TapDistanceConstraint;
/** How fast should a zone for from active to inactive */
var(Transitions) config float ActivateTime;
/** How fast a zone should go from inactive to active */
var(Transitions) config float DeactivateTime;
/** Holds the color to use when drawing images */
var(Rendering) config Color RenderColor;
/** Holds the alpha value to use if the zone is inactive */
var(Rendering) config float InactiveAlpha;
/** This is a fixed adjustment that will be added to the zone's caption's X.  It's used to align fonts correctly */
var(Rendering) config float CaptionXAdjustment;
/** This is a fixed adjustment that will be added to the zone's caption's Y.  It's used to align fonts correctly */
var(Rendering) config float CaptionYAdjustment;
/** Override texture (for buttons, this is the texture when not clicked; for joystick/trackball, it's the background; for sliders, it's the slider) */
var(Rendering) Texture2D OverrideTexture1;
var config string OverrideTexture1Name;
/** UVs for override texture 1 (in texel units) */
var(Rendering) config TextureUVs OverrideUVs1;
/** Override texture (for buttons, this is the texture when clicked; for joystick/trackball, it's the 'hat'; for sliders, it's unused) */
var(Rendering) Texture2D OverrideTexture2;
var config string OverrideTexture2Name;
/** UVs for override texture 2 (in texel units) */
var(Rendering) config TextureUVs OverrideUVs2;
var Vector2D InitialLocation;
var Vector2D CurrentLocation;
var Vector2D CurrentCenter;
var Vector2D InitialCenter;
var Vector2D PreviousLocations[6];
var float PreviousMoveDeltaTimes[6];
var int PreviousLocationCount;
var float LastTouchTime;
var float TimeSinceLastTapRepeat;
var float AnimatingFadeOpacity;
var MobilePlayerInput InputOwner;
var float TransitionTime;
var Vector2D EscapeVelocity;
var array<SeqEvent_MobileZoneBase> MobileSeqEventHandlers;
var Vector2D LastAxisValues;
var float TotalActiveTime;
var float LastWentActiveTime;
var delegate<OnProcessInputDelegate> __OnProcessInputDelegate__Delegate;
var delegate<OnTapDelegate> __OnTapDelegate__Delegate;
var delegate<OnDoubleTapDelegate> __OnDoubleTapDelegate__Delegate;
var delegate<OnProcessSlide> __OnProcessSlide__Delegate;
var delegate<OnPreDrawZone> __OnPreDrawZone__Delegate;
var delegate<OnPostDrawZone> __OnPostDrawZone__Delegate;

// Export UMobileInputZone::execActivateZone(FFrame&, void* const)
native function ActivateZone();

// Export UMobileInputZone::execDeactivateZone(FFrame&, void* const)
native function DeactivateZone();

delegate bool OnProcessInputDelegate(MobileInputZone Zone, float DeltaTime, int Handle, Engine.Interaction.ETouchType EventType, Vector2D TouchLocation)
{
    //return ReturnValue;    
}

delegate bool OnTapDelegate(MobileInputZone Zone, Engine.Interaction.ETouchType EventType, Vector2D TouchLocation)
{
    //return ReturnValue;    
}

delegate bool OnDoubleTapDelegate(MobileInputZone Zone, Engine.Interaction.ETouchType EventType, Vector2D TouchLocation)
{
    //return ReturnValue;    
}

delegate bool OnProcessSlide(MobileInputZone Zone, Engine.Interaction.ETouchType EventType, int SlideValue, Vector2D ViewportSize)
{
    //return ReturnValue;    
}

delegate bool OnPreDrawZone(MobileInputZone Zone, Canvas Canvas)
{
    //return ReturnValue;    
}

delegate OnPostDrawZone(MobileInputZone Zone, Canvas Canvas)
{
    //return;    
}

function AddKismetEventHandler(SeqEvent_MobileZoneBase NewHandler)
{
    local int I;

    I = 0;
    J0x0B:
    // End:0x54 [Loop If]
    if(I < MobileSeqEventHandlers.Length)
    {
        // End:0x46
        if(MobileSeqEventHandlers[I] == NewHandler)
        {
            return;
        }
        ++ I;
        // [Loop Continue]
        goto J0x0B;
    }
    I = 0;
    J0x5F:
    // End:0xBD [Loop If]
    if(I < MobileSeqEventHandlers.Length)
    {
        // End:0xAF
        if(MobileSeqEventHandlers[I] == none)
        {
            MobileSeqEventHandlers[I] = NewHandler;
            return;
        }
        ++ I;
        // [Loop Continue]
        goto J0x5F;
    }
    MobileSeqEventHandlers.AddItem(NewHandler);
    //return;    
}

defaultproperties
{
    VertMultiplier=1.0
    HorizMultiplier=1.0
    bApplyGlobalScaleToActiveSizes=true
    bUseGentleTransitions=true
    SizeX=100.0
    SizeY=100.0
    AuthoredGlobalScale=2.0
    ResetCenterAfterInactivityTime=3.0
    TapDistanceConstraint=5.0
    ActivateTime=0.60
    DeactivateTime=0.20
    RenderColor=(R=255,G=255,B=255,A=255)
    InactiveAlpha=0.50
    OverrideUVs1=(U=0.0,V=0.0,UL=64.0,VL=64.0)
    OverrideUVs2=(U=0.0,V=0.0,UL=64.0,VL=64.0)
}