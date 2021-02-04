/*******************************************************************************
 * OnlineStats generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class OnlineStats extends Object
    abstract
    native;

var const array<StringIdToStringMapping> ViewIdMappings;

// Export UOnlineStats::execGetViewId(FFrame&, void* const)
native function bool GetViewId(name ViewName, out int ViewId);

// Export UOnlineStats::execGetViewName(FFrame&, void* const)
native function name GetViewName(int ViewId);
