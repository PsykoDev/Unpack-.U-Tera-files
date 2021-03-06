/*******************************************************************************
 * SheetBuilder generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SheetBuilder extends BrushBuilder
    hidecategories(Object,BrushBuilder);

enum ESheetAxis
{
    AX_Horizontal,
    AX_XAxis,
    AX_YAxis,
    AX_MAX
};

var() int X<ClampMin=1>;
var() int Y<ClampMin=1>;
var() int XSegments<ClampMin=1|ClampMax=100|UIMin=1|UIMax=20>;
var() int YSegments<ClampMin=1|ClampMax=100|UIMin=1|UIMax=20>;
var() SheetBuilder.ESheetAxis Axis;
var() name GroupName;

event bool Build()
{
    local int I, J, XStep, YStep, Count;

    // End:0x4E
    if((((Y <= 0) || X <= 0) || XSegments <= 0) || YSegments <= 0)
    {
        return BadParameters();
    }
    BeginBrush(false, GroupName);
    XStep = X / XSegments;
    YStep = Y / YSegments;
    Count = 0;
    I = 0;
    J0xB4:
    // End:0x5DF [Loop If]
    if(I < XSegments)
    {
        J = 0;
        J0xD6:
        // End:0x5D1 [Loop If]
        if(J < YSegments)
        {
            // End:0x274
            if(Axis == 0)
            {
                Vertex3f(float((I * XStep) - (X / 2)), float((J * YStep) - (Y / 2)), 0.0);
                Vertex3f(float((I * XStep) - (X / 2)), float(((J + 1) * YStep) - (Y / 2)), 0.0);
                Vertex3f(float(((I + 1) * XStep) - (X / 2)), float(((J + 1) * YStep) - (Y / 2)), 0.0);
                Vertex3f(float(((I + 1) * XStep) - (X / 2)), float((J * YStep) - (Y / 2)), 0.0);
            }
            // End:0x56B
            else
            {
                // End:0x3FB
                if(Axis == 1)
                {
                    Vertex3f(0.0, float((I * XStep) - (X / 2)), float((J * YStep) - (Y / 2)));
                    Vertex3f(0.0, float((I * XStep) - (X / 2)), float(((J + 1) * YStep) - (Y / 2)));
                    Vertex3f(0.0, float(((I + 1) * XStep) - (X / 2)), float(((J + 1) * YStep) - (Y / 2)));
                    Vertex3f(0.0, float(((I + 1) * XStep) - (X / 2)), float((J * YStep) - (Y / 2)));
                }
                // End:0x56B
                else
                {
                    Vertex3f(float((I * XStep) - (X / 2)), 0.0, float((J * YStep) - (Y / 2)));
                    Vertex3f(float((I * XStep) - (X / 2)), 0.0, float(((J + 1) * YStep) - (Y / 2)));
                    Vertex3f(float(((I + 1) * XStep) - (X / 2)), 0.0, float(((J + 1) * YStep) - (Y / 2)));
                    Vertex3f(float(((I + 1) * XStep) - (X / 2)), 0.0, float((J * YStep) - (Y / 2)));
                }
            }
            Poly4i(1, Count, Count + 1, Count + 2, Count + 3, 'Sheet', true);
            Count = GetVertexCount();
            ++ J;
            // [Loop Continue]
            goto J0xD6;
        }
        ++ I;
        // [Loop Continue]
        goto J0xB4;
    }
    return EndBrush();
    //return ReturnValue;    
}

defaultproperties
{
    X=256
    Y=256
    XSegments=1
    YSegments=1
    GroupName=Sheet
    BitmapFilename="Btn_Sheet"
    ToolTip="BrushBuilderName_Sheet"
}