/*******************************************************************************
 * SeqEvent_HudRenderText generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqEvent_HudRenderText extends SeqEvent_HudRender
    hidecategories(Object);

enum ETextDrawMethod
{
    DRAW_CenterText,
    DRAW_WrapText,
    DRAW_MAX
};

/** The Font to draw */
var(HUD) Font DisplayFont;
/** The Color to draw the text in */
var(HUD) Color DisplayColor;
/** The Location to display the text at */
var(HUD) Vector DisplayLocation;
/** The text to draw.  NOTE: You can set this via the variable link */
var(HUD) string DisplayText;
/** Whether the text should be centered at the display location */
var(HUD) SeqEvent_HudRenderText.ETextDrawMethod TextDrawMethod;

function Render(Canvas TargetCanvas, HUD TargetHud)
{
    local float XL, YL, UsedX, UsedY, UsedScaleX, UsedScaleY,
	    GlobalScaleX, GlobalScaleY;

    // End:0x39C
    if(bIsActive)
    {
        PublishLinkedVariableValues();
        // End:0x4E
        if(DisplayFont != none)
        {
            TargetCanvas.Font = DisplayFont;
        }
        GlobalScaleX = class'MobileMenuScene'.static.GetGlobalScaleX() / AuthoredGlobalScale;
        GlobalScaleY = class'MobileMenuScene'.static.GetGlobalScaleY() / AuthoredGlobalScale;
        UsedX = ((DisplayLocation.X < 1.0) ? DisplayLocation.X * float(TargetCanvas.SizeX) : DisplayLocation.X * GlobalScaleX);
        UsedY = ((DisplayLocation.Y < 1.0) ? DisplayLocation.Y * float(TargetCanvas.SizeY) : DisplayLocation.Y * GlobalScaleY);
        UsedScaleX = GlobalScaleX;
        UsedScaleY = GlobalScaleY;
        TargetCanvas.DrawColor = DisplayColor;
        // End:0x2B8
        if(TextDrawMethod == 1)
        {
            TargetCanvas.SetPos(UsedX, UsedY);
            TargetCanvas.DrawText(DisplayText,, UsedScaleX, UsedScaleY);
        }
        // End:0x39C
        else
        {
            // End:0x39C
            if(TextDrawMethod == 0)
            {
                TargetCanvas.TextSize(DisplayText, XL, YL);
                XL *= UsedScaleX;
                TargetCanvas.SetPos(UsedX - (XL / float(2)), UsedY);
                TargetCanvas.DrawText(DisplayText,, UsedScaleX, UsedScaleY);
            }
        }
    }
    //return;    
}

static event int GetObjClassVersion()
{
    return super(SequenceObject).GetObjClassVersion() + 1;
    //return ReturnValue;    
}

defaultproperties
{
    DisplayColor=(R=255,G=255,B=255,A=255)
    TextDrawMethod=ETextDrawMethod.DRAW_WrapText
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Bool',LinkedVariables=none,LinkDesc="Active",LinkVar=None,PropertyName=bIsActive,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=1,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Object',LinkedVariables=none,LinkDesc="Target",LinkVar=None,PropertyName=Targets,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_Vector',LinkedVariables=none,LinkDesc="Display Location",LinkVar=None,PropertyName=DisplayLocation,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=1,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(3)=(ExpectedType=Class'Engine.SeqVar_String',LinkedVariables=none,LinkDesc="Display Text",LinkVar=None,PropertyName=DisplayText,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=1,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Draw Text"
    ObjCategory="HUD"
}