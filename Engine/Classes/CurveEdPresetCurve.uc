/*******************************************************************************
 * CurveEdPresetCurve generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class CurveEdPresetCurve extends Object
    native
    editinlinenew
    hidecategories(Object);

struct native PresetGeneratedPoint
{
    var float KeyIn;
    var float KeyOut;
    var bool TangentsValid;
    var float TangentIn;
    var float TangentOut;
    var Core.Object.EInterpCurveMode IntepMode;

    structdefaultproperties
    {
        KeyIn=0.0
        KeyOut=0.0
        TangentsValid=false
        TangentIn=0.0
        TangentOut=0.0
        IntepMode=EInterpCurveMode.CIM_Linear
    }
};

/** Name of the curve */
var() const localized string CurveName;
var array<PresetGeneratedPoint> Points;
