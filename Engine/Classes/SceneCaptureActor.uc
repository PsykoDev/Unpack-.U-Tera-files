/*******************************************************************************
 * SceneCaptureActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SceneCaptureActor extends Actor
    abstract
    native
    notplaceable
    hidecategories(Navigation);

/** component that renders the scene to a texture */
var() const export editinline SceneCaptureComponent SceneCapture;

simulated function OnToggle(SeqAct_Toggle Action)
{
    local bool bEnable;

    // End:0x11
    if(SceneCapture == none)
    {
        return;
    }
    // End:0x57
    if(Action.InputLinks[0].bHasImpulse)
    {
        bEnable = true;
    }
    // End:0x101
    else
    {
        // End:0x9D
        if(Action.InputLinks[1].bHasImpulse)
        {
            bEnable = false;
        }
        // End:0x101
        else
        {
            // End:0x101
            if(Action.InputLinks[2].bHasImpulse)
            {
                bEnable = !SceneCapture.bEnabled;
            }
        }
    }
    SceneCapture.SetEnabled(bEnable);
    //return;    
}

defaultproperties
{
    begin object name=Sprite class=SpriteComponent
        SpriteCategoryName=SceneCapture
        ReplacementPrimitive=none
        HiddenGame=true
        AlwaysLoadOnClient=false
        AlwaysLoadOnServer=false
    object end
    // Reference: SpriteComponent'Default__SceneCaptureActor.Sprite'
    Components(0)=Sprite
    RemoteRole=ENetRole.ROLE_SimulatedProxy
    bNoDelete=true
}