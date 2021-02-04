/*******************************************************************************
 * DebugCameraInput generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DebugCameraInput extends PlayerInput within PlayerController
    transient
    config(Input)
    hidecategories(Object,UIRoot);

function bool InputKey(int ControllerId, name Key, Core.Object.EInputEvent Event, optional float AmountDepressed, optional bool bGamepad)
{
    local PlayerController PC;
    local DebugCameraController DCC;

    AmountDepressed = 1.0;
    bGamepad = false;
    // End:0x142
    foreach Outer.WorldInfo.AllControllers(class'PlayerController', PC)
    {
        // End:0x141
        if(PC.bIsPlayer && PC.IsLocalPlayerController())
        {
            DCC = DebugCameraController(PC);
            // End:0xF2
            if((DCC != none) && DCC.OriginalControllerRef == none)
            {
                continue;                
            }            
            return DCC.NativeInputKey(ControllerId, Key, Event, AmountDepressed, bGamepad);
        }        
    }    
    return false;
    //return ReturnValue;    
}

defaultproperties
{
    Bindings=/* Array type was not detected. */
    OnReceivedNativeInputKey=InputKey
}