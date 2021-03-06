/*******************************************************************************
 * AppNotificationsBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AppNotificationsBase extends PlatformInterfaceBase
    transient
    native(PlatformInterface);

struct native NotificationMessageInfo
{
    var string Key;
    var string Value;

    structdefaultproperties
    {
        Key=""
        Value=""
    }
};

struct native NotificationInfo
{
    var bool bIsLocal;
    var string MessageBody;
    var int BadgeNumber;
    var array<NotificationMessageInfo> MessageInfo;

    structdefaultproperties
    {
        bIsLocal=false
        MessageBody=""
        BadgeNumber=0
        MessageInfo=none
    }
};

struct native LaunchNotificationInfo
{
    var bool bWasLaunchedViaNotification;
    var NotificationInfo Notification;

    structdefaultproperties
    {
        bWasLaunchedViaNotification=false
        Notification=(bIsLocal=false,MessageBody="",BadgeNumber=0,MessageInfo=none)
    }
};

var const LaunchNotificationInfo AppLaunchNotification;
var delegate<OnReceivedLocalNotification> __OnReceivedLocalNotification__Delegate;
var delegate<OnReceivedRemoteNotification> __OnReceivedRemoteNotification__Delegate;
var delegate<OnRegisterForRemoteNotificationsComplete> __OnRegisterForRemoteNotificationsComplete__Delegate;
var delegate<OnApplicationWillEnterForeground> __OnApplicationWillEnterForeground__Delegate;

// Export UAppNotificationsBase::execInit(FFrame&, void* const)
native event Init();

function bool WasLaunchedViaNotification()
{
    return AppLaunchNotification.bWasLaunchedViaNotification;
    //return ReturnValue;    
}

// Export UAppNotificationsBase::execScheduleLocalNotification(FFrame&, void* const)
native function ScheduleLocalNotification(const out NotificationInfo Notification, int StartOffsetSeconds);

// Export UAppNotificationsBase::execCancelAllScheduledLocalNotifications(FFrame&, void* const)
native function CancelAllScheduledLocalNotifications();

// Export UAppNotificationsBase::execCancelScheduledLocalNotification(FFrame&, void* const)
native function CancelScheduledLocalNotification(const out NotificationMessageInfo KeyValue);

delegate OnReceivedLocalNotification(const out NotificationInfo Notification, bool bWasAppActive)
{
    //return;    
}

delegate OnReceivedRemoteNotification(const out NotificationInfo Notification, bool bWasAppActive)
{
    //return;    
}

// Export UAppNotificationsBase::execRegisterForRemoteNotifications(FFrame&, void* const)
native function RegisterForRemoteNotifications(optional bool bWantsAlerts, optional bool bWantsBadge, optional bool bWantsSound)
{
    bWantsAlerts = true;
    bWantsBadge = true;
    bWantsSound = false;                    
}

delegate OnRegisterForRemoteNotificationsComplete(bool bDidAccept, string PushNotificationToken)
{
    //return;    
}

// Export UAppNotificationsBase::execAreRemoteNotificationsEnabled(FFrame&, void* const)
native function bool AreRemoteNotificationsEnabled();

// Export UAppNotificationsBase::execAllowsRemoteNotificationsAlerts(FFrame&, void* const)
native function bool AllowsRemoteNotificationsAlerts();

// Export UAppNotificationsBase::execAllowsRemoteNotificationsBadegeIcons(FFrame&, void* const)
native function bool AllowsRemoteNotificationsBadegeIcons();

// Export UAppNotificationsBase::execAllowsRemoteNotificationsSounds(FFrame&, void* const)
native function bool AllowsRemoteNotificationsSounds();

delegate OnApplicationWillEnterForeground()
{
    //return;    
}

function DebugLogNotification(const out NotificationInfo Notification)
{
    local int Idx;

    LogInternal(((((("Notification:" @ "bIsLocal=") $ string(Notification.bIsLocal)) @ "BadgeNumber=") $ string(Notification.BadgeNumber)) @ "MessageBody=") $ Notification.MessageBody);
    Idx = 0;
    J0xA9:
    // End:0x17A [Loop If]
    if(Idx < Notification.MessageInfo.Length)
    {
        LogInternal(((("Notification:" @ "key=") $ Notification.MessageInfo[Idx].Key) @ "val=") $ Notification.MessageInfo[Idx].Value);
        ++ Idx;
        // [Loop Continue]
        goto J0xA9;
    }
    //return;    
}
