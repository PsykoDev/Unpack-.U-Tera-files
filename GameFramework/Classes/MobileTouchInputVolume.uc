/*******************************************************************************
 * MobileTouchInputVolume generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MobileTouchInputVolume extends Volume
    hidecategories(Navigation,Object,Movement,Display)
    implements(TouchableElement3D);

var bool bEnabled;

simulated function OnToggle(SeqAct_Toggle InAction)
{
    // End:0x46
    if(InAction.InputLinks[0].bHasImpulse)
    {
        bEnabled = true;
    }
    // End:0xDB
    else
    {
        // End:0x8C
        if(InAction.InputLinks[1].bHasImpulse)
        {
            bEnabled = false;
        }
        // End:0xDB
        else
        {
            // End:0xDB
            if(InAction.InputLinks[2].bHasImpulse)
            {
                bEnabled = !bEnabled;
            }
        }
    }
    super.OnToggle(InAction);
    //return;    
}

function HandleClick()
{
    // End:0x24
    if(bEnabled)
    {
        TriggerEventClass(class'SeqEvent_MobileTouchInputVolume', self, 1);
    }
    //return;    
}

function HandleDoubleClick()
{
    // End:0x25
    if(bEnabled)
    {
        TriggerEventClass(class'SeqEvent_MobileTouchInputVolume', self, 2);
    }
    //return;    
}

function HandleDragOver()
{
    // End:0x24
    if(bEnabled)
    {
        TriggerEventClass(class'SeqEvent_MobileTouchInputVolume', self, 0);
    }
    //return;    
}

defaultproperties
{
    bEnabled=true
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__MobileTouchInputVolume.BrushComponent0'
    BrushComponent=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__MobileTouchInputVolume.BrushComponent0'
    Components(0)=BrushComponent0
    bStatic=false
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
    object end
    // Reference: BrushComponent'Default__MobileTouchInputVolume.BrushComponent0'
    CollisionComponent=BrushComponent0
    SupportedEvents=/* Array type was not detected. */
}