/*******************************************************************************
 * OnlineGameSearch generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class OnlineGameSearch extends Settings
    native;

enum EOnlineGameSearchEntryType
{
    OGSET_Property,
    OGSET_LocalizedSetting,
    OGSET_ObjectProperty,
    OGSET_MAX
};

enum EOnlineGameSearchComparisonType
{
    OGSCT_Equals,
    OGSCT_NotEquals,
    OGSCT_GreaterThan,
    OGSCT_GreaterThanEquals,
    OGSCT_LessThan,
    OGSCT_LessThanEquals,
    OGSCT_MAX
};

enum EOnlineGameSearchSortType
{
    OGSSO_Ascending,
    OGSSO_Descending,
    OGSSO_MAX
};

struct native OnlineGameSearchResult
{
    var const OnlineGameSettings GameSettings;
    var native const Pointer PlatformData;

    structdefaultproperties
    {
        GameSettings=none
    }
};

struct native OverrideSkill
{
    var int LeaderboardId;
    var array<UniqueNetId> Players;
    var array<Double> Mus;
    var array<Double> Sigmas;

    structdefaultproperties
    {
        LeaderboardId=0
        Players=none
        Mus=none
        Sigmas=none
    }
};

struct native NamedObjectProperty
{
    var name ObjectPropertyName;
    var string ObjectPropertyValue;

    structdefaultproperties
    {
        ObjectPropertyName=None
        ObjectPropertyValue=""
    }
};

struct native OnlineGameSearchParameter
{
    var int EntryId;
    var name ObjectPropertyName;
    var OnlineGameSearch.EOnlineGameSearchEntryType EntryType;
    var OnlineGameSearch.EOnlineGameSearchComparisonType ComparisonType;

    structdefaultproperties
    {
        EntryId=0
        ObjectPropertyName=None
        EntryType=EOnlineGameSearchEntryType.OGSET_Property
        ComparisonType=EOnlineGameSearchComparisonType.OGSCT_Equals
    }
};

struct native OnlineGameSearchSortClause
{
    var int EntryId;
    var name ObjectPropertyName;
    var OnlineGameSearch.EOnlineGameSearchEntryType EntryType;
    var OnlineGameSearch.EOnlineGameSearchSortType SortType;

    structdefaultproperties
    {
        EntryId=0
        ObjectPropertyName=None
        EntryType=EOnlineGameSearchEntryType.OGSET_Property
        SortType=EOnlineGameSearchSortType.OGSSO_Ascending
    }
};

struct native OnlineGameSearchORClause
{
    var array<OnlineGameSearchParameter> OrParams;

    structdefaultproperties
    {
        OrParams=none
    }
};

struct native OnlineGameSearchQuery
{
    var array<OnlineGameSearchORClause> OrClauses;
    var array<OnlineGameSearchSortClause> SortClauses;

    structdefaultproperties
    {
        OrClauses=none
        SortClauses=none
    }
};

var int MaxSearchResults;
var LocalizedStringSetting Query;
var databinding bool bIsLanQuery;
var databinding bool bUsesArbitration;
var const bool bIsSearchInProgress;
var class<OnlineGameSettings> GameSettingsClass;
var const array<OnlineGameSearchResult> Results;
var OverrideSkill ManualSkillOverride;
var array<NamedObjectProperty> NamedProperties;
var OnlineGameSearchQuery FilterQuery;
var string AdditionalSearchCriteria;
var int PingBucketSize;
var int NumPingProbes;
var int MaxPingBytes;

function SetSkillOverride(int LeaderboardId, const out array<UniqueNetId> Players)
{
    ManualSkillOverride.LeaderboardId = LeaderboardId;
    ManualSkillOverride.Players = Players;
    ManualSkillOverride.Mus.Length = 0;
    ManualSkillOverride.Sigmas.Length = 0;
    //return;    
}

// Export UOnlineGameSearch::execSortSearchResults(FFrame&, void* const)
native event SortSearchResults();

// Export UOnlineGameSearch::execSetNamedProperty(FFrame&, void* const)
native event bool SetNamedProperty(name PropertyName, string Value);

// Export UOnlineGameSearch::execGetNamedProperty(FFrame&, void* const)
native event bool GetNamedProperty(name PropertyName, out string Value);

defaultproperties
{
    MaxSearchResults=25
    GameSettingsClass=class'OnlineGameSettings'
    PingBucketSize=50
}