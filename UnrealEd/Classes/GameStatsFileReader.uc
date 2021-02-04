/*******************************************************************************
 * GameStatsFileReader generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GameStatsFileReader extends GameplayEventsHandler
    native(GameStats)
    config(GameStats);

var private GameStateObject GameState;
var GameSessionEntry SessionData;
var int EventsOffset;
var private native const transient array<Pointer> AllEvents;

// Export UGameStatsFileReader::execCleanup(FFrame&, void* const)
native event Cleanup();