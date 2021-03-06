/*******************************************************************************
 * S1PlayerCamera generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1PlayerCamera extends Camera
    transient
    native
    hidecategories(Navigation);

event PostBeginPlay()
{
    super.PostBeginPlay();
    //return;    
}

event ApplyCameraModifiers(float DeltaTime, out TPOV OutPOV)
{
    super.ApplyCameraModifiers(DeltaTime, OutPOV);
    ApplyCameraModifiersNative(DeltaTime, OutPOV);
    //return;    
}

// Export US1PlayerCamera::execApplyCameraModifiersNative(FFrame&, void* const)
private native final simulated function ApplyCameraModifiersNative(float DeltaTime, out TPOV OutPOV);

function UpdateViewTarget(out TViewTarget OutVT, float DeltaTime)
{
    local CameraActor CamActor;

    CamActor = CameraActor(OutVT.Target);
    // End:0x146
    if(CamActor != none)
    {
        CamActor.GetCameraView(DeltaTime, OutVT.POV);
        bConstrainAspectRatio = bConstrainAspectRatio || CamActor.bConstrainAspectRatio;
        OutVT.AspectRatio = CamActor.AspectRatio;
        CamOverridePostProcessAlpha = CamActor.CamOverridePostProcessAlpha;
        CamPostProcessSettings = CamActor.CamOverridePostProcess;
    }
    ApplyCameraModifiers(DeltaTime, OutVT.POV);
    //return;    
}

defaultproperties
{
    DefaultFOV=60.0
    bEnableFading=true
}