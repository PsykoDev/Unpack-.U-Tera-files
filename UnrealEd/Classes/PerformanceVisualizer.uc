/*******************************************************************************
 * PerformanceVisualizer generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PerformanceVisualizer extends HeatmapVisualizer
    native(GameStats)
    config(Editor);

var array<float> GridPositionMaxValues;
var array<int> GridPositionHitCounts;
var array<float> GridPositionSums;

defaultproperties
{
    FriendlyName="Performance Visualizer"
    SupportedEvents(0)=40
    SupportedEvents(1)=41
    SupportedEvents(2)=42
    SupportedEvents(3)=43
}