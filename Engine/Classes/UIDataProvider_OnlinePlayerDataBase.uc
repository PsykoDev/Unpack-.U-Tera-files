/*******************************************************************************
 * UIDataProvider_OnlinePlayerDataBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UIDataProvider_OnlinePlayerDataBase extends UIDataProvider
    abstract
    transient
    native(UIPrivate)
    config(Engine)
    hidecategories(Object,UIRoot);

var int PlayerControllerId;

event OnRegister(LocalPlayer InPlayer)
{
    // End:0x37
    if(InPlayer != none)
    {
        PlayerControllerId = InPlayer.ControllerId;
    }
    //return;    
}

event OnUnregister()
{
    PlayerControllerId = -1;
    //return;    
}

defaultproperties
{
    PlayerControllerId=-1
}