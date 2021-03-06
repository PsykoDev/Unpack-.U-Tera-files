/*******************************************************************************
 * UIDataProvider_OnlineFriendMessages generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UIDataProvider_OnlineFriendMessages extends UIDataProvider_OnlinePlayerDataBase
    transient
    native(UIPrivate)
    config(Engine)
    hidecategories(Object,UIRoot);

var array<OnlineFriendMessage> Messages;
var const localized string SendingPlayerNameCol;
var const localized string bIsFriendInviteCol;
var const localized string bWasAcceptedCol;
var const localized string bWasDeniedCol;
var const localized string MessageCol;
var string LastInviteFrom;

event OnRegister(LocalPlayer InPlayer)
{
    local OnlineSubsystem OnlineSub;
    local OnlinePlayerInterface PlayerInterface;

    super.OnRegister(InPlayer);
    // End:0x195
    if(PlayerControllerId != -1)
    {
        OnlineSub = class'GameEngine'.static.GetOnlineSubsystem();
        // End:0x195
        if(OnlineSub != none)
        {
            PlayerInterface = OnlineSub.PlayerInterface;
            // End:0x195
            if(NotEqual_InterfaceInterface(PlayerInterface, (none)))
            {
                PlayerInterface.AddLoginChangeDelegate(OnLoginChange);
                PlayerInterface.AddFriendMessageReceivedDelegate(byte(PlayerControllerId), OnFriendMessageReceived);
                PlayerInterface.AddFriendInviteReceivedDelegate(byte(PlayerControllerId), OnFriendInviteReceived);
                PlayerInterface.AddReceivedGameInviteDelegate(byte(PlayerControllerId), OnGameInviteReceived);
                ReadMessages();
            }
        }
    }
    //return;    
}

event OnUnregister()
{
    local OnlineSubsystem OnlineSub;
    local OnlinePlayerInterface PlayerInterface;

    OnlineSub = class'GameEngine'.static.GetOnlineSubsystem();
    // End:0x165
    if(OnlineSub != none)
    {
        PlayerInterface = OnlineSub.PlayerInterface;
        // End:0x165
        if(NotEqual_InterfaceInterface(PlayerInterface, (none)))
        {
            PlayerInterface.ClearLoginChangeDelegate(OnLoginChange);
            PlayerInterface.ClearFriendMessageReceivedDelegate(byte(PlayerControllerId), OnFriendMessageReceived);
            PlayerInterface.ClearFriendInviteReceivedDelegate(byte(PlayerControllerId), OnFriendInviteReceived);
            PlayerInterface.ClearReceivedGameInviteDelegate(byte(PlayerControllerId), OnGameInviteReceived);
        }
    }
    super.OnUnregister();
    //return;    
}

function ReadMessages()
{
    local OnlineSubsystem OnlineSub;
    local OnlinePlayerInterface PlayerInterface;

    Messages.Length = 0;
    OnlineSub = class'GameEngine'.static.GetOnlineSubsystem();
    // End:0xF8
    if(OnlineSub != none)
    {
        PlayerInterface = OnlineSub.PlayerInterface;
        // End:0xF8
        if(NotEqual_InterfaceInterface(PlayerInterface, (none)) && PlayerInterface.GetLoginStatus(byte(PlayerControllerId)) > 0)
        {
            PlayerInterface.GetFriendMessages(byte(PlayerControllerId), Messages);
        }
    }
    //return;    
}

function OnFriendInviteReceived(byte LocalUserNum, UniqueNetId RequestingPlayer, string RequestingNick, string Message)
{
    ReadMessages();
    //return;    
}

function OnFriendMessageReceived(byte LocalUserNum, UniqueNetId SendingPlayer, string SendingNick, string Message)
{
    ReadMessages();
    //return;    
}

function OnLoginChange(byte LocalUserNum)
{
    // End:0x23
    if(LocalUserNum == PlayerControllerId)
    {
        ReadMessages();
    }
    //return;    
}

function OnGameInviteReceived(byte LocalUserNum, string InviterName)
{
    LastInviteFrom = InviterName;
    ReadMessages();
    //return;    
}

defaultproperties
{
    SendingPlayerNameCol="Sender's Name"
    bIsFriendInviteCol="Friend Invitation"
    bWasAcceptedCol="Friend Was Accepted"
    bWasDeniedCol="Friend Was Denied"
    MessageCol="Message"
}