/*******************************************************************************
 * UnrealEdOptions generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UnrealEdOptions extends Object
    native
    config(Editor);

struct native EditorCommandCategory
{
    var name Parent;
    var name Name;

    structdefaultproperties
    {
        Parent=None
        Name=None
    }
};

struct native EditorCommand
{
    var name Parent;
    var name CommandName;
    var string ExecCommand;
    var string Description;

    structdefaultproperties
    {
        Parent=None
        CommandName=None
        ExecCommand=""
        Description=""
    }
};

var config array<config EditorCommandCategory> EditorCategories;
var config array<config EditorCommand> EditorCommands;
var UnrealEdKeyBindings EditorKeyBindings;
var native map<0, 0> CommandMap;

defaultproperties
{
    EditorCategories(0)=(Parent=None,Name=Matinee)
    EditorCategories(1)=(Parent=None,Name=CurveEditor)
    EditorCommands(0)=(Parent=Matinee,CommandName=Matinee_PlayForward,ExecCommand="Matinee Play",Description="Matinee_PlayForward_Desc")
    EditorCommands(1)=(Parent=Matinee,CommandName=Matinee_PlayReverse,ExecCommand="Matinee PlayReverse",Description="Matinee_PlayReverse_Desc")
    EditorCommands(2)=(Parent=Matinee,CommandName=Matinee_Stop,ExecCommand="Matinee Stop",Description="Matinee_Stop_Desc")
    EditorCommands(3)=(Parent=Matinee,CommandName=Matinee_TogglePlayPause,ExecCommand="Matinee TogglePlayPause",Description="Matinee_TogglePlayPause_Desc")
    EditorCommands(4)=(Parent=Matinee,CommandName=Matinee_ZoomIn,ExecCommand="Matinee ZoomIn",Description="Matinee_ZoomIn_Desc")
    EditorCommands(5)=(Parent=Matinee,CommandName=Matinee_ZoomInAlt,ExecCommand="Matinee ZoomIn",Description="Matinee_ZoomInAlt_Desc")
    EditorCommands(6)=(Parent=Matinee,CommandName=Matinee_ZoomOut,ExecCommand="Matinee ZoomOut",Description="Matinee_ZoomOut_Desc")
    EditorCommands(7)=(Parent=Matinee,CommandName=Matinee_ZoomOutAlt,ExecCommand="Matinee ZoomOut",Description="Matinee_ZoomOutAlt_Desc")
    EditorCommands(8)=(Parent=Matinee,CommandName=Matinee_Undo,ExecCommand="Matinee Undo",Description="Matinee_Undo_Desc")
    EditorCommands(9)=(Parent=Matinee,CommandName=Matinee_Redo,ExecCommand="Matinee Redo",Description="Matinee_Redo_Desc")
    EditorCommands(10)=(Parent=Matinee,CommandName=Matinee_Copy,ExecCommand="Matinee Copy",Description="Matinee_Copy_Desc")
    EditorCommands(11)=(Parent=Matinee,CommandName=Matinee_Cut,ExecCommand="Matinee Cut",Description="Matinee_Cut_Desc")
    EditorCommands(12)=(Parent=Matinee,CommandName=Matinee_Paste,ExecCommand="Matinee Paste",Description="Matinee_Paste_Desc")
    EditorCommands(13)=(Parent=Matinee,CommandName=Matinee_DeleteSelection,ExecCommand="Matinee DeleteSelection",Description="Matinee_DeleteSelection_Desc")
    EditorCommands(14)=(Parent=Matinee,CommandName=Matinee_MarkInSection,ExecCommand="Matinee MarkInSection",Description="Matinee_MarkInSection_Desc")
    EditorCommands(15)=(Parent=Matinee,CommandName=Matinee_MarkOutSection,ExecCommand="Matinee MarkOutSection",Description="Matinee_MarkOutSection_Desc")
    EditorCommands(16)=(Parent=Matinee,CommandName=Matinee_IncrementPosition,ExecCommand="Matinee IncrementPosition",Description="Matinee_IncrementPosition_Desc")
    EditorCommands(17)=(Parent=Matinee,CommandName=Matinee_DecrementPosition,ExecCommand="Matinee DecrementPosition",Description="Matinee_DecrementPosition_Desc")
    EditorCommands(18)=(Parent=Matinee,CommandName=Matinee_MoveToNextKey,ExecCommand="Matinee MoveToNextKey",Description="Matinee_MoveToNextKey_Desc")
    EditorCommands(19)=(Parent=Matinee,CommandName=Matinee_MoveToPrevKey,ExecCommand="Matinee MoveToPrevKey",Description="Matinee_MoveToPrevKey_Desc")
    EditorCommands(20)=(Parent=Matinee,CommandName=Matinee_SplitAnimKey,ExecCommand="Matinee SplitAnimKey",Description="Matinee_SplitAnimKey_Desc")
    EditorCommands(21)=(Parent=Matinee,CommandName=Matinee_ToggleSnap,ExecCommand="Matinee ToggleSnap",Description="Matinee_ToggleSnap_Desc")
    EditorCommands(22)=(Parent=Matinee,CommandName=Matinee_MoveActiveUp,ExecCommand="Matinee MoveActiveUp",Description="Matinee_MoveActiveUp_Desc")
    EditorCommands(23)=(Parent=Matinee,CommandName=Matinee_MoveActiveDown,ExecCommand="Matinee MoveActiveDown",Description="Matinee_MoveActiveDown_Desc")
    EditorCommands(24)=(Parent=Matinee,CommandName=Matinee_AddKey,ExecCommand="Matinee AddKey",Description="Matinee_AddKey_Desc")
    EditorCommands(25)=(Parent=Matinee,CommandName=Matinee_DuplicateSelectedKeys,ExecCommand="Matinee DuplicateSelectedKeys",Description="Matinee_DuplicateSelectedKeys_Desc")
    EditorCommands(26)=(Parent=Matinee,CommandName=Matinee_CropAnimationBeginning,ExecCommand="Matinee CropAnimationBeginning",Description="Matinee_CropAnimationBeginning_Desc")
    EditorCommands(27)=(Parent=Matinee,CommandName=Matinee_CropAnimationEnd,ExecCommand="Matinee CropAnimationEnd",Description="Matinee_CropAnimationEnd_Desc")
    EditorCommands(28)=(Parent=Matinee,CommandName=Matinee_ViewFitSequence,ExecCommand="Matinee ViewFitSequence",Description="Matinee_ViewFitSequence_Desc")
    EditorCommands(29)=(Parent=Matinee,CommandName=Matinee_ViewFitToSelected,ExecCommand="Matinee ViewFitToSelected",Description="Matinee_ViewFitToSelected_Desc")
    EditorCommands(30)=(Parent=Matinee,CommandName=Matinee_ViewFitLoop,ExecCommand="Matinee ViewFitLoop",Description="Matinee_ViewFitLoop_Desc")
    EditorCommands(31)=(Parent=Matinee,CommandName=Matinee_ViewFitLoopSequence,ExecCommand="Matinee ViewFitLoopSequence",Description="Matinee_ViewFitLoopSequence_Desc")
    EditorCommands(32)=(Parent=Matinee,CommandName=Matinee_ViewEndOfTrack,ExecCommand="Matinee ViewEndOfTrack",Description="Matinee_ViewEndOfTrack_Desc")
    EditorCommands(33)=(Parent=Matinee,CommandName=Matinee_ChangeKeyInterpModeAUTO,ExecCommand="Matinee ChangeKeyInterpModeAUTO",Description="Matinee_ChangeKeyInterpModeAUTO_Desc")
    EditorCommands(34)=(Parent=Matinee,CommandName=Matinee_ChangeKeyInterpModeUSER,ExecCommand="Matinee ChangeKeyInterpModeUSER",Description="Matinee_ChangeKeyInterpModeUSER_Desc")
    EditorCommands(35)=(Parent=Matinee,CommandName=Matinee_ChangeKeyInterpModeBREAK,ExecCommand="Matinee ChangeKeyInterpModeBREAK",Description="Matinee_ChangeKeyInterpModeBREAK_Desc")
    EditorCommands(36)=(Parent=Matinee,CommandName=Matinee_ChangeKeyInterpModeLINEAR,ExecCommand="Matinee ChangeKeyInterpModeLINEAR",Description="Matinee_ChangeKeyInterpModeLINEAR_Desc")
    EditorCommands(37)=(Parent=Matinee,CommandName=Matinee_ChangeKeyInterpModeCONSTANT,ExecCommand="Matinee ChangeKeyInterpModeCONSTANT",Description="Matinee_ChangeKeyInterpModeCONSTANT_Desc")
    EditorCommands(38)=(Parent=CurveEditor,CommandName=CurveEditor_ChangeInterpModeAUTO,ExecCommand="CurveEditor ChangeInterpModeAUTO",Description="CurveEditor_ChangeInterpModeAUTO_Desc")
    EditorCommands(39)=(Parent=CurveEditor,CommandName=CurveEditor_ChangeInterpModeUSER,ExecCommand="CurveEditor ChangeInterpModeUSER",Description="CurveEditor_ChangeInterpModeUSER_Desc")
    EditorCommands(40)=(Parent=CurveEditor,CommandName=CurveEditor_ChangeInterpModeBREAK,ExecCommand="CurveEditor ChangeInterpModeBREAK",Description="CurveEditor_ChangeInterpModeBREAK_Desc")
    EditorCommands(41)=(Parent=CurveEditor,CommandName=CurveEditor_ChangeInterpModeLINEAR,ExecCommand="CurveEditor ChangeInterpModeLINEAR",Description="CurveEditor_ChangeInterpModeLINEAR_Desc")
    EditorCommands(42)=(Parent=CurveEditor,CommandName=CurveEditor_ChangeInterpModeCONSTANT,ExecCommand="CurveEditor ChangeInterpModeCONSTANT",Description="CurveEditor_ChangeInterpModeCONSTANT_Desc")
    EditorCommands(43)=(Parent=CurveEditor,CommandName=CurveEditor_FitViewHorizontally,ExecCommand="CurveEditor FitViewHorizontally",Description="CurveEditor_FitViewHorizontally_Desc")
    EditorCommands(44)=(Parent=CurveEditor,CommandName=CurveEditor_FitViewVertically,ExecCommand="CurveEditor FitViewVertically",Description="CurveEditor_FitViewVertically_Desc")
    EditorCommands(45)=(Parent=CurveEditor,CommandName=CurveEditor_FitViewToAll,ExecCommand="CurveEditor FitViewToAll",Description="CurveEditor_FitViewToAll_Desc")
    EditorCommands(46)=(Parent=CurveEditor,CommandName=CurveEditor_FitViewToSelected,ExecCommand="CurveEditor FitViewToSelected",Description="CurveEditor_FitViewToSelected_Desc")
    EditorKeyBindings=UnrealEdKeyBindings'Default__UnrealEdOptions.EditorKeyBindingsInst'
}