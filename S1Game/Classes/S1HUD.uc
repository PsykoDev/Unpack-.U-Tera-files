/*******************************************************************************
 * S1HUD generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1HUD extends HUD
    transient
    native
    config(Game)
    hidecategories(Navigation);

// Export US1HUD::execOutputString(FFrame&, void* const)
native function OutputString(Canvas CanvasObject);

function DrawHUD()
{
    OutputString(Canvas);
    //return;    
}
