/*******************************************************************************
 * SpiralStairBuilder generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SpiralStairBuilder extends BrushBuilder
    hidecategories(Object,BrushBuilder);

var() int InnerRadius<ClampMin=1>;
var() int StepWidth<ClampMin=1>;
var() int StepHeight;
var() int StepThickness;
var() int NumStepsPer360<ClampMin=3>;
var() int NumSteps<ClampMin=1>;
var() name GroupName;
var() bool SlopedCeiling;
var() bool SlopedFloor;
var() bool CounterClockwise;

function BuildCurvedStair(int Direction)
{
    local Rotator RotStep;
    local Vector vtx, NewVtx, Template;
    local int X, Y, Idx, VertexStart;

    RotStep.Yaw = int(float(65536) * ((360.0 / float(NumStepsPer360)) / 360.0));
    // End:0x85
    if(CounterClockwise)
    {
        RotStep.Yaw *= float(-1);
        Direction *= float(-1);
    }
    Idx = 0;
    VertexStart = GetVertexCount();
    vtx.X = float(InnerRadius);
    X = 0;
    J0xD7:
    // End:0x45D [Loop If]
    if(X < 2)
    {
        NewVtx = vtx >> (RotStep * float(X));
        vtx.Z = 0.0;
        // End:0x17C
        if(SlopedCeiling && X == 1)
        {
            vtx.Z = float(StepHeight);
        }
        Vertex3f(NewVtx.X, NewVtx.Y, vtx.Z);
        Template[Idx].X = NewVtx.X;
        Template[Idx].Y = NewVtx.Y;
        Template[Idx].Z = vtx.Z;
        ++ Idx;
        vtx.Z = float(StepThickness);
        // End:0x31D
        if(SlopedFloor && X == 0)
        {
            vtx.Z -= float(StepHeight);
        }
        Vertex3f(NewVtx.X, NewVtx.Y, vtx.Z);
        Template[Idx].X = NewVtx.X;
        Template[Idx].Y = NewVtx.Y;
        Template[Idx].Z = vtx.Z;
        ++ Idx;
        ++ X;
        // [Loop Continue]
        goto J0xD7;
    }
    vtx.X = float(InnerRadius + StepWidth);
    X = 0;
    J0x49B:
    // End:0x821 [Loop If]
    if(X < 2)
    {
        NewVtx = vtx >> (RotStep * float(X));
        vtx.Z = 0.0;
        // End:0x540
        if(SlopedCeiling && X == 1)
        {
            vtx.Z = float(StepHeight);
        }
        Vertex3f(NewVtx.X, NewVtx.Y, vtx.Z);
        Template[Idx].X = NewVtx.X;
        Template[Idx].Y = NewVtx.Y;
        Template[Idx].Z = vtx.Z;
        ++ Idx;
        vtx.Z = float(StepThickness);
        // End:0x6E1
        if(SlopedFloor && X == 0)
        {
            vtx.Z -= float(StepHeight);
        }
        Vertex3f(NewVtx.X, NewVtx.Y, vtx.Z);
        Template[Idx].X = NewVtx.X;
        Template[Idx].Y = NewVtx.Y;
        Template[Idx].Z = vtx.Z;
        ++ Idx;
        ++ X;
        // [Loop Continue]
        goto J0x49B;
    }
    X = 0;
    J0x82C:
    // End:0xC4E [Loop If]
    if(X < NumSteps)
    {
        // End:0x8DA
        if(SlopedFloor)
        {
            Poly3i(Direction, VertexStart + 3, VertexStart + 1, VertexStart + 5, 'steptop');
            Poly3i(Direction, VertexStart + 3, VertexStart + 5, VertexStart + 7, 'steptop');
        }
        // End:0x92A
        else
        {
            Poly4i(Direction, VertexStart + 3, VertexStart + 1, VertexStart + 5, VertexStart + 7, 'steptop');
        }
        Poly4i(Direction, VertexStart + 0, VertexStart + 1, VertexStart + 3, VertexStart + 2, 'inner');
        Poly4i(Direction, VertexStart + 5, VertexStart + 4, VertexStart + 6, VertexStart + 7, 'Outer');
        Poly4i(Direction, VertexStart + 1, VertexStart + 0, VertexStart + 4, VertexStart + 5, 'stepfront');
        Poly4i(Direction, VertexStart + 2, VertexStart + 3, VertexStart + 7, VertexStart + 6, 'stepback');
        // End:0xB00
        if(SlopedCeiling)
        {
            Poly3i(Direction, VertexStart + 0, VertexStart + 2, VertexStart + 6, 'stepbottom');
            Poly3i(Direction, VertexStart + 0, VertexStart + 6, VertexStart + 4, 'stepbottom');
        }
        // End:0xB50
        else
        {
            Poly4i(Direction, VertexStart + 0, VertexStart + 2, VertexStart + 6, VertexStart + 4, 'stepbottom');
        }
        VertexStart = GetVertexCount();
        Y = 0;
        J0xB6F:
        // End:0xC40 [Loop If]
        if(Y < 8)
        {
            NewVtx = Template[Y] >> (RotStep * float(X + 1));
            Vertex3f(NewVtx.X, NewVtx.Y, NewVtx.Z + float(StepHeight * (X + 1)));
            ++ Y;
            // [Loop Continue]
            goto J0xB6F;
        }
        ++ X;
        // [Loop Continue]
        goto J0x82C;
    }
    //return;    
}

event bool Build()
{
    // End:0x4F
    if((((InnerRadius < 1) || StepWidth < 1) || NumSteps < 1) || NumStepsPer360 < 3)
    {
        return BadParameters();
    }
    BeginBrush(false, GroupName);
    BuildCurvedStair(1);
    return EndBrush();
    //return ReturnValue;    
}

defaultproperties
{
    InnerRadius=64
    StepWidth=256
    StepHeight=16
    StepThickness=32
    NumStepsPer360=8
    NumSteps=8
    GroupName=Spiral
    SlopedCeiling=true
    BitmapFilename="Btn_SpiralStairs"
    ToolTip="BrushBuilderName_SpiralStair"
}