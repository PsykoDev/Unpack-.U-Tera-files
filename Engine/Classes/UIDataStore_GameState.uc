/*******************************************************************************
 * UIDataStore_GameState generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UIDataStore_GameState extends UIDataStore
    abstract
    transient
    native(UIPrivate)
    config(Engine)
    hidecategories(Object,UIRoot);

var delegate<OnRefreshDataFieldValue> __OnRefreshDataFieldValue__Delegate;

delegate OnRefreshDataFieldValue()
{
    //return;    
}

function bool NotifyGameSessionEnded()
{
    return true;
    //return ReturnValue;    
}
