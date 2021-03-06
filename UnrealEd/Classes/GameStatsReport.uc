/*******************************************************************************
 * GameStatsReport generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GameStatsReport extends Object
    abstract
    native(GameStats)
    config(Editor);

enum EReportType
{
    RT_SingleSession,
    RT_Game,
    RT_MAX
};

struct native MetaKeyValuePair
{
    var init string Tag;
    var init string Key;
    var init string Value;

    structdefaultproperties
    {
        Tag=""
        Key=""
        Value=""
    }
};

struct native Category
{
    var init string Tag;
    var init string Header;
    var int Id;
    var init array<init MetaKeyValuePair> KeyValuePairs;
    var init array<init Category> SubCategories;

    structdefaultproperties
    {
        Tag=""
        Header=""
        Id=0
        KeyValuePairs=none
        SubCategories=none
    }
};

struct native HeatmapQuery
{
    var string HeatmapName;
    var array<int> EventIDs;
    var string ImageFilename;

    structdefaultproperties
    {
        HeatmapName=""
        EventIDs=none
        ImageFilename=""
    }
};

var GameSessionInformation SessionInfo;
var transient GameStateObject GameState;
var transient GameplayEventsReader StatsFileReader;
var transient GameStatsAggregator Aggregator;
var array<int> HighlightEvents;
var array<int> GameStatsColumns;
var array<int> TeamStatsColumns;
var array<int> PlayerStatsColumns;
var array<int> WeaponStatsColumns;
var array<int> DamageStatsColumns;
var array<int> ProjectileStatsColumns;
var array<int> PawnStatsColumns;
var config string ReportBaseURL;

defaultproperties
{
    HighlightEvents(0)=10002
    HighlightEvents(1)=10003
    HighlightEvents(2)=10400
    HighlightEvents(3)=10004
    TeamStatsColumns(0)=10102
    TeamStatsColumns(1)=10103
    TeamStatsColumns(2)=10104
    TeamStatsColumns(3)=10100
    TeamStatsColumns(4)=10101
    PlayerStatsColumns(0)=10004
    PlayerStatsColumns(1)=10005
    PlayerStatsColumns(2)=10002
    PlayerStatsColumns(3)=10003
    PlayerStatsColumns(4)=10001
    WeaponStatsColumns(0)=10300
    DamageStatsColumns(0)=10200
    DamageStatsColumns(1)=10201
    DamageStatsColumns(2)=10202
    DamageStatsColumns(3)=10204
    DamageStatsColumns(4)=10203
    DamageStatsColumns(5)=10205
    PawnStatsColumns(0)=10400
}