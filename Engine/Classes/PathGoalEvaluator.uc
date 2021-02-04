/*******************************************************************************
 * PathGoalEvaluator generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PathGoalEvaluator extends Object
    native(AI);

var protected PathGoalEvaluator NextEvaluator;
var protected NavigationPoint GeneratedGoal;
var protected int MaxPathVisits;
var const int CacheIdx;

event Recycle()
{
    GeneratedGoal = none;
    NextEvaluator = none;
    //return;    
}

event string GetDumpString()
{
    return string(self);
    //return ReturnValue;    
}

defaultproperties
{
    MaxPathVisits=2048
    CacheIdx=-1
}