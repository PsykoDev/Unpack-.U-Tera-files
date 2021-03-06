/*******************************************************************************
 * SeqAct_Teleport generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_Teleport extends SequenceAction
    hidecategories(Object);

/** If true, actor rotation will be aligned with destination actor */
var() bool bUpdateRotation;
/** If TRUE, check to see if this actor overlaps any other colliding actors and don't teleport there if a better option exists */
var() bool bCheckOverlap;
/** If actor is more than this far away, it will be teleported. Ignored if < 0 */
var() float TeleportDistance;
/** If actor is NOT in one of these volumes, it will be teleported */
var() array<Volume> TeleportVolumes;

static final function bool ShouldTeleport(Actor TestActor, Vector TeleportLocation, optional float TeleportDist, optional array<Volume> Volumes)
{
    local int VolumeIdx;

    // End:0x60
    if((TeleportDist > 0.0) && VSizeSq(TestActor.Location - TeleportLocation) < (TeleportDist * TeleportDist))
    {
        return false;
    }
    // End:0xF3
    else
    {
        // End:0xF3
        if(Volumes.Length > 0)
        {
            VolumeIdx = 0;
            J0x7B:
            // End:0xF3 [Loop If]
            if(VolumeIdx < Volumes.Length)
            {
                // End:0xE5
                if((Volumes[VolumeIdx] != none) && Volumes[VolumeIdx].Encompasses(TestActor))
                {
                    return false;
                }
                ++ VolumeIdx;
                // [Loop Continue]
                goto J0x7B;
            }
        }
    }
    return true;
    //return ReturnValue;    
}

static event int GetObjClassVersion()
{
    return super(SequenceObject).GetObjClassVersion() + 1;
    //return ReturnValue;    
}

defaultproperties
{
    bUpdateRotation=true
    TeleportDistance=-1.0
    VariableLinks(0)=(ExpectedType=class'SeqVar_Object',LinkedVariables=none,LinkDesc="Target",LinkVar=None,PropertyName=Targets,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(1)=(ExpectedType=class'SeqVar_Object',LinkedVariables=none,LinkDesc="Destination",LinkVar=None,PropertyName=None,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(2)=(ExpectedType=class'SeqVar_Object',LinkedVariables=none,LinkDesc="Teleport Volumes",LinkVar=None,PropertyName=TeleportVolumes,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=true,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Teleport"
    ObjCategory="Actor"
}