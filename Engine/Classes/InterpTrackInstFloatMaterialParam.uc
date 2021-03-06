/*******************************************************************************
 * InterpTrackInstFloatMaterialParam generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class InterpTrackInstFloatMaterialParam extends InterpTrackInst
    native(Interpolation);

struct native FloatMaterialParamMICData
{
    var const array<MaterialInstanceConstant> MICs;
    var const array<float> MICResetFloats;

    structdefaultproperties
    {
        MICs=none
        MICResetFloats=none
    }
};

var array<FloatMaterialParamMICData> MICInfos;
var InterpTrackFloatMaterialParam InstancedTrack;
