/*******************************************************************************
 * TwitterIntegrationBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class TwitterIntegrationBase extends PlatformInterfaceBase
    transient
    native(PlatformInterface);

enum ETwitterRequestMethod
{
    TRM_Get,
    TRM_Post,
    TRM_Delete,
    TRM_MAX
};

enum ETwitterIntegrationDelegate
{
    TID_AuthorizeComplete,
    TID_TweetUIComplete,
    TID_RequestComplete,
    TID_MAX
};

// Export UTwitterIntegrationBase::execInit(FFrame&, void* const)
native event Init();

// Export UTwitterIntegrationBase::execCanShowTweetUI(FFrame&, void* const)
native event bool CanShowTweetUI();

// Export UTwitterIntegrationBase::execShowTweetUI(FFrame&, void* const)
native event bool ShowTweetUI(optional string InitialMessage, optional string URL, optional string Picture);

// Export UTwitterIntegrationBase::execAuthorizeAccounts(FFrame&, void* const)
native event bool AuthorizeAccounts();

// Export UTwitterIntegrationBase::execGetNumAccounts(FFrame&, void* const)
native event int GetNumAccounts();

// Export UTwitterIntegrationBase::execGetAccountName(FFrame&, void* const)
native event string GetAccountName(int AccountIndex);

// Export UTwitterIntegrationBase::execGetAccountId(FFrame&, void* const)
native event string GetAccountId(int AccountIndex);

// Export UTwitterIntegrationBase::execTwitterRequest(FFrame&, void* const)
native event bool TwitterRequest(string URL, array<string> ParamKeysAndValues, TwitterIntegrationBase.ETwitterRequestMethod RequestMethod, int AccountIndex);
