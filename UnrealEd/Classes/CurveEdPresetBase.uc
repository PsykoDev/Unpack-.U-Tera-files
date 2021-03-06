/*******************************************************************************
 * CurveEdPresetBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class CurveEdPresetBase extends Object
    abstract
    native;

function string GetDisplayName()
{
    local string Retval;

    Retval = "*** ERROR ***";
    return Retval;
    //return ReturnValue;    
}

function bool AreSettingsValid(bool bIsSaving)
{
    return true;
    //return ReturnValue;    
}

function bool GetRequiredKeyInTimes(out array<float> RequiredKeyInTimes)
{
    return false;
    //return ReturnValue;    
}

function bool GenerateCurve(out array<float> RequiredKeyInTimes, out array<PresetGeneratedPoint> GeneratedPoints)
{
    local bool bRetval;

    bRetval = true;
    return bRetval;
    //return ReturnValue;    
}

event FetchDisplayName(out string OutName)
{
    OutName = GetDisplayName();
    //return;    
}

event bool CheckAreSettingsValid(bool bIsSaving)
{
    return AreSettingsValid(bIsSaving);
    //return ReturnValue;    
}

event bool FetchRequiredKeyInTimes(out array<float> RequiredKeyInTimes)
{
    return GetRequiredKeyInTimes(RequiredKeyInTimes);
    //return ReturnValue;    
}

event bool GenerateCurveData(out array<float> RequiredKeyInTimes, out array<PresetGeneratedPoint> GeneratedPoints)
{
    return GenerateCurve(RequiredKeyInTimes, GeneratedPoints);
    //return ReturnValue;    
}
