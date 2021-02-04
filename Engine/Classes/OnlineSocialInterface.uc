/*******************************************************************************
 * OnlineSocialInterface generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
interface OnlineSocialInterface extends Interface
    abstract;

function bool QuerySocialPostPrivileges()
{
    //return ReturnValue;    
}

delegate OnQuerySocialPostPrivilegesCompleted(bool bWasSuccessful, SocialPostPrivileges PostPrivileges)
{
    //return;    
}

function AddQuerySocialPostPrivilegesCompleted(delegate<OnQuerySocialPostPrivilegesCompleted> PostPrivilegesDelegate)
{
    //return;    
}

function ClearQuerySocialPostPrivilegesCompleted(delegate<OnQuerySocialPostPrivilegesCompleted> PostPrivilegesDelegate)
{
    //return;    
}

function bool PostImage(byte LocalUserNum, const out SocialPostImageInfo PostImageInfo, const array<byte> FullImage)
{
    //return ReturnValue;    
}

delegate OnPostImageCompleted(byte LocalUserNum, bool bWasSuccessful)
{
    //return;    
}

function AddPostImageCompleted(byte LocalUserNum, delegate<OnPostImageCompleted> PostImageDelegate)
{
    //return;    
}

function ClearPostImageCompleted(byte LocalUserNum, delegate<OnPostImageCompleted> PostImageDelegate)
{
    //return;    
}

function bool PostLink(byte LocalUserNum, const out SocialPostLinkInfo PostLinkInfo)
{
    //return ReturnValue;    
}

delegate OnPostLinkCompleted(byte LocalUserNum, bool bWasSuccessful)
{
    //return;    
}

function AddPostLinkCompleted(byte LocalUserNum, delegate<OnPostLinkCompleted> PostLinkDelegate)
{
    //return;    
}

function ClearPostLinkCompleted(byte LocalUserNum, delegate<OnPostLinkCompleted> PostLinkDelegate)
{
    //return;    
}