/*******************************************************************************
 * BrowserManager generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class BrowserManager extends Object
    native
    config(Editor);

struct native BrowserPaneInfo
{
    var int PaneID;
    var string WxWindowClassName;
    var string FriendlyName;
    var const bool bInitiallyHidden;
    var const int CloneOfPaneID;
    var const int CloneNumber;
    var const transient Pointer WxBrowserPtr;

    structdefaultproperties
    {
        PaneID=0
        WxWindowClassName=""
        FriendlyName=""
        bInitiallyHidden=false
        CloneOfPaneID=0
        CloneNumber=0
        WxBrowserPtr=none
    }
};

var config array<config BrowserPaneInfo> BrowserPanes;
var bool bHasCreatedPanes;
var bool bHasStateBeenRestored;
var bool bIsBrowserLayoutChanging;
var config int LastSelectedPaneID;
var const transient Pointer CreatedPanesPtr;
var const transient Pointer DockingContainerPtr;
var const transient Pointer FloatingWindowsArrayPtr;
var const transient Pointer BrowserMenuPtr;

defaultproperties
{
    BrowserPanes(0)=(PaneID=0,WxWindowClassName="WxContentBrowserHost",FriendlyName="ContentBrowser",bInitiallyHidden=false,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
    BrowserPanes(1)=(PaneID=1,WxWindowClassName="WxActorBrowser",FriendlyName="ActorBrowser",bInitiallyHidden=false,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
    BrowserPanes(2)=(PaneID=2,WxWindowClassName="WxLevelBrowser",FriendlyName="LevelBrowser",bInitiallyHidden=false,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
    BrowserPanes(3)=(PaneID=3,WxWindowClassName="WxSceneManager",FriendlyName="SceneManager",bInitiallyHidden=false,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
    BrowserPanes(4)=(PaneID=4,WxWindowClassName="WxLayerBrowser",FriendlyName="LayerBrowser",bInitiallyHidden=false,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
    BrowserPanes(5)=(PaneID=5,WxWindowClassName="WxAttachmentEditor",FriendlyName="Attachments",bInitiallyHidden=true,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
    BrowserPanes(6)=(PaneID=6,WxWindowClassName="WxReferencedAssetsBrowser",FriendlyName="ReferencedAssetsBrowser",bInitiallyHidden=true,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
    BrowserPanes(7)=(PaneID=7,WxWindowClassName="WxGameStatsVisualizer",FriendlyName="GameStatsVisualizer",bInitiallyHidden=true,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
    BrowserPanes(8)=(PaneID=8,WxWindowClassName="WxPrimitiveStatsBrowser",FriendlyName="PrimitiveStats",bInitiallyHidden=true,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
    BrowserPanes(9)=(PaneID=9,WxWindowClassName="WxBuildingStatsBrowser",FriendlyName="BuildingStats",bInitiallyHidden=true,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
    BrowserPanes(10)=(PaneID=10,WxWindowClassName="WxTextureStatsBrowser",FriendlyName="TextureStats",bInitiallyHidden=true,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
    BrowserPanes(11)=(PaneID=11,WxWindowClassName="WxTaskBrowser",FriendlyName="TaskBrowser",bInitiallyHidden=true,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
    BrowserPanes(12)=(PaneID=12,WxWindowClassName="WxLogBrowser",FriendlyName="LogBrowser",bInitiallyHidden=true,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
    BrowserPanes(13)=(PaneID=13,WxWindowClassName="WxStartPageHost",FriendlyName="Documentation",bInitiallyHidden=false,CloneOfPaneID=-1,CloneNumber=-1,WxBrowserPtr=none)
}