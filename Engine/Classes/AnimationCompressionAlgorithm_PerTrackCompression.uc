/*******************************************************************************
 * AnimationCompressionAlgorithm_PerTrackCompression generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimationCompressionAlgorithm_PerTrackCompression extends AnimationCompressionAlgorithm_RemoveLinearKeys
    native(Anim)
    hidecategories(Object,AnimationCompressionAlgorithm);

/** Maximum threshold to use when replacing a component with zero. Lower values retain more keys, but yield less compression. */
var(PerTrack) float MaxZeroingThreshold;
/** Maximum position difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression. */
var(PerTrack) float MaxPosDiffBitwise;
/** Maximum angle difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression. */
var(PerTrack) float MaxAngleDiffBitwise;
/** Which encoding formats is the per-track compressor allowed to try on rotation keys */
var(PerTrack) array<AnimSequence.AnimationCompressionFormat> AllowedRotationFormats;
/** Which encoding formats is the per-track compressor allowed to try on translation keys */
var(PerTrack) array<AnimSequence.AnimationCompressionFormat> AllowedTranslationFormats;
/** If TRUE, resample the animation to ResampleFramerate frames per second */
var(Resampling) bool bResampleAnimation;
/** If TRUE, adjust the error thresholds based on the 'height' within the skeleton */
var(AdaptiveError) bool bUseAdaptiveError;
/** If TRUE, uses MinEffectorDiff as the threhsold for end effectors */
var(AdaptiveError) bool bUseOverrideForEndEffectors;
/**  
 *If true, the adaptive error system will determine how much error to allow for each track, based on the
 * error introduced in end effectors due to errors in the track.
 */
var(AdaptiveError2) bool bUseAdaptiveError2;
/** When bResampleAnimation is true, this defines the desired framerate */
var(Resampling) float ResampledFramerate<ClampMin=1.0|ClampMax=30.0|EditCondition=bResampleAnimation>;
/** Animations with fewer keys than MinKeysForResampling will not be resampled. */
var(Resampling) int MinKeysForResampling;
/** A bias added to the track height before using it to calculate the adaptive error */
var(AdaptiveError) int TrackHeightBias;
/**  
 *Reduces the error tolerance the further up the tree that a key occurs
 *    EffectiveErrorTolerance = Max(BaseErrorTolerance / Power(ParentingDivisor, Max(Height+Bias,0) ParentingDivisorExponent), ZeroingThreshold)
 * Only has an effect bUseAdaptiveError is TRUE
 */
var(AdaptiveError) float ParentingDivisor<ClampMin=1.0>;
/**  
 *Reduces the error tolerance the further up the tree that a key occurs
 *    EffectiveErrorTolerance = Max(BaseErrorTolerance / Power(ParentingDivisor, Max(Height+Bias,0) ParentingDivisorExponent), ZeroingThreshold)
 * Only has an effect bUseAdaptiveError is TRUE
 */
var(AdaptiveError) float ParentingDivisorExponent<ClampMin=0.1>;
/**  
 *This ratio determines how much error in end effector rotation can come from a given track's rotation error or translation error.
 * If 1, all of it must come from rotation error, if 0.5, half can come from each, and if 0.0, all must come from translation error.
 */
var(AdaptiveError2) float RotationErrorSourceRatio<ClampMin=0.0|ClampMax=1.0>;
/**  
 *This ratio determines how much error in end effector translation can come from a given track's rotation error or translation error.
 * If 1, all of it must come from rotation error, if 0.5, half can come from each, and if 0.0, all must come from translation error.
 */
var(AdaptiveError2) float TranslationErrorSourceRatio<ClampMin=0.0|ClampMax=1.0>;
/** A fraction that determines how much of the total error budget can be introduced by any particular track */
var(AdaptiveError2) float MaxErrorPerTrackRatio<ClampMin=0.0|ClampMax=1.0>;
var float PerturbationProbeSize;
var native const transient Pointer PerReductionCachedData;

defaultproperties
{
    MaxZeroingThreshold=0.00020
    MaxPosDiffBitwise=0.0070
    MaxAngleDiffBitwise=0.0020
    AllowedRotationFormats(0)=85
    AllowedRotationFormats(1)=0
    AllowedTranslationFormats(0)=85
    AllowedTranslationFormats(1)=0
    AllowedTranslationFormats(2)=0
    ResampledFramerate=15.0
    MinKeysForResampling=10
    TrackHeightBias=1
    ParentingDivisor=1.0
    ParentingDivisorExponent=1.0
    RotationErrorSourceRatio=0.80
    TranslationErrorSourceRatio=0.80
    MaxErrorPerTrackRatio=0.30
    PerturbationProbeSize=0.0010
    bRetarget=false
    bActuallyFilterLinearKeys=false
    Description="Compress each track independently"
}