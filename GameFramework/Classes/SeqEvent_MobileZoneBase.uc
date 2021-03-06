/*******************************************************************************
 * SeqEvent_MobileZoneBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqEvent_MobileZoneBase extends SeqEvent_MobileBase
    abstract
    native
    hidecategories(Object);

/** Holds the name of the zone we want to be assoicated with */
var() string TargetZoneName;

event AddToMobileInput(MobilePlayerInput MPI)
{
    local MobileInputZone Zone;

    Zone = MPI.FindZone(TargetZoneName);
    // End:0x61
    if(Zone != none)
    {
        Zone.AddKismetEventHandler(self);
    }
    //return;    
}
