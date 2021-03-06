/*******************************************************************************
 * Canvas generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Canvas extends Object
    transient
    native;

enum EDisplayPlane
{
    DISPLAYPLANE_RENDER,
    DISPLAYPLANE_HUD,
    DISPLAYPLANE_INTERMEDIATE_HUD,
    DISPLAYPLANE_MAX
};

enum ECanvasBlendMode
{
    BLEND_CANVAS_Opaque,
    BLEND_CANVAS_Masked,
    BLEND_CANVAS_Translucent,
    BLEND_CANVAS_Additive,
    BLEND_CANVAS_Modulate,
    BLEND_CANVAS_ModulateAndAdd,
    BLEND_CANVAS_SoftMasked,
    BLEND_CANVAS_AlphaComposite,
    BLEND_CANVAS_DitheredTranslucent,
    BLEND_CANVAS_AlphaOnly,
    BLEND_CANVAS_MAX
};

struct native CanvasIcon
{
    /** Source texture */
    var() Texture Texture;
    /** UV coords */
    var() float U;
    /** UV coords */
    var() float V;
    /** UV coords */
    var() float UL;
    /** UV coords */
    var() float VL;

    structdefaultproperties
    {
        Texture=none
        U=0.0
        V=0.0
        UL=0.0
        VL=0.0
    }
};

struct native DepthFieldGlowInfo
{
    var bool bEnableGlow;
    var LinearColor GlowColor;
    var Vector2D GlowOuterRadius;
    var Vector2D GlowInnerRadius;

    structdefaultproperties
    {
        bEnableGlow=false
        GlowColor=(R=0.0,G=0.0,B=0.0,A=1.0)
        GlowOuterRadius=(X=0.0,Y=0.0)
        GlowInnerRadius=(X=0.0,Y=0.0)
    }
};

struct native MobileDistanceFieldParams
{
    var float Gamma;
    var float AlphaRefVal;
    var float SmoothWidth;
    var bool EnableShadow;
    var Vector2D ShadowDirection;
    var LinearColor ShadowColor;
    var float ShadowSmoothWidth;
    var native DepthFieldGlowInfo GlowInfo;
    var int BlendMode;

    structdefaultproperties
    {
        Gamma=0.0
        AlphaRefVal=0.0
        SmoothWidth=0.0
        EnableShadow=false
        ShadowDirection=(X=0.0,Y=0.0)
        ShadowColor=(R=0.0,G=0.0,B=0.0,A=1.0)
        ShadowSmoothWidth=0.0
        BlendMode=0
    }
};

struct native FontRenderInfo
{
    var bool bClipText;
    var bool bEnableShadow;
    var DepthFieldGlowInfo GlowInfo;

    structdefaultproperties
    {
        bClipText=false
        bEnableShadow=false
        GlowInfo=(bEnableGlow=false,GlowColor=(R=0.0,G=0.0,B=0.0,A=1.0),GlowOuterRadius=(X=0.0,Y=0.0),GlowInnerRadius=(X=0.0,Y=0.0))
    }
};

struct native CanvasUVTri
{
    /** Position of first vertex */
    var() Vector2D V0_Pos;
    /** UV of first vertex */
    var() Vector2D V0_UV;
    /** Position of second vertex */
    var() Vector2D V1_Pos;
    /** UV of second vertex */
    var() Vector2D V1_UV;
    /** Position of third vertex */
    var() Vector2D V2_Pos;
    /** UV of third vertex */
    var() Vector2D V2_UV;

    structdefaultproperties
    {
        V0_Pos=(X=0.0,Y=0.0)
        V0_UV=(X=0.0,Y=0.0)
        V1_Pos=(X=0.0,Y=0.0)
        V1_UV=(X=0.0,Y=0.0)
        V2_Pos=(X=0.0,Y=0.0)
        V2_UV=(X=0.0,Y=0.0)
    }
};

struct native transient TextSizingParameters
{
    var init float DrawX;
    var init float DrawY;
    var init float DrawXL;
    var init float DrawYL;
    var init Vector2D Scaling;
    var init Font DrawFont;
    var init Vector2D SpacingAdjust;
    var init float ViewportHeight;

    structdefaultproperties
    {
        DrawX=0.0
        DrawY=0.0
        DrawXL=0.0
        DrawYL=0.0
        Scaling=(X=0.0,Y=0.0)
        DrawFont=none
        SpacingAdjust=(X=0.0,Y=0.0)
        ViewportHeight=0.0
    }
};

struct native transient WrappedStringElement
{
    var init string Value;
    var init Vector2D LineExtent;

    structdefaultproperties
    {
        Value=""
        LineExtent=(X=0.0,Y=0.0)
    }
};

var Font Font;
var float OrgX;
var float OrgY;
var float ClipX;
var float ClipY;
var const float CurX;
var const float CurY;
var const float CurZ;
var float CurYL;
var Color DrawColor;
var bool bCenter;
var bool bNoSmooth;
var const int SizeX;
var const int SizeY;
var int DepthSortKey;
var native const Pointer Canvas;
var native const Pointer SceneView;
var Plane ColorModulate;
var Texture2D DefaultTexture;

// Export UCanvas::execEnableFullBatchOptimization(FFrame&, void* const)
native final function EnableFullBatchOptimization();

// Export UCanvas::execDisableFullBatchOptimization(FFrame&, void* const)
native final function DisableFullBatchOptimization();

// Export UCanvas::execPushDepthSortKey(FFrame&, void* const)
native final function PushDepthSortKey(int Key);

// Export UCanvas::execPopDepthSortKey(FFrame&, void* const)
native final function PopDepthSortKey();

// Export UCanvas::execTopDepthSortKey(FFrame&, void* const)
native final function int TopDepthSortKey();

// Export UCanvas::execDrawTile(FFrame&, void* const)
native final function DrawTile(Texture Tex, float XL, float YL, float U, float V, float UL, float VL, optional LinearColor LColor, optional bool ClipTile, optional EngineTypes.EBlendMode Blend, optional Canvas.EDisplayPlane DisplayPlane);

// Export UCanvas::execPreOptimizeDrawTiles(FFrame&, void* const)
native final function PreOptimizeDrawTiles(int Num, Texture Tex, optional EngineTypes.EBlendMode Blend);

// Export UCanvas::execDrawMaterialTile(FFrame&, void* const)
native final function DrawMaterialTile(MaterialInterface Mat, float XL, float YL, optional float U, optional float V, optional float UL, optional float VL, optional bool bClipTile);

// Export UCanvas::execDrawRotatedTile(FFrame&, void* const)
native final function DrawRotatedTile(Texture Tex, Rotator Rotation, float XL, float YL, float U, float V, float UL, float VL, optional float AnchorX, optional float AnchorY, optional Canvas.EDisplayPlane DisplayPlane)
{
    AnchorX = 0.50;
    AnchorY = 0.50;
    DisplayPlane = 0;                                                    
}

// Export UCanvas::execDrawRotatedMaterialTile(FFrame&, void* const)
native final function DrawRotatedMaterialTile(MaterialInterface Mat, Rotator Rotation, float XL, float YL, optional float U, optional float V, optional float UL, optional float VL, optional float AnchorX, optional float AnchorY, optional Canvas.EDisplayPlane DisplayPlane)
{
    U = 0.0;
    V = 0.0;
    UL = 0.0;
    VL = 0.0;
    AnchorX = 0.50;
    AnchorY = 0.50;
    DisplayPlane = 0;                                                    
}

// Export UCanvas::execDrawTimer(FFrame&, void* const)
native final function DrawTimer(Texture Tex, float StartTime, float TotalTime, float XL, float YL, float U, float V, float UL, float VL, optional LinearColor LColor, optional EngineTypes.EBlendMode Blend);

// Export UCanvas::execDrawTileStretched(FFrame&, void* const)
native final function DrawTileStretched(Texture Tex, float XL, float YL, float U, float V, float UL, float VL, optional LinearColor LColor, optional bool bStretchHorizontally, optional bool bStretchVertically, optional float ScalingFactor, optional Canvas.EDisplayPlane DisplayPlane);

// Export UCanvas::execDrawTris(FFrame&, void* const)
native final function DrawTris(Texture Tex, array<CanvasUVTri> Triangles, Color InColor);

static final function FontRenderInfo CreateFontRenderInfo(optional bool bClipText, optional bool bEnableShadow, optional LinearColor GlowColor, optional Vector2D GlowOuterRadius, optional Vector2D GlowInnerRadius)
{
    local FontRenderInfo Result;

    Result.bClipText = bClipText;
    Result.bEnableShadow = bEnableShadow;
    Result.GlowInfo.bEnableGlow = GlowColor.A != 0.0;
    // End:0x14E
    if(Result.GlowInfo.bEnableGlow)
    {
        Result.GlowInfo.GlowOuterRadius = GlowOuterRadius;
        Result.GlowInfo.GlowInnerRadius = GlowInnerRadius;
    }
    return Result;
    //return ReturnValue;    
}

// Export UCanvas::execStrLen(FFrame&, void* const)
native final function StrLen(coerce string String, out float XL, out float YL);

// Export UCanvas::execTextSize(FFrame&, void* const)
native final function TextSize(coerce string String, out float XL, out float YL, optional float XScale, optional float YScale)
{
    XScale = 1.0;
    YScale = 1.0;                            
}

// Export UCanvas::execDrawText(FFrame&, void* const)
native final function DrawText(coerce string Text, optional bool CR, optional float XScale, optional float YScale, const optional out FontRenderInfo RenderInfo, optional Canvas.EDisplayPlane DisplayPlane)
{
    CR = true;
    XScale = 1.0;
    YScale = 1.0;    
    DisplayPlane = 0;                                
}

// Export UCanvas::execProject(FFrame&, void* const)
native final function Vector Project(Vector Location);

// Export UCanvas::execDeProject(FFrame&, void* const)
native final function DeProject(Vector2D ScreenPos, out Vector WorldOrigin, out Vector WorldDirection);

// Export UCanvas::execPushTranslationMatrix(FFrame&, void* const)
native final function PushTranslationMatrix(Vector TranslationVector);

// Export UCanvas::execPopTransform(FFrame&, void* const)
native final function PopTransform();

// Export UCanvas::execFlush(FFrame&, void* const)
native final function Flush();

// Export UCanvas::execReset(FFrame&, void* const)
native function Reset(optional bool bKeepOrigin);

event Font GetDefaultCanvasFont()
{
    return class'Engine'.static.GetSmallFont();
    //return ReturnValue;    
}

// Export UCanvas::execSetPos(FFrame&, void* const)
native final function SetPos(float PosX, float PosY, optional float PosZ)
{
    PosZ = 0.0;                    
}

// Export UCanvas::execSetOrigin(FFrame&, void* const)
native final function SetOrigin(float X, float Y);

// Export UCanvas::execSetClip(FFrame&, void* const)
native final function SetClip(float X, float Y);

// Export UCanvas::execPushMaskRegion(FFrame&, void* const)
native final function PushMaskRegion(float X, float Y, float XL, float YL);

// Export UCanvas::execPopMaskRegion(FFrame&, void* const)
native final function PopMaskRegion();

final function DrawTexture(Texture Tex, float Scale, optional Canvas.EDisplayPlane DisplayPlane)
{
    local LinearColor TempColor;

    DisplayPlane = 0;
    // End:0x1E1
    if(Tex != none)
    {
        TempColor.R = float(DrawColor.R) / 255.0;
        TempColor.G = float(DrawColor.G) / 255.0;
        TempColor.B = float(DrawColor.B) / 255.0;
        TempColor.A = float(DrawColor.A) / 255.0;
        DrawTile(Tex, Tex.GetSurfaceWidth() * Scale, Tex.GetSurfaceHeight() * Scale, 0.0, 0.0, Tex.GetSurfaceWidth(), Tex.GetSurfaceHeight(), TempColor, false, 2, DisplayPlane);
    }
    //return;    
}

// Export UCanvas::execDrawBlendedTile(FFrame&, void* const)
native final function DrawBlendedTile(Texture Tex, float XL, float YL, float U, float V, float UL, float VL, Canvas.ECanvasBlendMode Blend, optional Canvas.EDisplayPlane DisplayPlane)
{
    DisplayPlane = 0;                                            
}

final function CanvasIcon MakeIcon(Texture Texture, optional float U, optional float V, optional float UL, optional float VL)
{
    local CanvasIcon Icon;

    // End:0x139
    if(Texture != none)
    {
        Icon.Texture = Texture;
        Icon.U = U;
        Icon.V = V;
        Icon.UL = ((UL != 0.0) ? UL : Texture.GetSurfaceWidth());
        Icon.VL = ((VL != 0.0) ? VL : Texture.GetSurfaceHeight());
    }
    return Icon;
    //return ReturnValue;    
}

final function DrawScaledIcon(CanvasIcon Icon, float X, float Y, Vector Scale, optional Canvas.EDisplayPlane DisplayPlane)
{
    local LinearColor TempColor;

    DisplayPlane = 0;
    // End:0x3B3
    if(Icon.Texture != none)
    {
        // End:0x81
        if(VSize(Scale) <= 0.0)
        {
            Scale.X = 1.0;
            Scale.Y = 1.0;
        }
        // End:0xF6
        if(Icon.UL == 0.0)
        {
            Icon.UL = Icon.Texture.GetSurfaceWidth();
        }
        // End:0x16B
        if(Icon.VL == 0.0)
        {
            Icon.VL = Icon.Texture.GetSurfaceHeight();
        }
        SetPos(CurX, CurY);
        TempColor.R = float(DrawColor.R) / 255.0;
        TempColor.G = float(DrawColor.G) / 255.0;
        TempColor.B = float(DrawColor.B) / 255.0;
        TempColor.A = float(DrawColor.A) / 255.0;
        DrawTile(Icon.Texture, Abs(Icon.UL) * Scale.X, Abs(Icon.VL) * Scale.Y, Icon.U, Icon.V, Icon.UL, Icon.VL, TempColor, false, 2, DisplayPlane);
    }
    //return;    
}

final function DrawIcon(CanvasIcon Icon, float X, float Y, optional float Scale, optional Canvas.EDisplayPlane DisplayPlane)
{
    local LinearColor TempColor;

    DisplayPlane = 0;
    // End:0x357
    if(Icon.Texture != none)
    {
        // End:0x4B
        if(Scale <= 0.0)
        {
            Scale = 1.0;
        }
        // End:0xC0
        if(Icon.UL == 0.0)
        {
            Icon.UL = Icon.Texture.GetSurfaceWidth();
        }
        // End:0x135
        if(Icon.VL == 0.0)
        {
            Icon.VL = Icon.Texture.GetSurfaceHeight();
        }
        SetPos(X, Y);
        TempColor.R = float(DrawColor.R) / 255.0;
        TempColor.G = float(DrawColor.G) / 255.0;
        TempColor.B = float(DrawColor.B) / 255.0;
        TempColor.A = float(DrawColor.A) / 255.0;
        DrawTile(Icon.Texture, Abs(Icon.UL) * Scale, Abs(Icon.VL) * Scale, Icon.U, Icon.V, Icon.UL, Icon.VL, TempColor, false, 2, DisplayPlane);
    }
    //return;    
}

final function DrawRect(float RectX, float RectY, optional Texture Tex, optional Canvas.EDisplayPlane DisplayPlane)
{
    local LinearColor TempColor;

    Tex = DefaultTexture;
    DisplayPlane = 0;
    TempColor.R = float(DrawColor.R) / 255.0;
    TempColor.G = float(DrawColor.G) / 255.0;
    TempColor.B = float(DrawColor.B) / 255.0;
    TempColor.A = float(DrawColor.A) / 255.0;
    DrawTile(Tex, RectX, RectY, 0.0, 0.0, Tex.GetSurfaceWidth(), Tex.GetSurfaceHeight(), TempColor, false, 2, DisplayPlane);
    //return;    
}

final simulated function DrawBox(float Width, float Height)
{
    local int X, Y;

    X = int(CurX);
    Y = int(CurY);
    SetPos(float(X), float(Y));
    DrawRect(2.0, Height);
    SetPos((float(X) + Width) - float(2), float(Y));
    DrawRect(2.0, Height);
    SetPos(float(X + 2), float(Y));
    DrawRect(Width - float(4), 2.0);
    SetPos(float(X + 2), (float(Y) + Height) - float(2));
    DrawRect(Width - float(4), 2.0);
    SetPos(float(X), float(Y));
    //return;    
}

// Export UCanvas::execSetDrawColor(FFrame&, void* const)
native final function SetDrawColor(byte R, byte G, byte B, optional byte A)
{
    A = 255;                        
}

final function SetDrawColorStruct(Color C)
{
    SetDrawColor(C.R, C.G, C.B, C.A);
    //return;    
}

// Export UCanvas::execDraw2DLine(FFrame&, void* const)
native final function Draw2DLine(float X1, float Y1, float X2, float Y2, Color LineColor);

// Export UCanvas::execDrawTextureLine(FFrame&, void* const)
native final function DrawTextureLine(Vector StartPoint, Vector EndPoint, float Perc, float Width, Color LineColor, Texture LineTexture, float U, float V, float UL, float VL);

// Export UCanvas::execDrawTextureDoubleLine(FFrame&, void* const)
native final function DrawTextureDoubleLine(Vector StartPoint, Vector EndPoint, float Perc, float Spacing, float Width, Color LineColor, Color AltLineColor, Texture Tex, float U, float V, float UL, float VL);

function DrawDebugGraph(coerce string Title, float ValueX, float ValueY, float UL_X, float UL_Y, float W, float H, Vector2D RangeX, Vector2D RangeY)
{
    local int X, Y;

    SetDrawColor(255, 255, 255, 255);
    SetPos(UL_X, UL_Y);
    DrawBox(W, H);
    SetDrawColor(255, 255, 0, 255);
    X = int((UL_X + (GetRangePctByValue(RangeX, ValueX) * W)) - float(8 / 2));
    Y = int((UL_Y + (GetRangePctByValue(RangeY, ValueY) * H)) - float(8 / 2));
    SetPos(float(X), float(Y));
    DrawRect(8.0, 8.0);
    SetDrawColor(128, 128, 0, 128);
    Draw2DLine(UL_X, float(Y), UL_X + W, float(Y), DrawColor);
    Draw2DLine(float(X), UL_Y, float(X), UL_Y + H, DrawColor);
    SetDrawColor(255, 255, 0, 255);
    SetPos(float(X), (UL_Y + H) + float(16));
    DrawText(string(ValueX));
    SetPos((UL_X + W) + float(8), float(Y));
    DrawText(string(ValueY));
    // End:0x2B3
    if(Title != "")
    {
        SetPos(UL_X, UL_Y - float(16));
        DrawText(Title);
    }
    //return;    
}

defaultproperties
{
    DrawColor=(R=127,G=127,B=127,A=255)
    ColorModulate=(X=1.0,Y=1.0,Z=1.0,W=1.0)
    DefaultTexture=Texture2D'EngineResources.WhiteSquareTexture'
}