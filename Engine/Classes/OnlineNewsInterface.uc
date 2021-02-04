/*******************************************************************************
 * OnlineNewsInterface generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
interface OnlineNewsInterface extends Interface
    abstract;

function bool ReadNews(byte LocalUserNum, OnlineSubsystem.EOnlineNewsType NewsType)
{
    //return ReturnValue;    
}

delegate OnReadNewsCompleted(bool bWasSuccessful, OnlineSubsystem.EOnlineNewsType NewsType)
{
    //return;    
}

function AddReadNewsCompletedDelegate(delegate<OnReadNewsCompleted> ReadNewsDelegate)
{
    //return;    
}

function ClearReadNewsCompletedDelegate(delegate<OnReadNewsCompleted> ReadNewsDelegate)
{
    //return;    
}

function string GetNews(byte LocalUserNum, OnlineSubsystem.EOnlineNewsType NewsType)
{
    //return ReturnValue;    
}
