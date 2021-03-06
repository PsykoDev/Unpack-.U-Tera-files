/*******************************************************************************
 * MorphNodeWeight generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MorphNodeWeight extends MorphNodeWeightBase
    native(Anim)
    hidecategories(Object,Object,Object,Object);

var float NodeWeight;

// Export UMorphNodeWeight::execSetNodeWeight(FFrame&, void* const)
native function SetNodeWeight(float NewWeight);

defaultproperties
{
    NodeConns(0)=(ChildNodes=none,ConnName=In,DrawY=0)
    bDrawSlider=true
}