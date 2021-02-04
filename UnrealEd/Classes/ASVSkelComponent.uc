/*******************************************************************************
 * ASVSkelComponent generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ASVSkelComponent extends SkeletalMeshComponent
    transient
    native
    editinlinenew
    hidecategories(Object);

var native const Pointer AnimSetViewerPtr;
var bool bRenderRawSkeleton;
var bool bShowSoftBodyTetra;
var bool bDrawMesh;
var transient bool bDrawBoneInfluences;
var Color BoneColor;
var native transient int ColorRenderMode;
var transient array<int> BonesOfInterest;
var transient array<MaterialInterface> SkelMaterials;

defaultproperties
{
    bShowSoftBodyTetra=true
    bDrawMesh=true
    BoneColor=(R=230,G=230,B=255,A=255)
    ReplacementPrimitive=none
}