/*******************************************************************************
 * SeqAct_SetMesh generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_SetMesh extends SequenceAction
    native(Sequence)
    hidecategories(Object);

enum EMeshType
{
    MeshType_StaticMesh,
    MeshType_SkeletalMesh,
    MeshType_MAX
};

/** New SkeletalMesh to use for the target actor */
var() SkeletalMesh NewSkeletalMesh;
/** New StaticMesh to use for the target actor */
var() StaticMesh NewStaticMesh;
/** Type of mesh to set */
var() SeqAct_SetMesh.EMeshType MeshType;
/** if True then the mesh will be treated as if it is movable */
var() bool bIsAllowedToMove;
/** if True then any decals attached to the previous mesh will be reattached to the new mesh */
var() bool bAllowDecalsToReattach;

defaultproperties
{
    ObjName="Set Mesh"
    ObjCategory="Actor"
}