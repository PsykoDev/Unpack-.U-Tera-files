/*******************************************************************************
 * MobileMenuObjectProxy generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MobileMenuObjectProxy extends MobileMenuObject;

var delegate<OnTouchEvent> __OnTouchEvent__Delegate;
var delegate<OnRenderObject> __OnRenderObject__Delegate;

delegate bool OnTouchEvent(MobileMenuObjectProxy Proxy, Engine.Interaction.ETouchType EventType, float TouchX, float TouchY, MobileMenuObject ObjectOver, float DeltaTime)
{
    //return ReturnValue;    
}

delegate OnRenderObject(MobileMenuObjectProxy Proxy, Canvas Canvas, float DeltaTime)
{
    //return;    
}

event bool OnTouch(Engine.Interaction.ETouchType EventType, float TouchX, float TouchY, MobileMenuObject ObjectOver, float DeltaTime)
{
    // End:0x51
    if(__OnTouchEvent__Delegate != none)
    {
        return OnTouchEvent(self, EventType, TouchX, TouchY, ObjectOver, DeltaTime);
    }
    return false;
    //return ReturnValue;    
}

function RenderObject(Canvas Canvas, float DeltaTime)
{
    // End:0x35
    if(__OnRenderObject__Delegate != none)
    {
        OnRenderObject(self, Canvas, DeltaTime);
    }
    //return;    
}
