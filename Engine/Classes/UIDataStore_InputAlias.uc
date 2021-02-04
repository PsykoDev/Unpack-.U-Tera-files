/*******************************************************************************
 * UIDataStore_InputAlias generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UIDataStore_InputAlias extends UIDataStore_StringBase
    transient
    native(UIPrivate)
    config(Input)
    hidecategories(Object,UIRoot);

struct native UIInputKeyData
{
    var config RawInputKeyEventData InputKeyData;
    var config string ButtonFontMarkupString;

    structdefaultproperties
    {
        InputKeyData=(InputKeyName=None,ModifierKeyFlags=56)
        ButtonFontMarkupString=""
    }
};

struct native UIDataStoreInputAlias
{
    var config name AliasName;
    var config UIInputKeyData PlatformInputKeys[EInputPlatformType];

    structdefaultproperties
    {
        AliasName=None
        PlatformInputKeys[0]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString="")
        PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString="")
        PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString="")
    }
};

var protected config array<config UIDataStoreInputAlias> InputAliases;
var protected native const transient map<0, 0> InputAliasLookupMap;

// Export UUIDataStore_InputAlias::execGetAliasFontMarkup(FFrame&, void* const)
native final function string GetAliasFontMarkup(name DesiredAlias, optional UIRoot.EInputPlatformType OverridePlatform)
{
    OverridePlatform = 3;                
}

// Export UUIDataStore_InputAlias::execGetAliasFontMarkupByIndex(FFrame&, void* const)
native final function string GetAliasFontMarkupByIndex(int AliasIndex, optional UIRoot.EInputPlatformType OverridePlatform)
{
    OverridePlatform = 3;                
}

// Export UUIDataStore_InputAlias::execGetAliasInputKeyName(FFrame&, void* const)
native final function name GetAliasInputKeyName(name DesiredAlias, optional UIRoot.EInputPlatformType OverridePlatform)
{
    OverridePlatform = 3;                
}

// Export UUIDataStore_InputAlias::execGetAliasInputKeyNameByIndex(FFrame&, void* const)
native final function name GetAliasInputKeyNameByIndex(int AliasIndex, optional UIRoot.EInputPlatformType OverridePlatform)
{
    OverridePlatform = 3;                
}

// Export UUIDataStore_InputAlias::execGetAliasInputKeyData(FFrame&, void* const)
native final function bool GetAliasInputKeyData(out RawInputKeyEventData out_InputKeyData, name DesiredAlias, optional UIRoot.EInputPlatformType OverridePlatform)
{
    OverridePlatform = 3;                    
}

// Export UUIDataStore_InputAlias::execGetAliasInputKeyDataByIndex(FFrame&, void* const)
native final function bool GetAliasInputKeyDataByIndex(out RawInputKeyEventData out_InputKeyData, int AliasIndex, optional UIRoot.EInputPlatformType OverridePlatform)
{
    OverridePlatform = 3;                    
}

// Export UUIDataStore_InputAlias::execFindInputAliasIndex(FFrame&, void* const)
native final function int FindInputAliasIndex(name DesiredAlias);

// Export UUIDataStore_InputAlias::execHasAliasMappingForPlatform(FFrame&, void* const)
native final function bool HasAliasMappingForPlatform(name DesiredAlias, UIRoot.EInputPlatformType DesiredPlatform);

defaultproperties
{
    InputAliases(0)=(AliasName=Term_Controller,PlatformInputKeys=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString="GAMEPAD"),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString="GAMEPAD_360"),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString="GAMEPAD_PS3"))
    InputAliases(1)=(AliasName=Term_GamerCard,PlatformInputKeys=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString="X BUTTON"),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(2)=(AliasName=CycleLeft,PlatformInputKeys=(InputKeyData=(InputKeyName=XboxTypeS_LeftShoulder,ModifierKeyFlags=56),ButtonFontMarkupString="LEFT SHOULDER"),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(3)=(AliasName=CycleRight,PlatformInputKeys=(InputKeyData=(InputKeyName=XboxTypeS_RightShoulder,ModifierKeyFlags=56),ButtonFontMarkupString="RIGHT SHOULDER"),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(4)=(AliasName=AnyKey,PlatformInputKeys=(InputKeyData=(InputKeyName=*,ModifierKeyFlags=56),ButtonFontMarkupString="ANY KEY"),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(5)=(AliasName=Accept,PlatformInputKeys=(InputKeyData=(InputKeyName=Enter,ModifierKeyFlags=56),ButtonFontMarkupString="ACCEPT"),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(6)=(AliasName=Cancel,PlatformInputKeys=(InputKeyData=(InputKeyName=Escape,ModifierKeyFlags=56),ButtonFontMarkupString="CANCEL"),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(7)=(AliasName=Conditional1,PlatformInputKeys=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=XboxTypeS_X,ModifierKeyFlags=56),ButtonFontMarkupString="X BUTTON"),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(8)=(AliasName=Conditional2,PlatformInputKeys=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=XboxTypeS_Y,ModifierKeyFlags=56),ButtonFontMarkupString="Y BUTTON"),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(9)=(AliasName=Start,PlatformInputKeys=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=XboxTypeS_Start,ModifierKeyFlags=56),ButtonFontMarkupString="START"),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(10)=(AliasName=back,PlatformInputKeys=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=XboxTypeS_Back,ModifierKeyFlags=56),ButtonFontMarkupString="BACK"),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(11)=(AliasName=ShiftUp,PlatformInputKeys=(InputKeyData=(InputKeyName=Subtract,ModifierKeyFlags=56),ButtonFontMarkupString="SUBTRACT"),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(12)=(AliasName=ShiftDown,PlatformInputKeys=(InputKeyData=(InputKeyName=Add,ModifierKeyFlags=56),ButtonFontMarkupString="ADD"),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(13)=(AliasName=ShiftUpPage,PlatformInputKeys=(InputKeyData=(InputKeyName=PageUp,ModifierKeyFlags=56),ButtonFontMarkupString="PAGEUP"),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(14)=(AliasName=ShiftDownPage,PlatformInputKeys=(InputKeyData=(InputKeyName=PageDown,ModifierKeyFlags=56),ButtonFontMarkupString="PAGEDOWN"),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(15)=(AliasName=Defaults,PlatformInputKeys=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=XboxTypeS_LeftTrigger,ModifierKeyFlags=56),ButtonFontMarkupString="LEFT TRIGGER"),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(16)=(AliasName=MouseLeft,PlatformInputKeys=(InputKeyData=(InputKeyName=LeftMouseButton,ModifierKeyFlags=56),ButtonFontMarkupString="LEFT MOUSE"),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(17)=(AliasName=MouseRight,PlatformInputKeys=(InputKeyData=(InputKeyName=RightMouseButton,ModifierKeyFlags=56),ButtonFontMarkupString="RIGHT MOUSE"),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(18)=(AliasName=ClickLeft,PlatformInputKeys=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=XboxTypeS_LeftThumbStick,ModifierKeyFlags=56),ButtonFontMarkupString="CLICK LEFT STICK"),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    InputAliases(19)=(AliasName=ClickRight,PlatformInputKeys=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""),PlatformInputKeys[1]=(InputKeyData=(InputKeyName=XboxTypeS_RightThumbStick,ModifierKeyFlags=56),ButtonFontMarkupString="CLICK RIGHT STICK"),PlatformInputKeys[2]=(InputKeyData=(InputKeyName=None,ModifierKeyFlags=56),ButtonFontMarkupString=""))
    Tag=ButtonCallouts
}