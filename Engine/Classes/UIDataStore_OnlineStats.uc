/*******************************************************************************
 * UIDataStore_OnlineStats generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UIDataStore_OnlineStats extends UIDataStore_Remote
    abstract
    transient
    native(UIPrivate)
    config(Engine)
    hidecategories(Object,UIRoot);

enum EStatsFetchType
{
    SFT_Player,
    SFT_CenteredOnPlayer,
    SFT_Friends,
    SFT_TopRankings,
    SFT_MAX
};

struct native PlayerNickMetaData
{
    var const name PlayerNickName;
    var const localized string PlayerNickColumnName;

    structdefaultproperties
    {
        PlayerNickName=None
        PlayerNickColumnName=""
    }
};

struct native RankMetaData
{
    var const name RankName;
    var const localized string RankColumnName;

    structdefaultproperties
    {
        RankName=None
        RankColumnName=""
    }
};

var array< class<OnlineStatsRead> > StatsReadClasses;
var const name StatsReadName;
var const PlayerNickMetaData PlayerNickData;
var const RankMetaData RankNameMetaData;
var const name TotalRowsName;
var array<OnlineStatsRead> StatsReadObjects;
var OnlineStatsRead StatsRead;
var UIDataStore_OnlineStats.EStatsFetchType CurrentReadType;
var OnlineStatsInterface StatsInterface;
var OnlinePlayerInterface PlayerInterface;

event Init()
{
    local OnlineSubsystem OnlineSub;

    OnlineSub = class'GameEngine'.static.GetOnlineSubsystem();
    // End:0xB9
    if(OnlineSub != none)
    {
        StatsInterface = OnlineSub.StatsInterface;
        PlayerInterface = OnlineSub.PlayerInterface;
        StatsInterface.AddReadOnlineStatsCompleteDelegate(OnReadComplete);
    }
    //return;    
}

function SetStatsReadInfo()
{
    StatsRead = StatsReadObjects[0];
    CurrentReadType = 0;
    //return;    
}

event bool RefreshStats(byte ControllerIndex)
{
    SetStatsReadInfo();
    StatsInterface.FreeStats(StatsRead);
    OnReadComplete(true);
    switch(CurrentReadType)
    {
        // End:0xAD
        case 0:
            // End:0xAB
            if(StatsInterface.ReadOnlineStatsForPlayer(ControllerIndex, StatsRead) == false)
            {
                WarnInternal("Querying Player failed.");
                return false;
            }
            return true;
        // End:0x115
        case 1:
            // End:0x113
            if(StatsInterface.ReadOnlineStatsByRankAroundPlayer(ControllerIndex, StatsRead, 10) == false)
            {
                WarnInternal("Querying CenteredOnPlayer failed.");
                return false;
            }
            return true;
        // End:0x174
        case 2:
            // End:0x172
            if(StatsInterface.ReadOnlineStatsForFriends(ControllerIndex, StatsRead) == false)
            {
                WarnInternal("Querying Friends failed.");
                return false;
            }
            return true;
        // End:0x1D9
        case 3:
            // End:0x1D7
            if(StatsInterface.ReadOnlineStatsByRank(ControllerIndex, StatsRead) == false)
            {
                LogInternal("Querying Top Rankings failed.");
                return false;
            }
            return true;
        // End:0xFFFF
        default:
            //return ReturnValue;
    }
}
}

event bool ShowGamercard(byte ConrollerIndex, int ListIndex)
{
    local OnlineSubsystem OnlineSub;
    local OnlinePlayerInterfaceEx PlayerExt;
    local UniqueNetId PlayerID;

    // End:0x1CB
    if((ListIndex >= 0) && ListIndex < StatsRead.Rows.Length)
    {
        OnlineSub = class'GameEngine'.static.GetOnlineSubsystem();
        // End:0x194
        if(OnlineSub != none)
        {
            PlayerExt = OnlineSub.PlayerInterfaceEx;
            // End:0x139
            if(NotEqual_InterfaceInterface(PlayerExt, (none)))
            {
                PlayerID = StatsRead.Rows[ListIndex].PlayerID;
                return PlayerExt.ShowGamerCardUI(ConrollerIndex, PlayerID);
            }
            // End:0x191
            else
            {
                WarnInternal("OnlineSubsystem does not support the extended player interface. Can't show gamercard");
            }
        }
        // End:0x1C8
        else
        {
            WarnInternal("No OnlineSubsystem present. Can't show gamercard");
        }
    }
    // End:0x223
    else
    {
        WarnInternal(("Invalid index (" $ string(ListIndex)) $ ") specified for online game to show the gamercard of");
    }
    //return ReturnValue;    
}

function OnReadComplete(bool bWasSuccessful)
{
    // End:0x20
    if(bWasSuccessful)
    {
        SortResultsByRank(StatsRead);
    }
    RefreshSubscribers();
    //return;    
}

// Export UUIDataStore_OnlineStats::execSortResultsByRank(FFrame&, void* const)
native static function SortResultsByRank(OnlineStatsRead StatsToSort);

defaultproperties
{
    StatsReadName=StatsReadResults
    PlayerNickData=(PlayerNickName=Player Nick,PlayerNickColumnName="Player Nick")
    RankNameMetaData=(RankName=Rank,RankColumnName="Rank")
    TotalRowsName=TotalRows
    Tag=OnlineStats
}