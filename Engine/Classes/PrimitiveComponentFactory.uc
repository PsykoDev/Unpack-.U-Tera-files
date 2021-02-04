/*******************************************************************************
 * PrimitiveComponentFactory generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PrimitiveComponentFactory extends Object
    abstract
    native;

/** Collision flags. */
var(Collision) const bool CollideActors;
/** Collision flags. */
var(Collision) const bool BlockActors;
/** Collision flags. */
var(Collision) const bool BlockZeroExtent;
/** Collision flags. */
var(Collision) const bool BlockNonZeroExtent;
/** Collision flags. */
var(Collision) const bool BlockRigidBody;
/** Rendering flags. */
var(Rendering) bool HiddenGame;
/** Rendering flags. */
var(Rendering) bool HiddenEditor;
/** Rendering flags. */
var(Rendering) bool CastShadow;