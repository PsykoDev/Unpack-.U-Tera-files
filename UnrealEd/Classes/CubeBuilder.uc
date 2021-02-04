/*******************************************************************************
 * CubeBuilder generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class CubeBuilder extends BrushBuilder
    native
    hidecategories(Object,BrushBuilder);

var() float X<ClampMin=0.000001>;
var() float Y<ClampMin=0.000001>;
var() float Z<ClampMin=0.000001>;
var() float WallThickness;
var() name GroupName;
var() bool Hollow;
var() bool Tessellated;

function BuildCube(int Direction, float DX, float DY, float dz, bool _tessellated)
{
    local int N, I, J, K;

    N = GetVertexCount();
    I = -1;
    J0x23:
    // End:0xFF [Loop If]
    if(I < 2)
    {
        J = -1;
        J0x42:
        // End:0xEF [Loop If]
        if(J < 2)
        {
            K = -1;
            J0x61:
            // End:0xDF [Loop If]
            if(K < 2)
            {
                Vertex3f((float(I) * DX) / float(2), (float(J) * DY) / float(2), (float(K) * dz) / float(2));
                K += 2;
                // [Loop Continue]
                goto J0x61;
            }
            J += 2;
            // [Loop Continue]
            goto J0x42;
        }
        I += 2;
        // [Loop Continue]
        goto J0x23;
    }
    // End:0x3D6
    if(_tessellated)
    {
        Poly3i(Direction, N + 0, N + 1, N + 3);
        Poly3i(Direction, N + 0, N + 3, N + 2);
        Poly3i(Direction, N + 2, N + 3, N + 7);
        Poly3i(Direction, N + 2, N + 7, N + 6);
        Poly3i(Direction, N + 6, N + 7, N + 5);
        Poly3i(Direction, N + 6, N + 5, N + 4);
        Poly3i(Direction, N + 4, N + 5, N + 1);
        Poly3i(Direction, N + 4, N + 1, N + 0);
        Poly3i(Direction, N + 3, N + 1, N + 5);
        Poly3i(Direction, N + 3, N + 5, N + 7);
        Poly3i(Direction, N + 0, N + 2, N + 6);
        Poly3i(Direction, N + 0, N + 6, N + 4);
    }
    // End:0x586
    else
    {
        Poly4i(Direction, N + 0, N + 1, N + 3, N + 2);
        Poly4i(Direction, N + 2, N + 3, N + 7, N + 6);
        Poly4i(Direction, N + 6, N + 7, N + 5, N + 4);
        Poly4i(Direction, N + 4, N + 5, N + 1, N + 0);
        Poly4i(Direction, N + 3, N + 1, N + 5, N + 7);
        Poly4i(Direction, N + 0, N + 2, N + 6, N + 4);
    }
    //return;    
}

event bool Build()
{
    // End:0x43
    if(((Z <= float(0)) || Y <= float(0)) || X <= float(0))
    {
        return BadParameters();
    }
    // End:0xBC
    if(Hollow && (((Z / 2.0) <= WallThickness) || (Y / 2.0) <= WallThickness) || (X / 2.0) <= WallThickness)
    {
        return BadParameters();
    }
    // End:0x12A
    if(Hollow && Tessellated)
    {
        return BadParameters("The 'Tessellated' option can't be specified with the 'Hollow' option.");
    }
    BeginBrush(false, GroupName);
    BuildCube(1, X, Y, Z, Tessellated);
    // End:0x1E5
    if(Hollow)
    {
        BuildCube(-1, X - (WallThickness * 2.0), Y - (WallThickness * 2.0), Z - (WallThickness * 2.0), Tessellated);
    }
    return EndBrush();
    //return ReturnValue;    
}

defaultproperties
{
    X=256.0
    Y=256.0
    Z=256.0
    WallThickness=16.0
    GroupName=Cube
    BitmapFilename="Btn_Box"
    ToolTip="BrushBuilderName_Cube"
}