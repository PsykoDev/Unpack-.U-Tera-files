/*******************************************************************************
 * MobileMenuGame generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MobileMenuGame extends GameInfo
    config(Game)
    hidecategories(Navigation,Movement,Collision);

var class<MobileMenuScene> InitialSceneToDisplayClass;

event PostLogin(PlayerController NewPlayer)
{
    local MobilePlayerInput MI;

    super.PostLogin(NewPlayer);
    LogInternal((("" $ string(Class)) $ "::PostLogin") @ string(InitialSceneToDisplayClass));
    // End:0x110
    if(InitialSceneToDisplayClass != none)
    {
        MI = MobilePlayerInput(NewPlayer.PlayerInput);
        // End:0xBC
        if(MI != none)
        {
            MI.OpenMenuScene(InitialSceneToDisplayClass);
        }
        // End:0x10D
        else
        {
            LogInternal("MobileMenuGame.Login - Could not find a MobilePlayerInput to open the scene!");
        }
    }
    // End:0x13C
    else
    {
        LogInternal("MobileMenuGame.Login - No scene to open");
    }
    //return;    
}

function StartMatch()
{
    //return;    
}

function RestartPlayer(Controller NewPlayer)
{
    //return;    
}

defaultproperties
{
    HUDType=class'MobileHUD'
    PlayerControllerClass=class'MobileMenuPlayerController'
}