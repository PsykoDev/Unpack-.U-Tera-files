/*******************************************************************************
 * InterpTrackLinearColorProp generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class InterpTrackLinearColorProp extends InterpTrackLinearColorBase
    native(Interpolation)
    collapsecategories
    hidecategories(Object);

/** Name of property in Group Actor which this track mill modify over time. */
var() editconst name PropertyName;

defaultproperties
{
    TrackInstClass=class'InterpTrackInstLinearColorProp'
    TrackTitle="LinearColor Property"
}