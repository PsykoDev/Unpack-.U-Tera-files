/*******************************************************************************
 * UIDataProvider_OnlineProfileSettings generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UIDataProvider_OnlineProfileSettings extends UIDataProvider_OnlinePlayerStorage
    transient
    native(UIPrivate)
    config(Game)
    hidecategories(Object,UIRoot);

function bool ReadData(OnlinePlayerInterface PlayerInterface, byte LocalUserNum, int DeviceID, OnlinePlayerStorage PlayerStorage)
{
    return PlayerInterface.ReadProfileSettings(LocalUserNum, OnlineProfileSettings(PlayerStorage));
    //return ReturnValue;    
}

function bool WriteData(OnlinePlayerInterface PlayerInterface, byte LocalUserNum, int DeviceID, OnlinePlayerStorage PlayerStorage)
{
    return PlayerInterface.WriteProfileSettings(LocalUserNum, OnlineProfileSettings(PlayerStorage));
    //return ReturnValue;    
}

function bool GetData(OnlinePlayerInterface PlayerInterface, byte LocalUserNum)
{
    local OnlineProfileSettings CachedProfile;

    CachedProfile = PlayerInterface.GetProfileSettings(LocalUserNum);
    // End:0x91
    if(CachedProfile != none)
    {
        Profile = CachedProfile;
        return PlayerInterface.ReadProfileSettings(LocalUserNum, OnlineProfileSettings(Profile));
    }
    return false;
    //return ReturnValue;    
}

function AddReadCompleteDelegate(OnlinePlayerInterface PlayerInterface, byte LocalUserNum)
{
    PlayerInterface.AddReadProfileSettingsCompleteDelegate(LocalUserNum, OnReadStorageComplete);
    //return;    
}

function ClearReadCompleteDelegate(OnlinePlayerInterface PlayerInterface, byte LocalUserNum)
{
    PlayerInterface.ClearReadProfileSettingsCompleteDelegate(LocalUserNum, OnReadStorageComplete);
    //return;    
}

function RefreshStorageData()
{
    local OnlineSubsystem OnlineSub;
    local OnlinePlayerInterface PlayerInterface;

    OnlineSub = class'GameEngine'.static.GetOnlineSubsystem();
    // End:0xCA
    if(OnlineSub != none)
    {
        PlayerInterface = OnlineSub.PlayerInterface;
        // End:0xCA
        if(NotEqual_InterfaceInterface(PlayerInterface, (none)))
        {
            // End:0xCA
            if(!ReadData(PlayerInterface, byte(PlayerControllerId), Profile.DeviceID, Profile))
            {
            }
        }
    }
    //return;    
}

function OnStorageDeviceChange()
{
    //return;    
}

defaultproperties
{
    ProviderName=ProfileData
}