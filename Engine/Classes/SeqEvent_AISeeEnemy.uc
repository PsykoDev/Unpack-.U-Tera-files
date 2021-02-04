/*******************************************************************************
 * SeqEvent_AISeeEnemy generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqEvent_AISeeEnemy extends SequenceEvent
    native(Sequence)
    hidecategories(Object);

/** Max distance before allowing activation */
var() float MaxSightDistance;

defaultproperties
{
    ObjName="See Enemy"
    ObjCategory="AI"
}