/*******************************************************************************
 * BasicStatsVisualizer generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class BasicStatsVisualizer extends GameStatsVisualizer
    native(GameStats)
    config(Editor);

struct native StatDrawingProperties
{
    var int EventID;
    var Color StatColor;
    var float Size;
    var string SpriteName;
    var Texture2D StatSprite;

    structdefaultproperties
    {
        EventID=0
        StatColor=(R=0,G=0,B=0,A=0)
        Size=0.0
        SpriteName=""
        StatSprite=none
    }
};

struct native BasicStatEntry
{
    var int EventID;
    var string EventName;
    var float EventTime;
    var Vector Location;
    var Rotator Rotation;

    structdefaultproperties
    {
        EventID=0
        EventName=""
        EventTime=0.0
        Location=(X=0.0,Y=0.0,Z=0.0)
        Rotation=(Pitch=0,Yaw=0,Roll=0)
    }
};

struct native PlayerEntry extends BasicStatEntry
{
    var int PlayerIndex;
    var string PlayerName;
    var string WeaponName;
};

struct native PlayerPlayerEntry extends BasicStatEntry
{
    var int Player1Index;
    var string Player1Name;
    var int Player2Index;
    var string Player2Name;
    var Vector Player2Location;
    var Rotator Rotation2;
};

struct native PlayerTargetEntry extends BasicStatEntry
{
    var string KillType;
    var string DamageType;
    var int PlayerIndex;
    var string PlayerName;
    var int TargetIndex;
    var string TargetName;
    var Vector TargetLocation;
    var Rotator TargetRotation;
};

var const config array<config StatDrawingProperties> DrawingProperties;
var array<BasicStatEntry> BasicEntries;
var array<PlayerEntry> PlayerEntries;
var array<PlayerPlayerEntry> PlayerPlayerEntries;
var array<PlayerTargetEntry> PlayerTargetEntries;

defaultproperties
{
    DrawingProperties(0)=(EventID=0,StatColor=(R=0,G=0,B=0,A=0),Size=8.0,SpriteName="EditorResources.BSPVertex",StatSprite=none)
    FriendlyName="Basic Stats Visualizer"
    SupportedEvents(0)=102
    SupportedEvents(1)=104
    SupportedEvents(2)=105
    SupportedEvents(3)=108
    SupportedEvents(4)=150
    SupportedEvents(5)=151
    SupportedEvents(6)=152
}