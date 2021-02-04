/*******************************************************************************
 * S1ChannelVolume generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1ChannelVolume extends Volume
    native
    hidecategories(Navigation,Object,Movement,Display,Advanced,Attachment,Collision,Volume);

enum ChannelType
{
    Channel_7001,
    Channel_7002,
    Channel_7003,
    Channel_7004,
    Channel_7005,
    Channel_7006,
    Channel_7007,
    Channel_7008,
    Channel_7009,
    Channel_7010,
    Channel_7011,
    Channel_7012,
    Channel_7013,
    Channel_7014,
    Channel_7015,
    Channel_7016,
    Channel_7017,
    Channel_7018,
    Channel_7019,
    Channel_7020,
    Channel_7021,
    Channel_7022,
    Channel_7023,
    Channel_7024,
    Channel_7025,
    Channel_7026,
    Channel_7027,
    Channel_7028,
    Channel_7029,
    Channel_MAX
};

var() S1ChannelVolume.ChannelType Channel;
var() bool bIsInnerVolume;
var native transient int ChannelVolumeId;

defaultproperties
{
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        CollideActors=false
        BlockNonZeroExtent=false
    object end
    // Reference: BrushComponent'Default__S1ChannelVolume.BrushComponent0'
    BrushComponent=BrushComponent0
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        CollideActors=false
        BlockNonZeroExtent=false
    object end
    // Reference: BrushComponent'Default__S1ChannelVolume.BrushComponent0'
    Components(0)=BrushComponent0
    bCollideActors=false
    begin object name=BrushComponent0 class=BrushComponent
        ReplacementPrimitive=none
        CollideActors=false
        BlockNonZeroExtent=false
    object end
    // Reference: BrushComponent'Default__S1ChannelVolume.BrushComponent0'
    CollisionComponent=BrushComponent0
}