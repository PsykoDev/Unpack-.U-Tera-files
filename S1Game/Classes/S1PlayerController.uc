/*******************************************************************************
 * S1PlayerController generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1PlayerController extends PlayerController
    native
    config(Game)
    hidecategories(Navigation);

defaultproperties
{
    CameraClass=class'S1PlayerCamera'
    begin object name=CollisionCylinder class=CylinderComponent
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__S1PlayerController.CollisionCylinder'
    CylinderComponent=CollisionCylinder
    begin object name=CollisionCylinder class=CylinderComponent
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__S1PlayerController.CollisionCylinder'
    Components(0)=CollisionCylinder
    begin object name=CollisionCylinder class=CylinderComponent
        ReplacementPrimitive=none
    object end
    // Reference: CylinderComponent'Default__S1PlayerController.CollisionCylinder'
    CollisionComponent=CollisionCylinder
}