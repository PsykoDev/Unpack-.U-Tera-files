/*******************************************************************************
 * Interface_NavMeshPathObstacle generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
interface Interface_NavMeshPathObstacle extends Interface
    abstract
    native(AI);

enum EEdgeHandlingStatus
{
    EHS_AddedBothDirs,
    EHS_Added0to1,
    EHS_Added1to0,
    EHS_AddedNone,
    EHS_MAX
};
