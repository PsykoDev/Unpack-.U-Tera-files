/*******************************************************************************
 * HeatmapVisualizer generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class HeatmapVisualizer extends GameStatsVisualizer
    native(GameStats)
    config(Editor);

struct native HeatMapPosEntry
{
    var float Time;
    var Vector Position;
    var float Strength;

    structdefaultproperties
    {
        Time=0.0
        Position=(X=0.0,Y=0.0,Z=0.0)
        Strength=0.0
    }
};

var Vector WorldMinPos;
var Vector WorldMaxPos;
var int TextureXSize;
var int TextureYSize;
var int CurrentMinDensity;
var int CurrentMaxDensity;
var int MinDensity;
var int MaxDensity;
var int HeatRadius;
var float NumUnrealUnitsPerPixel;
var MaterialInstanceConstant HeatmapMaterial;
var Texture2D OverlayTexture;
var array<HeatMapPosEntry> HeatmapPositions;
var array<float> PositionGrid;

defaultproperties
{
    TextureXSize=256
    TextureYSize=256
    CurrentMinDensity=-1
    CurrentMaxDensity=-1
    HeatRadius=5
    NumUnrealUnitsPerPixel=15.0
    FriendlyName="Heatmap Visualizer"
    OptionsDialogName="ID_HEATMAPOPTIONS"
    SupportedEvents(0)=102
    SupportedEvents(1)=104
    SupportedEvents(2)=105
    SupportedEvents(3)=108
}