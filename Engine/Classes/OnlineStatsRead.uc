/*******************************************************************************
 * OnlineStatsRead generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class OnlineStatsRead extends OnlineStats
    abstract
    native;

struct native OnlineStatsColumn
{
    var int ColumnNo;
    var SettingsData StatValue;

    structdefaultproperties
    {
        ColumnNo=0
        StatValue=(Type=ESettingsDataType.SDT_Empty,Value1=0)
    }
};

struct native OnlineStatsRow
{
    var const UniqueNetId PlayerID;
    var const SettingsData Rank;
    var const string NickName;
    var array<OnlineStatsColumn> Columns;

    structdefaultproperties
    {
        PlayerID=(Uid=none)
        Rank=(Type=ESettingsDataType.SDT_Empty,Value1=0)
        NickName=""
        Columns=none
    }
};

struct native ColumnMetaData
{
    var const int Id;
    var const name Name;
    var const localized string ColumnName;

    structdefaultproperties
    {
        Id=0
        Name=None
        ColumnName=""
    }
};

var int ViewId;
var const int SortColumnId;
var const array<int> ColumnIds;
var const int TotalRowsInView;
var array<OnlineStatsRow> Rows;
var const array<ColumnMetaData> ColumnMappings;
var const string ViewName;
var const int TitleId;

event OnReadComplete()
{
    //return;    
}

// Export UOnlineStatsRead::execGetIntStatValueForPlayer(FFrame&, void* const)
native function bool GetIntStatValueForPlayer(UniqueNetId PlayerID, int StatColumnNo, out int StatValue);

// Export UOnlineStatsRead::execSetIntStatValueForPlayer(FFrame&, void* const)
native function bool SetIntStatValueForPlayer(UniqueNetId PlayerID, int StatColumnNo, int StatValue);

// Export UOnlineStatsRead::execGetFloatStatValueForPlayer(FFrame&, void* const)
native function bool GetFloatStatValueForPlayer(UniqueNetId PlayerID, int StatColumnNo, out float StatValue);

// Export UOnlineStatsRead::execSetFloatStatValueForPlayer(FFrame&, void* const)
native function bool SetFloatStatValueForPlayer(UniqueNetId PlayerID, int StatColumnNo, float StatValue);

// Export UOnlineStatsRead::execGetStatValueForPlayerAsString(FFrame&, void* const)
native function bool GetStatValueForPlayerAsString(UniqueNetId PlayerID, int StatColumnNo, out string StatValue);

// Export UOnlineStatsRead::execIsStatZero(FFrame&, void* const)
native function bool IsStatZero(UniqueNetId PlayerID, int StatColumnNo);

// Export UOnlineStatsRead::execAddPlayer(FFrame&, void* const)
native function AddPlayer(string PlayerName, UniqueNetId PlayerID);

// Export UOnlineStatsRead::execGetRankForPlayer(FFrame&, void* const)
native function int GetRankForPlayer(UniqueNetId PlayerID);
