/*******************************************************************************
 * FaceFXAnimSet generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class FaceFXAnimSet extends Object
    native
    hidecategories(Object);

/**  
 *Default FaceFXAsset to use when editing this FaceFXAnimSet etc. 
 *  Is the one that was used as the basis for creating this AnimSet.
 */
var() editoronly const FaceFXAsset DefaultFaceFXAsset;
var native const Pointer InternalFaceFXAnimSet;
var native const array<byte> RawFaceFXAnimSetBytes;
var native const array<byte> RawFaceFXMiniSessionBytes;
var editoronly notforconsole array<editoronly SoundCue> ReferencedSoundCues;
var int NumLoadErrors;
