/*******************************************************************************
 * AnimationCompressionAlgorithm_RemoveEverySecondKey generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimationCompressionAlgorithm_RemoveEverySecondKey extends AnimationCompressionAlgorithm
    native(Anim)
    hidecategories(Object);

/** Animations with fewer than MinKeys will not lose any keys. */
var() int MinKeys;
/**  
 *If bStartAtSecondKey is TRUE, remove keys 1,3,5,etc.
 * If bStartAtSecondKey is FALSE, remove keys 0,2,4,etc.
 */
var() bool bStartAtSecondKey;

defaultproperties
{
    MinKeys=10
    Description="Remove Every Second Key"
}