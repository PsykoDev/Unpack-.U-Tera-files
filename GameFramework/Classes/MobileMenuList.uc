/*******************************************************************************
 * MobileMenuList generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MobileMenuList extends MobileMenuObject;

const NumInDragHistory = 4;

struct SelectedMenuItem
{
    var int Index;
    var float Offset;
    var bool bEndOfList;

    structdefaultproperties
    {
        Index=0
        Offset=0.0
        bEndOfList=false
    }
};

struct DragHistoryData
{
    var float TouchTime;
    var float TouchCoord;

    structdefaultproperties
    {
        TouchTime=0.0
        TouchCoord=0.0
    }
};

struct MenuListDragInfo
{
    var bool bIsDragging;
    var MobileMenuListItem TouchedItem;
    var SelectedMenuItem OrigSelectedItem;
    var Vector2D StartTouch;
    var float TouchTime;
    var float ScrollAmount;
    var float AbsScrollAmount;
    var DragHistoryData UpdateHistory[4];
    var int NumUpdates;
    var bool bHasSelectedChanged;

    structdefaultproperties
    {
        bIsDragging=false
        TouchedItem=none
        OrigSelectedItem=(Index=0,Offset=0.0,bEndOfList=false)
        StartTouch=(X=0.0,Y=0.0)
        TouchTime=0.0
        ScrollAmount=0.0
        AbsScrollAmount=0.0
        UpdateHistory[0]=(TouchTime=0.0,TouchCoord=0.0)
        UpdateHistory[1]=(TouchTime=0.0,TouchCoord=0.0)
        UpdateHistory[2]=(TouchTime=0.0,TouchCoord=0.0)
        UpdateHistory[3]=(TouchTime=0.0,TouchCoord=0.0)
        NumUpdates=0
        bHasSelectedChanged=false
    }
};

struct MenuListMovementInfo
{
    var bool bIsMoving;
    var SelectedMenuItem OrigSelectedItem;
    var float FullMovement;
    var float TotalTime;
    var float CurrentTime;

    structdefaultproperties
    {
        bIsMoving=false
        OrigSelectedItem=(Index=0,Offset=0.0,bEndOfList=false)
        FullMovement=0.0
        TotalTime=0.0
        CurrentTime=0.0
    }
};

/** Vertical or horizontal list supported */
var(DefaultInit) bool bIsVerticalList;
/** On short list, might want to disable all scrolling */
var(DefaultInit) bool bDisableScrolling;
/** When user stops moving, should the closest item move to the selected position */
var(DefaultInit) bool bForceSelectedToLineup;
var bool bTapToScrollToItem;
var bool bLoops;
/** Offset from Top/Left of list that determines 'selected' item - init as percentage of Width/Height depending on bIsVerticalList */
var(DefaultInit) float SelectedOffset;
var array<MobileMenuListItem> Items;
var SelectedMenuItem SelectedItem;
var MenuListDragInfo Drag;
var MenuListMovementInfo Movement;
var float Deacceleration;
var float EaseOutExp;
var IntPoint ScreenSize;
var int FirstVisible;
var int LastVisible;
var int NumShowEndOfList;
var float EndOfListSupression;
var Vector2D MaskSize;

function InitMenuObject(MobilePlayerInput PlayerInput, MobileMenuScene Scene, int ScreenWidth, int ScreenHeight, bool bIsFirstInitialization)
{
    ScreenSize.X = ScreenWidth;
    ScreenSize.Y = ScreenHeight;
    super.InitMenuObject(PlayerInput, Scene, ScreenWidth, ScreenHeight, bIsFirstInitialization);
    SelectedOffset *= ((bIsVerticalList) ? Height : Width);
    // End:0x10B
    if(bIsFirstInitialization)
    {
        MaskSize.X *= Width;
        MaskSize.Y *= Height;
    }
    //return;    
}

function AddItem(MobileMenuListItem Item, optional int Index)
{
    Index = -1;
    // End:0x3A
    if(Index < 0)
    {
        Index = Items.Length + (Index + 1);
    }
    Items.InsertItem(Index, Item);
    //return;    
}

function int Num()
{
    return Items.Length;
    //return ReturnValue;    
}

function MobileMenuListItem GetSelected()
{
    local MobileMenuListItem Item;

    // End:0xC9
    if((SelectedItem.Index >= 0) && SelectedItem.Index < Items.Length)
    {
        Item = Items[SelectedItem.Index];
        // End:0xBF
        if((Item != none) && !Item.bIsVisible)
        {
            Item = none;
        }
        return Item;
    }
    return none;
    //return ReturnValue;    
}

function float GetAmountSelected(MobileMenuListItem Item)
{
    local MobileMenuListItem Selected;
    local float Half;

    Selected = GetSelected();
    // End:0xC6
    if(Item == Selected)
    {
        Half = ((bIsVerticalList) ? Item.Height : Item.Width) * 0.50;
        return FMax(0.00010, FMin(1.0, 1.0 - (Abs(SelectedItem.Offset) / Half)));
    }
    return 0.0;
    //return ReturnValue;    
}

function int GetVisibleIndexOfSelected()
{
    local MobileMenuListItem Item, Selected;
    local int Index;

    Selected = GetSelected();
    Index = 0;
    // End:0x86
    foreach Items(Item,)
    {
        // End:0x58
        if(Item == Selected)
        {            
            return Index;
        }
        // End:0x85
        if(Item.bIsVisible)
        {
            ++ Index;
        }        
    }    
    return -1;
    //return ReturnValue;    
}

function int SetSelectedToVisibleIndex(int VisibleIndex)
{
    local int Index;

    Index = 0;
    J0x0B:
    // End:0xA7 [Loop If]
    if(Index < Items.Length)
    {
        // End:0x99
        if(Items[Index].bIsVisible)
        {
            // End:0x8E
            if(VisibleIndex <= 0)
            {
                SelectedItem.Index = Index;
                return Index;
            }
            -- VisibleIndex;
        }
        ++ Index;
        // [Loop Continue]
        goto J0x0B;
    }
    SelectedItem.Index = -1;
    return -1;
    //return ReturnValue;    
}

function int GetNumVisible()
{
    local int Index, Count;

    Index = 0;
    J0x0B:
    // End:0x68 [Loop If]
    if(Index < Items.Length)
    {
        // End:0x5A
        if(Items[Index].bIsVisible)
        {
            ++ Count;
        }
        ++ Index;
        // [Loop Continue]
        goto J0x0B;
    }
    return Count;
    //return ReturnValue;    
}

function bool SetSelectedItem(int ItemIndex, optional bool bForceAll)
{
    bForceAll = false;
    // End:0xDB
    if((ItemIndex >= 0) && ItemIndex < Items.Length)
    {
        // End:0xDB
        if(Items[ItemIndex].bIsVisible)
        {
            SelectedItem.Index = ItemIndex;
            // End:0xD9
            if(bForceAll)
            {
                Drag.OrigSelectedItem = SelectedItem;
                Movement.OrigSelectedItem = SelectedItem;
            }
            return true;
        }
    }
    return false;
    //return ReturnValue;    
}

event bool OnTouch(Engine.Interaction.ETouchType EventType, float TouchX, float TouchY, MobileMenuObject ObjectOver, float DeltaTime)
{
    local float Velocity, SwipeDelta, FinalScrollDist, CalcScrollDist, SwipeTime;

    local MobileMenuListItem Selected;
    local int Index, Index0;

    TouchX -= Left;
    TouchY -= Top;
    Drag.TouchTime += DeltaTime;
    // End:0x2F7
    if(EventType == 0)
    {
        Movement.bIsMoving = false;
        Drag.bIsDragging = true;
        Drag.OrigSelectedItem = SelectedItem;
        Drag.StartTouch.X = TouchX;
        Drag.StartTouch.Y = TouchY;
        Drag.ScrollAmount = 0.0;
        Drag.AbsScrollAmount = 0.0;
        Drag.bHasSelectedChanged = false;
        Drag.TouchTime = 0.0;
        Drag.NumUpdates = 0;
        Index = 0;
        J0x1E7:
        // End:0x244 [Loop If]
        if(Index < 4)
        {
            Drag.UpdateHistory[Index].TouchTime = 0.0;
            ++ Index;
            // [Loop Continue]
            goto J0x1E7;
        }
        Drag.TouchedItem = GetItemClickPosition(TouchX, TouchY);
        // End:0x2F5
        if(Drag.TouchedItem != none)
        {
            Drag.TouchedItem.OnTouch(EventType, TouchX, TouchY, DeltaTime);
        }
        return true;
    }
    // End:0x89C
    if((EventType == 3) || EventType == 4)
    {
        Drag.bIsDragging = false;
        Movement.bIsMoving = true;
        Movement.CurrentTime = 0.0;
        Movement.OrigSelectedItem = SelectedItem;
        // End:0x52B
        if((!Drag.bHasSelectedChanged && Drag.StartTouch.X == TouchX) && Drag.StartTouch.Y == TouchY)
        {
            Selected = GetSelected();
            // End:0x528
            if((Drag.TouchTime > 0.050) && bTapToScrollToItem)
            {
                // End:0x4E4
                if(bIsVerticalList)
                {
                    FinalScrollDist = TouchY - (SelectedOffset + (Selected.Height / float(2)));
                }
                // End:0x528
                else
                {
                    FinalScrollDist = TouchX - (SelectedOffset + (Selected.Width / float(2)));
                }
            }
        }
        // End:0x722
        else
        {
            // End:0x722
            if(Drag.NumUpdates >= 2)
            {
                Index = (Drag.NumUpdates - 1) % 4;
                Index0 = (Drag.NumUpdates - Min(Drag.NumUpdates, 4)) % 4;
                SwipeDelta = -Drag.UpdateHistory[Index].TouchCoord - Drag.UpdateHistory[Index0].TouchCoord;
                SwipeTime = Drag.UpdateHistory[Index].TouchTime - Drag.UpdateHistory[Index0].TouchTime;
                Velocity = ((SwipeTime > float(0)) ? SwipeDelta / SwipeTime : 0.0);
                FinalScrollDist = Square(Velocity) / (2.0 * Deacceleration);
            }
        }
        // End:0x73E
        if(bDisableScrolling)
        {
            FinalScrollDist = 0.0;
        }
        // End:0x77B
        if(SwipeDelta < float(0))
        {
            CalcScrollDist = CalculateSelectedItem(SelectedItem, -FinalScrollDist, true);
        }
        // End:0x7A2
        else
        {
            CalcScrollDist = CalculateSelectedItem(SelectedItem, FinalScrollDist, true);
        }
        // End:0x811
        if(!bForceSelectedToLineup && !SelectedItem.bEndOfList)
        {
            // End:0x7FE
            if(SwipeDelta < float(0))
            {
                CalcScrollDist = -FinalScrollDist;
            }
            // End:0x811
            else
            {
                CalcScrollDist = FinalScrollDist;
            }
        }
        SelectedItem = Movement.OrigSelectedItem;
        Movement.TotalTime = Sqrt(Abs(CalcScrollDist) / (2.0 * Deacceleration));
        Movement.FullMovement = CalcScrollDist;
    }
    // End:0xB59
    else
    {
        // End:0xB59
        if(Drag.bIsDragging)
        {
            Drag.UpdateHistory[Drag.NumUpdates % 4].TouchTime = Drag.TouchTime;
            Drag.UpdateHistory[Drag.NumUpdates % 4].TouchCoord = ((bIsVerticalList) ? TouchY : TouchX);
            ++ Drag.NumUpdates;
            // End:0xA28
            if(Drag.OrigSelectedItem.Index != SelectedItem.Index)
            {
                Drag.bHasSelectedChanged = true;
            }
            // End:0xA5A
            if(bDisableScrolling)
            {
                Drag.ScrollAmount = 0.0;
            }
            // End:0xB59
            else
            {
                Drag.ScrollAmount = ((bIsVerticalList) ? Drag.StartTouch.Y - TouchY : Drag.StartTouch.X - TouchX);
                Drag.AbsScrollAmount = float(Max(int(Abs(Drag.ScrollAmount)), int(Drag.AbsScrollAmount)));
            }
        }
    }
    // End:0xC5F
    if(Drag.TouchedItem != none)
    {
        // End:0xC11
        if(Drag.TouchedItem == (GetItemClickPosition(TouchX, TouchY)))
        {
            Drag.TouchedItem.OnTouch(EventType, TouchX, TouchY, DeltaTime);
        }
        // End:0xC5F
        else
        {
            Drag.TouchedItem.OnTouch(EventType, -1.0, -1.0, DeltaTime);
        }
    }
    return true;
    //return ReturnValue;    
}

function MobileMenuListItem GetItemClickPosition(out float MouseX, out float MouseY)
{
    local int ScrollAmount, CurIndex, ScrollSize;
    local MobileMenuListItem Item;

    ScrollAmount = int(((bIsVerticalList) ? MouseY : MouseX));
    ScrollAmount -= int(SelectedOffset);
    CurIndex = int(FMax(0.0, float(SelectedItem.Index)));
    // End:0x8E
    if(CurIndex >= Items.Length)
    {
        return none;
    }
    Item = Items[CurIndex];
    ScrollSize = ItemScrollSize(Item);
    J0xC8:
    // End:0x191 [Loop If]
    if(ScrollAmount < 0)
    {
        // End:0xF4
        if(CurIndex > 0)
        {
            -- CurIndex;
        }
        // End:0x11E
        else
        {
            // End:0x11B
            if(bLoops)
            {
                CurIndex = Items.Length - 1;
            }
            // End:0x11E
            else
            {
                // [Explicit Break]
                goto J0x191;
            }
        }
        Item = Items[CurIndex];
        // End:0x18E
        if(Item.bIsVisible)
        {
            ScrollSize = ItemScrollSize(Item);
            ScrollAmount += ScrollSize;
        }
        J0x191:
        // [Loop Continue]
        goto J0xC8;
    }
    // End:0x262 [Loop If]
    if(ScrollAmount > ScrollSize)
    {
        // End:0x1D1
        if(CurIndex < (Items.Length - 1))
        {
            ++ CurIndex;
        }
        // End:0x1EF
        else
        {
            // End:0x1EC
            if(bLoops)
            {
                CurIndex = 0;
            }
            // End:0x1EF
            else
            {
                // [Explicit Break]
                goto J0x262;
            }
        }
        Item = Items[CurIndex];
        // End:0x25F
        if(Item.bIsVisible)
        {
            ScrollAmount -= ScrollSize;
            ScrollSize = ItemScrollSize(Item);
        }
        J0x262:
        // [Loop Continue]
        goto J0x191;
    }
    // End:0x2EF
    if(bIsVerticalList)
    {
        MouseY = float(ScrollAmount) - SelectedItem.Offset;
        // End:0x2EC
        if((ScrollAmount < 0) || float(ScrollAmount) > Item.Height)
        {
            Item = none;
        }
    }
    // End:0x36C
    else
    {
        MouseX = float(ScrollAmount) - SelectedItem.Offset;
        // End:0x36C
        if((ScrollAmount < 0) || float(ScrollAmount) > Item.Width)
        {
            Item = none;
        }
    }
    return Item;
    //return ReturnValue;    
}

function float CalculateSelectedItem(out SelectedMenuItem Selected, float ScrollAmount, bool bForceZeroAdjustment)
{
    local float AdjustValue, ScrollSize, Scrolled, HalfScroll;
    local int CurIndex;
    local MobileMenuListItem Item;

    AdjustValue = Selected.Offset;
    Scrolled = AdjustValue;
    ScrollAmount -= AdjustValue;
    CurIndex = int(FMax(0.0, float(Selected.Index)));
    // End:0x9C
    if(CurIndex >= Items.Length)
    {
        return 0.0;
    }
    Item = Items[CurIndex];
    ScrollSize = float(ItemScrollSize(Item));
    Selected.bEndOfList = false;
    J0xF7:
    // End:0x231 [Loop If]
    if(ScrollAmount < float(0))
    {
        // End:0x125
        if(CurIndex > 0)
        {
            -- CurIndex;
        }
        // End:0x182
        else
        {
            // End:0x14C
            if(bLoops)
            {
                CurIndex = Items.Length - 1;
            }
            // End:0x182
            else
            {
                ScrollAmount *= EndOfListSupression;
                Selected.bEndOfList = true;
                // [Explicit Break]
                goto J0x231;
            }
        }
        Item = Items[CurIndex];
        // End:0x22E
        if(Item.bIsVisible)
        {
            ScrollSize = float(ItemScrollSize(Item));
            ScrollAmount += ScrollSize;
            Scrolled -= ScrollSize;
            Selected.Index = CurIndex;
        }
        J0x231:
        // [Loop Continue]
        goto J0xF7;
    }
    HalfScroll = ScrollSize / float(2);
    J0x24A:
    // End:0x3BD [Loop If]
    if(ScrollAmount > HalfScroll)
    {
        // End:0x295
        if(CurIndex < (Items.Length - (NumShowEndOfList + 1)))
        {
            ++ CurIndex;
        }
        // End:0x30E
        else
        {
            // End:0x2B0
            if(bLoops)
            {
                CurIndex = 0;
            }
            // End:0x30E
            else
            {
                ScrollAmount -= HalfScroll;
                ScrollAmount *= EndOfListSupression;
                ScrollAmount += HalfScroll;
                Selected.bEndOfList = true;
                // [Explicit Break]
                goto J0x3BD;
            }
        }
        Item = Items[CurIndex];
        // End:0x3BA
        if(Item.bIsVisible)
        {
            ScrollAmount -= ScrollSize;
            Scrolled += ScrollSize;
            Selected.Index = CurIndex;
            ScrollSize = float(ItemScrollSize(Item));
        }
        J0x3BD:
        // [Loop Continue]
        goto J0x24A;
    }
    // End:0x3EF
    if(bForceZeroAdjustment)
    {
        Selected.Offset = 0.0;
    }
    // End:0x42B
    else
    {
        Selected.Offset = -ScrollAmount;
        Scrolled -= ScrollAmount;
    }
    return Scrolled;
    //return ReturnValue;    
}

function UpdateScroll(float DeltaTime)
{
    local float ScrollAmount;

    // End:0x6F
    if(Drag.bIsDragging)
    {
        SelectedItem = Drag.OrigSelectedItem;
        ScrollAmount = Drag.ScrollAmount;
    }
    // End:0x1DE
    else
    {
        // End:0x1DC
        if(Movement.bIsMoving)
        {
            SelectedItem = Movement.OrigSelectedItem;
            Movement.CurrentTime += DeltaTime;
            // End:0x194
            if(Movement.CurrentTime < Movement.TotalTime)
            {
                ScrollAmount = FInterpEaseOut(0.0, Movement.FullMovement, Movement.CurrentTime / Movement.TotalTime, EaseOutExp);
            }
            // End:0x1D9
            else
            {
                ScrollAmount = Movement.FullMovement;
                Movement.bIsMoving = false;
            }
        }
        // End:0x1DE
        else
        {
            return;
        }
    }
    CalculateSelectedItem(SelectedItem, ScrollAmount, false);
    //return;    
}

function RenderObject(Canvas Canvas, float DeltaTime)
{
    local MobileMenuListItem Item;
    local float OrgX, OrgY;
    local int VpEnd, CurIndex, first, Last, SelectedIdx, NumItems,
	    RealIndex;

    local Vector2D VpPos, VpSize;

    NumItems = Items.Length;
    // End:0x25
    if(NumItems == 0)
    {
        return;
    }
    UpdateScroll(DeltaTime);
    VpSize.X = Width;
    VpSize.Y = Height;
    SelectedIdx = int(FMax(0.0, float(SelectedItem.Index)));
    // End:0xD6
    if(bLoops)
    {
        SelectedIdx += NumItems;
    }
    first = SelectedIdx;
    GetRealPosition(VpPos.X, VpPos.Y);
    // End:0x26F
    if(bIsVerticalList)
    {
        VpPos.Y += (SelectedOffset + SelectedItem.Offset);
        VpEnd = int(Top + Height);
        J0x19D:
        // End:0x26C [Loop If]
        if((first > 0) && VpPos.Y > Top)
        {
            -- first;
            Item = Items[first % NumItems];
            // End:0x269
            if(Item.bIsVisible)
            {
                VpPos.Y -= Item.Height;
            }
            // [Loop Continue]
            goto J0x19D;
        }
    }
    // End:0x3A3
    else
    {
        VpPos.X += (SelectedOffset + SelectedItem.Offset);
        VpEnd = int(Left + Width);
        J0x2D4:
        // End:0x3A3 [Loop If]
        if((first > 0) && VpPos.X > Left)
        {
            -- first;
            Item = Items[first % NumItems];
            // End:0x3A0
            if(Item.bIsVisible)
            {
                VpPos.X -= Item.Width;
            }
            // [Loop Continue]
            goto J0x2D4;
        }
    }
    // End:0x40D [Loop If]
    if((first + 1) < NumItems)
    {
        Item = Items[first];
        // End:0x3FF
        if(Item.bIsVisible)
        {
            // [Explicit Break]
            goto J0x40D;
        }
        ++ first;
        J0x40D:
        // [Loop Continue]
        goto J0x3A3;
    }
    Last = first;
    CurIndex = 0;
    J0x42B:
    // End:0x70B [Loop If]
    if(CurIndex < NumItems)
    {
        RealIndex = ((bLoops) ? (first + CurIndex) % NumItems : first + CurIndex);
        // End:0x4A8
        if(RealIndex >= NumItems)
        {
            // [Explicit Break]
            goto J0x70B;
        }
        Item = Items[RealIndex];
        // End:0x6FD
        if(Item.bIsVisible)
        {
            Last = first + CurIndex;
            // End:0x609
            if(bIsVerticalList)
            {
                VpSize.Y = Item.Height;
                Item.VpPos = VpPos;
                Item.VpSize = VpSize;
                VpPos.Y += VpSize.Y;
                // End:0x606
                if(VpPos.Y >= float(VpEnd))
                {
                    // [Explicit Break]
                    goto J0x70B;
                }
            }
            // End:0x6FD
            else
            {
                VpSize.X = Item.Width;
                Item.VpPos = VpPos;
                Item.VpSize = VpSize;
                VpPos.X += VpSize.X;
                // End:0x6FD
                if(VpPos.X >= float(VpEnd))
                {
                    // [Explicit Break]
                    goto J0x70B;
                }
            }
        }
        ++ CurIndex;
        J0x70B:
        // [Loop Continue]
        goto J0x42B;
    }
    OrgX = Canvas.OrgX;
    OrgY = Canvas.OrgY;
    // End:0x80E
    if((MaskSize.X > float(0)) && MaskSize.Y > float(0))
    {
        Canvas.PushMaskRegion(Left, Top, MaskSize.X, MaskSize.Y);
    }
    CurIndex = first;
    J0x821:
    // End:0x943 [Loop If]
    if(CurIndex < SelectedIdx)
    {
        Item = Items[CurIndex % NumItems];
        // End:0x935
        if(Item.bIsVisible)
        {
            Canvas.SetOrigin(Item.VpPos.X, Item.VpPos.Y);
            Item.RenderItem(self, Canvas, DeltaTime);
        }
        ++ CurIndex;
        // [Loop Continue]
        goto J0x821;
    }
    CurIndex = Last;
    J0x956:
    // End:0xA78 [Loop If]
    if(CurIndex >= SelectedIdx)
    {
        Item = Items[CurIndex % NumItems];
        // End:0xA6A
        if(Item.bIsVisible)
        {
            Canvas.SetOrigin(Item.VpPos.X, Item.VpPos.Y);
            Item.RenderItem(self, Canvas, DeltaTime);
        }
        -- CurIndex;
        // [Loop Continue]
        goto J0x956;
    }
    // End:0xAE1
    if((MaskSize.X > float(0)) && MaskSize.Y > float(0))
    {
        Canvas.PopMaskRegion();
    }
    FirstVisible = first;
    LastVisible = Last;
    Canvas.OrgX = OrgX;
    Canvas.OrgY = OrgY;
    //return;    
}

function int ItemScrollSize(MobileMenuListItem Item)
{
    return int(((bIsVerticalList) ? Item.Height : Item.Width));
    //return ReturnValue;    
}

function GetIconIndexes(out array<int> IconIndexes)
{
    local MobileMenuListItem Item;

    super.GetIconIndexes(IconIndexes);
    // End:0x53
    foreach Items(Item,)
    {
        Item.GetIconIndexes(IconIndexes);        
    }    
    //return;    
}

defaultproperties
{
    bIsVerticalList=true
    bForceSelectedToLineup=true
    bTapToScrollToItem=true
    Deacceleration=1500.0
    EaseOutExp=4.0
    EndOfListSupression=0.40
    bIsActive=true
}