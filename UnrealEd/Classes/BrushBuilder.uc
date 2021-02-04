/*******************************************************************************
 * BrushBuilder generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class BrushBuilder extends Object
    abstract
    native
    hidecategories(Object,BrushBuilder);

struct BuilderPoly
{
    var array<int> VertexIndices;
    var int Direction;
    var name Item;
    var int PolyFlags;

    structdefaultproperties
    {
        VertexIndices=none
        Direction=0
        Item=None
        PolyFlags=0
    }
};

var() string BitmapFilename;
/** Localized string that will be displayed as the name of this brush builder in the editor */
var() string ToolTip;
var private array<Vector> Vertices;
var private array<BuilderPoly> Polys;
var private deprecated name Group;
var private name Layer;
var private bool MergeCoplanars;

// Export UBrushBuilder::execBeginBrush(FFrame&, void* const)
native function BeginBrush(bool InMergeCoplanars, name InLayer);

// Export UBrushBuilder::execEndBrush(FFrame&, void* const)
native function bool EndBrush();

// Export UBrushBuilder::execGetVertexCount(FFrame&, void* const)
native function int GetVertexCount();

// Export UBrushBuilder::execGetVertex(FFrame&, void* const)
native function Vector GetVertex(int I);

// Export UBrushBuilder::execGetPolyCount(FFrame&, void* const)
native function int GetPolyCount();

// Export UBrushBuilder::execBadParameters(FFrame&, void* const)
native function bool BadParameters(optional string msg);

// Export UBrushBuilder::execVertexv(FFrame&, void* const)
native function int Vertexv(Vector V);

// Export UBrushBuilder::execVertex3f(FFrame&, void* const)
native function int Vertex3f(float X, float Y, float Z);

// Export UBrushBuilder::execPoly3i(FFrame&, void* const)
native function Poly3i(int Direction, int I, int J, int K, optional name ItemName, optional bool bIsTwoSidedNonSolid);

// Export UBrushBuilder::execPoly4i(FFrame&, void* const)
native function Poly4i(int Direction, int I, int J, int K, int L, optional name ItemName, optional bool bIsTwoSidedNonSolid);

// Export UBrushBuilder::execPolyBegin(FFrame&, void* const)
native function PolyBegin(int Direction, optional name ItemName);

// Export UBrushBuilder::execPolyi(FFrame&, void* const)
native function Polyi(int I);

// Export UBrushBuilder::execPolyEnd(FFrame&, void* const)
native function PolyEnd();

event bool Build()
{
    //return ReturnValue;    
}

defaultproperties
{
    BitmapFilename="BBGeneric"
    ToolTip="BrushBuilderName_Generic"
}