/*******************************************************************************
 * MantleReachSpec generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MantleReachSpec extends ForcedReachSpec
    native;

/** This mantle spec climbs up a surface instead of jumping over */
var() bool bClimbUp;

defaultproperties
{
    bSkipPrune=true
}