/*******************************************************************************
 * GFxFSCmdHandler_Kismet generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GFxFSCmdHandler_Kismet extends GFxFSCmdHandler
    native(UISequence);

// Export UGFxFSCmdHandler_Kismet::execFSCommand(FFrame&, void* const)
native event bool FSCommand(GFxMoviePlayer Movie, GFxEvent_FSCommand Event, string Cmd, string Arg);
