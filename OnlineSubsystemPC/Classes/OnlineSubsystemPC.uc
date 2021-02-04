/*******************************************************************************
 * OnlineSubsystemPC generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class OnlineSubsystemPC extends OnlineSubsystemCommonImpl
    native
    config(Engine)
    implements(OnlinePlayerInterface,OnlineVoiceInterface,OnlineStatsInterface,OnlineSystemInterface);

var const string LoggedInPlayerName;
var const UniqueNetId LoggedInPlayerId;
var native const array<Pointer> AsyncTasks;
var config string ProfileDataDirectory;
var config string ProfileDataExtension;
var array< delegate<OnReadProfileSettingsComplete> > ReadProfileSettingsDelegates;
var array< delegate<OnWriteProfileSettingsComplete> > WriteProfileSettingsDelegates;
var OnlineProfileSettings CachedProfile;
var array< delegate<OnRecognitionComplete> > SpeechRecognitionCompleteDelegates;
var array< delegate<OnReadFriendsComplete> > ReadFriendsDelegates;
var array< delegate<OnFriendsChange> > FriendsChangeDelegates;
var array< delegate<OnMutingChange> > MutingChangeDelegates;
var delegate<OnLoginChange> __OnLoginChange__Delegate;
var delegate<OnLoginCancelled> __OnLoginCancelled__Delegate;
var delegate<OnCurrentUserChanged> __OnCurrentUserChanged__Delegate;
var delegate<OnTokenAndSignatureRetrieved> __OnTokenAndSignatureRetrieved__Delegate;
var delegate<OnMutingChange> __OnMutingChange__Delegate;
var delegate<OnReadTitleFileComplete> __OnReadTitleFileComplete__Delegate;
var delegate<OnPlayerTalkingStateChange> __OnPlayerTalkingStateChange__Delegate;
var delegate<OnFriendsChange> __OnFriendsChange__Delegate;
var delegate<OnLoginFailed> __OnLoginFailed__Delegate;
var delegate<OnSystemUserControllerPairingChanged> __OnSystemUserControllerPairingChanged__Delegate;
var delegate<OnLogoutCompleted> __OnLogoutCompleted__Delegate;
var delegate<OnPrivilegeLevelChecked> __OnPrivilegeLevelChecked__Delegate;
var delegate<OnReadProfileSettingsComplete> __OnReadProfileSettingsComplete__Delegate;
var delegate<OnWriteProfileSettingsComplete> __OnWriteProfileSettingsComplete__Delegate;
var delegate<OnLoginStatusChange> __OnLoginStatusChange__Delegate;
var delegate<OnReadFriendsComplete> __OnReadFriendsComplete__Delegate;
var delegate<OnRecognitionComplete> __OnRecognitionComplete__Delegate;
var delegate<OnReadOnlineStatsComplete> __OnReadOnlineStatsComplete__Delegate;
var delegate<OnFlushOnlineStatsComplete> __OnFlushOnlineStatsComplete__Delegate;
var delegate<OnRegisterHostStatGuidComplete> __OnRegisterHostStatGuidComplete__Delegate;
var delegate<OnLinkStatusChange> __OnLinkStatusChange__Delegate;
var delegate<OnExternalUIChange> __OnExternalUIChange__Delegate;
var delegate<OnControllerChange> __OnControllerChange__Delegate;
var delegate<OnConnectionStatusChange> __OnConnectionStatusChange__Delegate;
var delegate<OnStorageDeviceChange> __OnStorageDeviceChange__Delegate;
var delegate<OnKeyboardInputComplete> __OnKeyboardInputComplete__Delegate;
var delegate<OnWritePlayerStorageComplete> __OnWritePlayerStorageComplete__Delegate;
var delegate<OnReadPlayerStorageForNetIdComplete> __OnReadPlayerStorageForNetIdComplete__Delegate;
var delegate<OnReadPlayerStorageComplete> __OnReadPlayerStorageComplete__Delegate;
var delegate<OnAddFriendByNameComplete> __OnAddFriendByNameComplete__Delegate;
var delegate<OnFriendInviteReceived> __OnFriendInviteReceived__Delegate;
var delegate<OnReceivedGameInvite> __OnReceivedGameInvite__Delegate;
var delegate<OnReceivedGameInviteById> __OnReceivedGameInviteById__Delegate;
var delegate<OnJoinFriendGameComplete> __OnJoinFriendGameComplete__Delegate;
var delegate<OnFriendMessageReceived> __OnFriendMessageReceived__Delegate;
var delegate<OnUnlockAchievementComplete> __OnUnlockAchievementComplete__Delegate;
var delegate<OnReadAchievementsComplete> __OnReadAchievementsComplete__Delegate;
var delegate<OnStatisticChanged> __OnStatisticChanged__Delegate;

// Export UOnlineSubsystemPC::execInit(FFrame&, void* const)
native event bool Init();

delegate OnLoginChange(byte LocalUserNum)
{
    //return;    
}

delegate OnLoginCancelled()
{
    //return;    
}

delegate OnCurrentUserChanged(byte LocalUserNum, string CurrentUser, string LoggedInUser)
{
    //return;    
}

delegate OnTokenAndSignatureRetrieved(byte LocalUserNum, string URL, string Token, string Signature)
{
    //return;    
}

function GetTokenAndSignatureForURL(byte LocalUserNum, string URL)
{
    //return;    
}

function AddURLTokenRetrievedDelegate(byte LocalUserNum, delegate<OnTokenAndSignatureRetrieved> tsrDelegate)
{
    //return;    
}

function ClearURLTokenRetrievedDelegate(byte LocalUserNum, delegate<OnTokenAndSignatureRetrieved> tsrDelegate)
{
    //return;    
}

delegate OnMutingChange()
{
    //return;    
}

delegate OnReadTitleFileComplete(bool bWasSuccessful, string Filename)
{
    //return;    
}

function bool ReadTitleFile(string FileToRead)
{
    //return ReturnValue;    
}

function AddReadTitleFileCompleteDelegate(delegate<OnReadTitleFileComplete> ReadTitleFileCompleteDelegate)
{
    //return;    
}

function ClearReadTitleFileCompleteDelegate(delegate<OnReadTitleFileComplete> ReadTitleFileCompleteDelegate)
{
    //return;    
}

function bool GetTitleFileContents(string Filename, out array<byte> FileContents)
{
    //return ReturnValue;    
}

function Engine.OnlineSubsystem.EOnlineEnumerationReadState GetTitleFileState(string Filename)
{
    //return ReturnValue;    
}

delegate OnPlayerTalkingStateChange(UniqueNetId Player, bool bIsTalking)
{
    //return;    
}

function AddPlayerTalkingDelegate(delegate<OnPlayerTalkingStateChange> TalkerDelegate)
{
    //return;    
}

function ClearPlayerTalkingDelegate(delegate<OnPlayerTalkingStateChange> TalkerDelegate)
{
    //return;    
}

delegate OnFriendsChange()
{
    //return;    
}

function bool ShowLoginUI(byte LocalUserNum, optional bool bShowOnlineOnly)
{
    bShowOnlineOnly = false;
    //return ReturnValue;    
}

function bool Login(byte LocalUserNum, string LoginName, string Password, optional bool bWantsLocalOnly)
{
    //return ReturnValue;    
}

function bool AutoLogin()
{
    //return ReturnValue;    
}

delegate OnLoginFailed(byte LocalUserNum, Engine.OnlineSubsystem.EOnlineServerConnectionStatus ErrorCode)
{
    //return;    
}

function AddLoginFailedDelegate(byte LocalUserNum, delegate<OnLoginFailed> LoginDelegate)
{
    //return;    
}

function ClearLoginFailedDelegate(byte LocalUserNum, delegate<OnLoginFailed> LoginDelegate)
{
    //return;    
}

delegate OnSystemUserControllerPairingChanged(int NewLocalUserNum, int PreviousLocalUserNum)
{
    //return;    
}

function AddSystemUserContrllerPairingChangedDelegate(delegate<OnSystemUserControllerPairingChanged> PairingChangeDelegate)
{
    //return;    
}

function ClearSystemUserContrllerPairingChangedDelegate(delegate<OnSystemUserControllerPairingChanged> PairingChangeDelegate)
{
    //return;    
}

function bool PairUserAndControllerAtIndex(byte PlayerIndex, byte ControllerIndex, int PairIndex)
{
    //return ReturnValue;    
}

function bool Logout(byte LocalUserNum)
{
    //return ReturnValue;    
}

delegate OnLogoutCompleted(bool bWasSuccessful)
{
    //return;    
}

function AddLogoutCompletedDelegate(byte LocalUserNum, delegate<OnLogoutCompleted> LogoutDelegate)
{
    //return;    
}

function ClearLogoutCompletedDelegate(byte LocalUserNum, delegate<OnLogoutCompleted> LogoutDelegate)
{
    //return;    
}

function Engine.OnlineSubsystem.ELoginStatus GetLoginStatus(byte LocalUserNum)
{
    return 0;
    //return ReturnValue;    
}

function bool GetUniquePlayerId(byte LocalUserNum, out UniqueNetId PlayerID)
{
    PlayerID = LoggedInPlayerId;
    return true;
    //return ReturnValue;    
}

function string GetPlayerNickname(byte LocalUserNum)
{
    return LoggedInPlayerName;
    //return ReturnValue;    
}

function bool GetControllerIdFromNetId(UniqueNetId PlayerID, out byte ControllerId)
{
    //return ReturnValue;    
}

delegate OnPrivilegeLevelChecked(byte LocalUserNum, Engine.OnlineSubsystem.EFeaturePrivilege Privilege, Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevel, bool bDiffersFromHint)
{
    //return;    
}

function AddPrivilegeLevelCheckedDelegate(delegate<OnPrivilegeLevelChecked> PrivilegeDelegate)
{
    //return;    
}

function ClearPrivilegeLevelCheckedDelegate(delegate<OnPrivilegeLevelChecked> PrivilegeDelegate)
{
    //return;    
}

function bool CanPlayOnline(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanCommunicateText(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanCommunicateVideo(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanCommunicateVoice(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanShareUserCreatedContent(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanPurchaseContent(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanViewPlayerProfiles(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanShowPresenceInformation(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanRecordDVRClips(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanUseCloudStorage(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanAccessPremiumContent(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanAccessPremiumVideoContent(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanBrowseInternet(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanShareWithSocialNetwork(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanShareKinectContent(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool CanUploadFitnessData(byte LocalUserNum, out Engine.OnlineSubsystem.EFeaturePrivilegeLevel PrivilegeLevelHint, optional bool bAttemptToResolve, optional string Reason)
{
    bAttemptToResolve = false;
    Reason = "";
    //return ReturnValue;    
}

function bool IsFriend(byte LocalUserNum, UniqueNetId PlayerID)
{
    //return ReturnValue;    
}

function bool AreAnyFriends(byte LocalUserNum, out array<FriendsQuery> Query)
{
    //return ReturnValue;    
}

function bool IsMuted(byte LocalUserNum, UniqueNetId PlayerID)
{
    //return ReturnValue;    
}

function bool IsTalkerMuted(UniqueNetId ConsoleId)
{
    //return ReturnValue;    
}

function bool ShowFriendsUI(byte LocalUserNum)
{
    //return ReturnValue;    
}

function AddLoginChangeDelegate(delegate<OnLoginChange> LoginDelegate)
{
    //return;    
}

function ClearLoginChangeDelegate(delegate<OnLoginChange> LoginDelegate)
{
    //return;    
}

function AddLoginCancelledDelegate(delegate<OnLoginCancelled> CancelledDelegate)
{
    //return;    
}

function ClearLoginCancelledDelegate(delegate<OnLoginCancelled> CancelledDelegate)
{
    //return;    
}

function AddCurrentUserChangedDelegate(delegate<OnCurrentUserChanged> CurrentUserDelegate)
{
    //return;    
}

function ClearCurrentUserChangedDelegate(delegate<OnCurrentUserChanged> CurrentUserDelegate)
{
    //return;    
}

function bool IsLocalLogin(byte LocalUserNum)
{
    //return ReturnValue;    
}

function bool IsGuestLogin(byte LocalUserNum)
{
    //return ReturnValue;    
}

function AddMutingChangeDelegate(delegate<OnMutingChange> MutingDelegate)
{
    // End:0x3E
    if(MutingChangeDelegates.Find(MutingDelegate) == -1)
    {
        MutingChangeDelegates[MutingChangeDelegates.Length] = MutingDelegate;
    }
    //return;    
}

function ClearMutingChangeDelegate(delegate<OnFriendsChange> MutingDelegate)
{
    local int RemoveIndex;

    RemoveIndex = MutingChangeDelegates.Find(MutingDelegate);
    // End:0x48
    if(RemoveIndex != -1)
    {
        MutingChangeDelegates.Remove(RemoveIndex, 1);
    }
    //return;    
}

function AddFriendsChangeDelegate(byte LocalUserNum, delegate<OnFriendsChange> FriendsDelegate)
{
    // End:0x55
    if(LocalUserNum == 0)
    {
        // End:0x52
        if(FriendsChangeDelegates.Find(FriendsDelegate) == -1)
        {
            FriendsChangeDelegates[FriendsChangeDelegates.Length] = FriendsDelegate;
        }
    }
    // End:0xAA
    else
    {
        WarnInternal(("Invalid user index (" $ string(LocalUserNum)) $ ") specified for ClearFriendsChangeDelegate()");
    }
    //return;    
}

function ClearFriendsChangeDelegate(byte LocalUserNum, delegate<OnFriendsChange> FriendsDelegate)
{
    local int RemoveIndex;

    // End:0x5F
    if(LocalUserNum == 0)
    {
        RemoveIndex = FriendsChangeDelegates.Find(FriendsDelegate);
        // End:0x5C
        if(RemoveIndex != -1)
        {
            FriendsChangeDelegates.Remove(RemoveIndex, 1);
        }
    }
    // End:0xB4
    else
    {
        WarnInternal(("Invalid user index (" $ string(LocalUserNum)) $ ") specified for ClearFriendsChangeDelegate()");
    }
    //return;    
}

// Export UOnlineSubsystemPC::execReadProfileSettings(FFrame&, void* const)
native function bool ReadProfileSettings(byte LocalUserNum, OnlineProfileSettings ProfileSettings);

delegate OnReadProfileSettingsComplete(byte LocalUserNum, bool bWasSuccessful)
{
    //return;    
}

function AddReadProfileSettingsCompleteDelegate(byte LocalUserNum, delegate<OnReadProfileSettingsComplete> ReadProfileSettingsCompleteDelegate)
{
    // End:0x55
    if(LocalUserNum == 0)
    {
        // End:0x52
        if(ReadProfileSettingsDelegates.Find(ReadProfileSettingsCompleteDelegate) == -1)
        {
            ReadProfileSettingsDelegates[ReadProfileSettingsDelegates.Length] = ReadProfileSettingsCompleteDelegate;
        }
    }
    // End:0xB6
    else
    {
        WarnInternal(("Invalid user index (" $ string(LocalUserNum)) $ ") specified for AddReadProfileSettingsCompleteDelegate()");
    }
    //return;    
}

function ClearReadProfileSettingsCompleteDelegate(byte LocalUserNum, delegate<OnReadProfileSettingsComplete> ReadProfileSettingsCompleteDelegate)
{
    local int RemoveIndex;

    // End:0x5F
    if(LocalUserNum == 0)
    {
        RemoveIndex = ReadProfileSettingsDelegates.Find(ReadProfileSettingsCompleteDelegate);
        // End:0x5C
        if(RemoveIndex != -1)
        {
            ReadProfileSettingsDelegates.Remove(RemoveIndex, 1);
        }
    }
    // End:0xC2
    else
    {
        WarnInternal(("Invalid user index (" $ string(LocalUserNum)) $ ") specified for ClearReadProfileSettingsCompleteDelegate()");
    }
    //return;    
}

function OnlineProfileSettings GetProfileSettings(byte LocalUserNum)
{
    // End:0x1E
    if(LocalUserNum == 0)
    {
        return CachedProfile;
    }
    return none;
    //return ReturnValue;    
}

// Export UOnlineSubsystemPC::execWriteProfileSettings(FFrame&, void* const)
native function bool WriteProfileSettings(byte LocalUserNum, OnlineProfileSettings ProfileSettings);

delegate OnWriteProfileSettingsComplete(byte LocalUserNum, bool bWasSuccessful)
{
    //return;    
}

function AddWriteProfileSettingsCompleteDelegate(byte LocalUserNum, delegate<OnWriteProfileSettingsComplete> WriteProfileSettingsCompleteDelegate)
{
    // End:0x55
    if(LocalUserNum == 0)
    {
        // End:0x52
        if(WriteProfileSettingsDelegates.Find(WriteProfileSettingsCompleteDelegate) == -1)
        {
            WriteProfileSettingsDelegates[WriteProfileSettingsDelegates.Length] = WriteProfileSettingsCompleteDelegate;
        }
    }
    // End:0xB7
    else
    {
        WarnInternal(("Invalid user index (" $ string(LocalUserNum)) $ ") specified for AddWriteProfileSettingsCompleteDelegate()");
    }
    //return;    
}

function ClearWriteProfileSettingsCompleteDelegate(byte LocalUserNum, delegate<OnWriteProfileSettingsComplete> WriteProfileSettingsCompleteDelegate)
{
    local int RemoveIndex;

    // End:0x5F
    if(LocalUserNum == 0)
    {
        RemoveIndex = WriteProfileSettingsDelegates.Find(WriteProfileSettingsCompleteDelegate);
        // End:0x5C
        if(RemoveIndex != -1)
        {
            WriteProfileSettingsDelegates.Remove(RemoveIndex, 1);
        }
    }
    // End:0xC3
    else
    {
        WarnInternal(("Invalid user index (" $ string(LocalUserNum)) $ ") specified for ClearWriteProfileSettingsCompleteDelegate()");
    }
    //return;    
}

delegate OnLoginStatusChange(Engine.OnlineSubsystem.ELoginStatus NewStatus, UniqueNetId NewId)
{
    //return;    
}

function AddLoginStatusChangeDelegate(delegate<OnLoginStatusChange> LoginStatusDelegate, byte LocalUserNum)
{
    //return;    
}

function ClearLoginStatusChangeDelegate(delegate<OnLoginStatusChange> LoginStatusDelegate, byte LocalUserNum)
{
    //return;    
}

delegate OnReadFriendsComplete(bool bWasSuccessful)
{
    //return;    
}

function bool ReadFriendsList(byte LocalUserNum, optional int Count, optional int StartingAt)
{
    local int Index;
    local delegate<OnReadFriendsComplete> CallDelegate;

    Index = 0;
    J0x0D:
    // End:0x73 [Loop If]
    if(Index < ReadFriendsDelegates.Length)
    {
        CallDelegate = ReadFriendsDelegates[Index];
        // End:0x65
        if(CallDelegate != none)
        {
            OnReadFriendsComplete(false);
        }
        ++ Index;
        // [Loop Continue]
        goto J0x0D;
    }
    return false;
    //return ReturnValue;    
}

function AddReadFriendsCompleteDelegate(byte LocalUserNum, delegate<OnReadFriendsComplete> ReadFriendsCompleteDelegate)
{
    // End:0x55
    if(LocalUserNum == 0)
    {
        // End:0x52
        if(ReadFriendsDelegates.Find(ReadFriendsCompleteDelegate) == -1)
        {
            ReadFriendsDelegates[ReadFriendsDelegates.Length] = ReadFriendsCompleteDelegate;
        }
    }
    // End:0xAE
    else
    {
        WarnInternal(("Invalid user index (" $ string(LocalUserNum)) $ ") specified for AddReadFriendsCompleteDelegate()");
    }
    //return;    
}

function ClearReadFriendsCompleteDelegate(byte LocalUserNum, delegate<OnReadFriendsComplete> ReadFriendsCompleteDelegate)
{
    local int RemoveIndex;

    // End:0x5F
    if(LocalUserNum == 0)
    {
        RemoveIndex = ReadFriendsDelegates.Find(ReadFriendsCompleteDelegate);
        // End:0x5C
        if(RemoveIndex != -1)
        {
            ReadFriendsDelegates.Remove(RemoveIndex, 1);
        }
    }
    // End:0xBA
    else
    {
        WarnInternal(("Invalid user index (" $ string(LocalUserNum)) $ ") specified for ClearReadFriendsCompleteDelegate()");
    }
    //return;    
}

function Engine.OnlineSubsystem.EOnlineEnumerationReadState GetFriendsList(byte LocalUserNum, out array<OnlineFriend> Friends, optional int Count, optional int StartingAt)
{
    //return ReturnValue;    
}

function bool RegisterLocalTalker(byte LocalUserNum, optional byte ChannelIndex)
{
    //return ReturnValue;    
}

function bool UnregisterLocalTalker(byte LocalUserNum, optional byte ChannelIndex)
{
    //return ReturnValue;    
}

function bool RegisterRemoteTalker(UniqueNetId PlayerID)
{
    //return ReturnValue;    
}

function bool UnregisterRemoteTalker(UniqueNetId PlayerID)
{
    //return ReturnValue;    
}

function bool IsLocalPlayerTalking(byte LocalUserNum)
{
    //return ReturnValue;    
}

function bool IsRemotePlayerTalking(UniqueNetId PlayerID)
{
    //return ReturnValue;    
}

function bool IsHeadsetPresent(byte LocalUserNum)
{
    //return ReturnValue;    
}

function bool SetRemoteTalkerPriority(byte LocalUserNum, UniqueNetId PlayerID, int Priority)
{
    //return ReturnValue;    
}

function bool MuteRemoteTalker(byte LocalUserNum, UniqueNetId PlayerID, optional bool bIsSystemWide)
{
    //return ReturnValue;    
}

function bool UnmuteRemoteTalker(byte LocalUserNum, UniqueNetId PlayerID, optional bool bIsSystemWide)
{
    //return ReturnValue;    
}

function StartNetworkedVoice(byte LocalUserNum)
{
    //return;    
}

function StopNetworkedVoice(byte LocalUserNum)
{
    //return;    
}

function bool StartSpeechRecognition(byte LocalUserNum)
{
    //return ReturnValue;    
}

function bool StopSpeechRecognition(byte LocalUserNum)
{
    //return ReturnValue;    
}

function bool GetRecognitionResults(byte LocalUserNum, out array<SpeechRecognizedWord> Words)
{
    //return ReturnValue;    
}

delegate OnRecognitionComplete()
{
    //return;    
}

function AddRecognitionCompleteDelegate(byte LocalUserNum, delegate<OnRecognitionComplete> RecognitionDelegate)
{
    // End:0x3E
    if(SpeechRecognitionCompleteDelegates.Find(RecognitionDelegate) == -1)
    {
        SpeechRecognitionCompleteDelegates[SpeechRecognitionCompleteDelegates.Length] = RecognitionDelegate;
    }
    //return;    
}

function ClearRecognitionCompleteDelegate(byte LocalUserNum, delegate<OnRecognitionComplete> RecognitionDelegate)
{
    local int RemoveIndex;

    RemoveIndex = SpeechRecognitionCompleteDelegates.Find(RecognitionDelegate);
    // End:0x48
    if(RemoveIndex != -1)
    {
        SpeechRecognitionCompleteDelegates.Remove(RemoveIndex, 1);
    }
    //return;    
}

function bool SelectVocabulary(byte LocalUserNum, int VocabularyId)
{
    //return ReturnValue;    
}

function bool SetSpeechRecognitionObject(byte LocalUserNum, SpeechRecognition SpeechRecogObj)
{
    //return ReturnValue;    
}

delegate OnReadOnlineStatsComplete(bool bWasSuccessful)
{
    //return;    
}

function bool SendPlayerSessionStart(byte LocalUserNum, string MultiplayerCorrelationId, int GameplayModeId, int DifficultyLevelId)
{
    //return ReturnValue;    
}

function bool SendPlayerSessionEnd(byte LocalUserNum, string MultiplayerCorrelationId, int GameplayModeId, int DifficultyLevelId, int ExitStatusId)
{
    //return ReturnValue;    
}

function bool SendPlayerSessionPause(byte LocalUserNum, string MultiplayerCorrelationId)
{
    //return ReturnValue;    
}

function bool SendPlayerSessionResume(byte LocalUserNum, string MultiplayerCorrelationId, int GameplayModeId, int DifficultyLevelId)
{
    //return ReturnValue;    
}

function bool SendTestEvent(byte LocalUserNum, string TestStatInstancing, int TestStatParameter)
{
    //return ReturnValue;    
}

function bool ReadOnlineStatsForPlayer(byte LocalUserNum, OnlineStatsRead StatsRead)
{
    //return ReturnValue;    
}

function bool ReadOnlineStats(byte LocalUserNum, const out array<UniqueNetId> Players, OnlineStatsRead StatsRead)
{
    //return ReturnValue;    
}

function bool ReadOnlineStatsForFriends(byte LocalUserNum, OnlineStatsRead StatsRead, optional bool FavoriteFriendsOnly, optional int NumToRead)
{
    FavoriteFriendsOnly = false;
    NumToRead = 100;
    //return ReturnValue;    
}

function bool ReadOnlineStatsByRank(byte LocalUserNum, OnlineStatsRead StatsRead, optional int StartIndex, optional int NumToRead)
{
    StartIndex = 1;
    NumToRead = 100;
    //return ReturnValue;    
}

function bool ReadOnlineStatsByRankAroundPlayer(byte LocalUserNum, OnlineStatsRead StatsRead, optional int NumRows)
{
    NumRows = 10;
    //return ReturnValue;    
}

function AddReadOnlineStatsCompleteDelegate(delegate<OnReadOnlineStatsComplete> ReadOnlineStatsCompleteDelegate)
{
    //return;    
}

function ClearReadOnlineStatsCompleteDelegate(delegate<OnReadOnlineStatsComplete> ReadOnlineStatsCompleteDelegate)
{
    //return;    
}

function FreeStats(OnlineStatsRead StatsRead)
{
    //return;    
}

function bool WriteOnlineStats(name SessionName, UniqueNetId Player, OnlineStatsWrite StatsWrite)
{
    //return ReturnValue;    
}

function bool FlushOnlineStats(name SessionName)
{
    //return ReturnValue;    
}

delegate OnFlushOnlineStatsComplete(name SessionName, bool bWasSuccessful)
{
    //return;    
}

function AddFlushOnlineStatsCompleteDelegate(delegate<OnFlushOnlineStatsComplete> FlushOnlineStatsCompleteDelegate)
{
    //return;    
}

function ClearFlushOnlineStatsCompleteDelegate(delegate<OnFlushOnlineStatsComplete> FlushOnlineStatsCompleteDelegate)
{
    //return;    
}

function bool WriteOnlinePlayerScores(name SessionName, int LeaderboardId, const out array<OnlinePlayerScore> PlayerScores)
{
    //return ReturnValue;    
}

function string GetHostStatGuid()
{
    //return ReturnValue;    
}

function bool RegisterHostStatGuid(const out string HostStatGuid)
{
    //return ReturnValue;    
}

delegate OnRegisterHostStatGuidComplete(bool bWasSuccessful)
{
    //return;    
}

function AddRegisterHostStatGuidCompleteDelegate(delegate<OnRegisterHostStatGuidComplete> RegisterHostStatGuidCompleteDelegate)
{
    //return;    
}

function ClearRegisterHostStatGuidCompleteDelegateDelegate(delegate<OnRegisterHostStatGuidComplete> RegisterHostStatGuidCompleteDelegate)
{
    //return;    
}

function string GetClientStatGuid()
{
    //return ReturnValue;    
}

function bool RegisterStatGuid(UniqueNetId PlayerID, const out string ClientStatGuid)
{
    //return ReturnValue;    
}

function CalcAggregateSkill(array<Double> Mus, array<Double> Sigmas, out Double OutAggregateMu, out Double OutAggregateSigma)
{
    //return;    
}

event string GetPlayerNicknameFromIndex(int UserIndex)
{
    // End:0x19
    if(UserIndex == 0)
    {
        return LoggedInPlayerName;
    }
    return "";
    //return ReturnValue;    
}

function bool HasLinkConnection()
{
    return true;
    //return ReturnValue;    
}

delegate OnLinkStatusChange(bool bIsConnected)
{
    //return;    
}

function AddLinkStatusChangeDelegate(delegate<OnLinkStatusChange> LinkStatusDelegate)
{
    //return;    
}

function ClearLinkStatusChangeDelegate(delegate<OnLinkStatusChange> LinkStatusDelegate)
{
    //return;    
}

delegate OnExternalUIChange(bool bIsOpening)
{
    //return;    
}

function AddExternalUIChangeDelegate(delegate<OnExternalUIChange> ExternalUIDelegate)
{
    //return;    
}

function ClearExternalUIChangeDelegate(delegate<OnExternalUIChange> ExternalUIDelegate)
{
    //return;    
}

function Engine.OnlineSubsystem.ENetworkNotificationPosition GetNetworkNotificationPosition()
{
    //return ReturnValue;    
}

function SetNetworkNotificationPosition(Engine.OnlineSubsystem.ENetworkNotificationPosition NewPos)
{
    //return;    
}

delegate OnControllerChange(int ControllerId, bool bIsConnected, bool bPauseGame)
{
    //return;    
}

function AddControllerChangeDelegate(delegate<OnControllerChange> ControllerChangeDelegate)
{
    //return;    
}

function ClearControllerChangeDelegate(delegate<OnControllerChange> ControllerChangeDelegate)
{
    //return;    
}

function bool IsControllerConnected(int ControllerId)
{
    // End:0x11
    if(ControllerId == 0)
    {
        return true;
    }
    return false;
    //return ReturnValue;    
}

function Engine.OnlineSubsystem.EOnlineServerConnectionStatus GetCurrentConnectionStatus()
{
    //return ReturnValue;    
}

delegate OnConnectionStatusChange(Engine.OnlineSubsystem.EOnlineServerConnectionStatus ConnectionStatus)
{
    //return;    
}

function AddConnectionStatusChangeDelegate(delegate<OnConnectionStatusChange> ConnectionStatusDelegate)
{
    //return;    
}

function ClearConnectionStatusChangeDelegate(delegate<OnConnectionStatusChange> ConnectionStatusDelegate)
{
    //return;    
}

function Engine.OnlineSubsystem.ENATType GetNATType()
{
    return 1;
    //return ReturnValue;    
}

function int GetLocale()
{
    return 0;
    //return ReturnValue;    
}

delegate OnStorageDeviceChange()
{
    //return;    
}

function AddStorageDeviceChangeDelegate(delegate<OnStorageDeviceChange> StorageDeviceChangeDelegate)
{
    //return;    
}

function ClearStorageDeviceChangeDelegate(delegate<OnStorageDeviceChange> StorageDeviceChangeDelegate)
{
    //return;    
}

function SetOnlineStatus(byte LocalUserNum, string StatusString, optional bool PlayerActive)
{
    PlayerActive = true;
    //return;    
}

function bool ShowKeyboardUI(byte LocalUserNum, string TitleText, string DescriptionText, optional bool bIsPassword, optional bool bShouldValidate, optional string DefaultText, optional int MaxResultLength)
{
    bIsPassword = false;
    bShouldValidate = true;    
    MaxResultLength = 256;
    //return ReturnValue;    
}

function bool HideKeyboardUI(byte LocalUserNum)
{
    //return ReturnValue;    
}

delegate OnKeyboardInputComplete(bool bWasSuccessful)
{
    //return;    
}

function AddKeyboardInputDoneDelegate(delegate<OnKeyboardInputComplete> InputDelegate)
{
    //return;    
}

function ClearKeyboardInputDoneDelegate(delegate<OnKeyboardInputComplete> InputDelegate)
{
    //return;    
}

function string GetKeyboardInputResults(out byte bWasCanceled)
{
    //return ReturnValue;    
}

delegate OnWritePlayerStorageComplete(byte LocalUserNum, bool bWasSuccessful)
{
    //return;    
}

function AddWritePlayerStorageCompleteDelegate(byte LocalUserNum, delegate<OnWritePlayerStorageComplete> WritePlayerStorageCompleteDelegate)
{
    //return;    
}

delegate OnReadPlayerStorageForNetIdComplete(UniqueNetId NetId, bool bWasSuccessful)
{
    //return;    
}

function AddReadPlayerStorageForNetIdCompleteDelegate(UniqueNetId NetId, delegate<OnReadPlayerStorageForNetIdComplete> ReadPlayerStorageForNetIdCompleteDelegate)
{
    //return;    
}

function bool ReadPlayerStorageForNetId(byte LocalUserNum, UniqueNetId NetId, OnlinePlayerStorage PlayerStorage)
{
    //return ReturnValue;    
}

function ClearReadPlayerStorageForNetIdCompleteDelegate(UniqueNetId NetId, delegate<OnReadPlayerStorageForNetIdComplete> ReadPlayerStorageForNetIdCompleteDelegate)
{
    //return;    
}

function bool ReadPlayerStorage(byte LocalUserNum, OnlinePlayerStorage PlayerStorage, optional int DeviceID)
{
    DeviceID = -1;
    //return ReturnValue;    
}

delegate OnReadPlayerStorageComplete(byte LocalUserNum, bool bWasSuccessful)
{
    //return;    
}

function AddReadPlayerStorageCompleteDelegate(byte LocalUserNum, delegate<OnReadPlayerStorageComplete> ReadPlayerStorageCompleteDelegate)
{
    //return;    
}

function ClearReadPlayerStorageCompleteDelegate(byte LocalUserNum, delegate<OnReadPlayerStorageComplete> ReadPlayerStorageCompleteDelegate)
{
    //return;    
}

function OnlinePlayerStorage GetPlayerStorage(byte LocalUserNum)
{
    return none;
    //return ReturnValue;    
}

function bool WritePlayerStorage(byte LocalUserNum, OnlinePlayerStorage PlayerStorage, optional int DeviceID)
{
    DeviceID = -1;
    //return ReturnValue;    
}

function ClearWritePlayerStorageCompleteDelegate(byte LocalUserNum, delegate<OnWritePlayerStorageComplete> WritePlayerStorageCompleteDelegate)
{
    //return;    
}

function bool AddFriend(byte LocalUserNum, UniqueNetId NewFriend, optional string Message)
{
    //return ReturnValue;    
}

function bool AddFriendByName(byte LocalUserNum, string FriendName, optional string Message)
{
    //return ReturnValue;    
}

delegate OnAddFriendByNameComplete(bool bWasSuccessful)
{
    //return;    
}

function AddAddFriendByNameCompleteDelegate(byte LocalUserNum, delegate<OnAddFriendByNameComplete> FriendDelegate)
{
    //return;    
}

function ClearAddFriendByNameCompleteDelegate(byte LocalUserNum, delegate<OnAddFriendByNameComplete> FriendDelegate)
{
    //return;    
}

function bool AcceptFriendInvite(byte LocalUserNum, UniqueNetId RequestingPlayer)
{
    //return ReturnValue;    
}

function bool DenyFriendInvite(byte LocalUserNum, UniqueNetId RequestingPlayer)
{
    //return ReturnValue;    
}

function bool RemoveFriend(byte LocalUserNum, UniqueNetId FormerFriend)
{
    //return ReturnValue;    
}

delegate OnFriendInviteReceived(byte LocalUserNum, UniqueNetId RequestingPlayer, string RequestingNick, string Message)
{
    //return;    
}

function AddFriendInviteReceivedDelegate(byte LocalUserNum, delegate<OnFriendInviteReceived> InviteDelegate)
{
    //return;    
}

function ClearFriendInviteReceivedDelegate(byte LocalUserNum, delegate<OnFriendInviteReceived> InviteDelegate)
{
    //return;    
}

function bool SendMessageToFriend(byte LocalUserNum, UniqueNetId Friend, string Message)
{
    //return ReturnValue;    
}

function bool SendGameInviteToFriend(byte LocalUserNum, name SessionName, UniqueNetId Friend, optional string Text)
{
    //return ReturnValue;    
}

function bool SendGameInviteToFriends(byte LocalUserNum, name SessionName, array<UniqueNetId> Friends, optional string Text)
{
    //return ReturnValue;    
}

delegate OnReceivedGameInvite(byte LocalUserNum, string InviterName)
{
    //return;    
}

function AddReceivedGameInviteDelegate(byte LocalUserNum, delegate<OnReceivedGameInvite> ReceivedGameInviteDelegate)
{
    //return;    
}

function ClearReceivedGameInviteDelegate(byte LocalUserNum, delegate<OnReceivedGameInvite> ReceivedGameInviteDelegate)
{
    //return;    
}

delegate OnReceivedGameInviteById(byte LocalUserNum, UniqueNetId InviterId)
{
    //return;    
}

function AddReceivedGameInviteByIdDelegate(byte LocalUserNum, delegate<OnReceivedGameInviteById> ReceivedGameInviteDelegate)
{
    //return;    
}

function ClearReceivedGameInviteByIdDelegate(byte LocalUserNum, delegate<OnReceivedGameInviteById> ReceivedGameInviteDelegate)
{
    //return;    
}

function bool JoinFriendGame(byte LocalUserNum, UniqueNetId Friend)
{
    //return ReturnValue;    
}

delegate OnJoinFriendGameComplete(bool bWasSuccessful)
{
    //return;    
}

function AddJoinFriendGameCompleteDelegate(delegate<OnJoinFriendGameComplete> JoinFriendGameCompleteDelegate)
{
    //return;    
}

function ClearJoinFriendGameCompleteDelegate(delegate<OnJoinFriendGameComplete> JoinFriendGameCompleteDelegate)
{
    //return;    
}

function GetFriendMessages(byte LocalUserNum, out array<OnlineFriendMessage> FriendMessages)
{
    //return;    
}

delegate OnFriendMessageReceived(byte LocalUserNum, UniqueNetId SendingPlayer, string SendingNick, string Message)
{
    //return;    
}

function AddFriendMessageReceivedDelegate(byte LocalUserNum, delegate<OnFriendMessageReceived> MessageDelegate)
{
    //return;    
}

function ClearFriendMessageReceivedDelegate(byte LocalUserNum, delegate<OnFriendMessageReceived> MessageDelegate)
{
    //return;    
}

function bool MuteAll(byte LocalUserNum, bool bAllowFriends)
{
    //return ReturnValue;    
}

function bool UnmuteAll(byte LocalUserNum)
{
    //return ReturnValue;    
}

function bool UpdatePlayerMuteSetting(bool PlayerMuteSetting)
{
    //return ReturnValue;    
}

function bool DeleteMessage(byte LocalUserNum, int MessageIndex)
{
    //return ReturnValue;    
}

function bool UnlockAchievement(byte LocalUserNum, int AchievementId, optional float PercentComplete)
{
    PercentComplete = 100.0;
    //return ReturnValue;    
}

delegate OnUnlockAchievementComplete(bool bWasSuccessful)
{
    //return;    
}

function AddUnlockAchievementCompleteDelegate(byte LocalUserNum, delegate<OnUnlockAchievementComplete> UnlockAchievementCompleteDelegate)
{
    //return;    
}

function ClearUnlockAchievementCompleteDelegate(byte LocalUserNum, delegate<OnUnlockAchievementComplete> UnlockAchievementCompleteDelegate)
{
    //return;    
}

function bool ReadAchievements(byte LocalUserNum, optional int TitleId, optional bool bShouldReadText, optional bool bShouldReadImages)
{
    TitleId = 0;
    bShouldReadText = true;
    bShouldReadImages = false;
    //return ReturnValue;    
}

delegate OnReadAchievementsComplete(int TitleId)
{
    //return;    
}

function AddReadAchievementsCompleteDelegate(byte LocalUserNum, delegate<OnReadAchievementsComplete> ReadAchievementsCompleteDelegate)
{
    //return;    
}

function ClearReadAchievementsCompleteDelegate(byte LocalUserNum, delegate<OnReadAchievementsComplete> ReadAchievementsCompleteDelegate)
{
    //return;    
}

function Engine.OnlineSubsystem.EOnlineEnumerationReadState GetAchievements(byte LocalUserNum, out array<AchievementDetails> Achievements, optional int TitleId)
{
    TitleId = 0;
    //return ReturnValue;    
}

function ClearAchievements(byte LocalUserNum, optional int TitleId)
{
    TitleId = 0;
    //return;    
}

delegate OnStatisticChanged(UniqueNetId PlayerNetId, name StatName, string NewStatValue)
{
    //return;    
}

function SubscribeToStatisticEvent(byte LocalUserNum, UniqueNetId PlayerNetId, name StatName, delegate<OnStatisticChanged> EventDelegate)
{
    //return;    
}

function UnsubscribeToStatisticEvent(byte LocalUserNum, UniqueNetId PlayerNetId, name StatName)
{
    //return;    
}

function CheckForGameInviteOnLaunch()
{
    //return;    
}

defaultproperties
{
    LoggedInPlayerName="Player1"
}