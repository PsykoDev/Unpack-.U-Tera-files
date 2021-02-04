/*******************************************************************************
 * PhysicalMaterial generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PhysicalMaterial extends Object
    native(Physics)
    collapsecategories
    hidecategories(Object);

enum EPhysEffectType
{
    EPMET_Impact,
    EPMET_Slide,
    EPMET_MAX
};

var transient int MaterialIndex;
/** Surface properties */
var() float Friction;
var() float Restitution;
var() bool bForceConeFriction;
/** Enable support for different friction in different directions. */
var(Advanced) bool bEnableAnisotropicFriction;
/** Direction (in physics object local space) for FrictionV to be applied. */
var(Advanced) Vector AnisoFrictionDir;
/** Friction to be applied in AnisoFrictionDir - Friction will be used for the other direction. */
var(Advanced) float FrictionV;
/** Object properties */
var() float Density;
var() float AngularDamping;
var() float LinearDamping;
var() float MagneticResponse;
var() float WindResponse;
/** How hard an impact must be to trigger effect/sound */
var(Impact) float ImpactThreshold;
/** Min time between effect/sound being triggered */
var(Impact) float ImpactReFireDelay;
/** Particle effect to play at impact location */
var(Impact) ParticleSystem ImpactEffect;
/** Sound to play */
var(Impact) SoundCue ImpactSound;
/** How fast an object must slide to trigger effect/sound */
var(Slide) float SlideThreshold;
/** How long since last slide before sound/effect can be re-triggered */
var(Slide) float SlideReFireDelay;
/** Effect to place at contact position and enable while sliding */
var(Slide) ParticleSystem SlideEffect;
/** Looping sound to play while objects are sliding */
var(Slide) SoundCue SlideSound;
/** Sound cue to play when multiple fracture parts are dislodged from a mesh */
var(Fracture) SoundCue FractureSoundExplosion;
/** Sound cue to play when a single piece is removed from mesh. */
var(Fracture) SoundCue FractureSoundSingle;
/**  
 *The PhysicalMaterial objects now have a parent reference / pointer.  This allows
 *you to make single inheritance hierarchies of PhysicalMaterials.  Specifically
 *this allows one to set default data and then have subclasses over ride that data.
 *(e.g.  For all materials in the game we are going to say the default Impact Sound
 *is SoundA.  Now for a Tin Shed we can make a Metal Physical Material and set its
 *parent pointer to the Default Material.  And then for our Metal PhysicalMaterial
 *we say:  Play SoundB for Pistols and Rifles.  Leaving everything else blank, our
 *code can now traverse up the tree to the Default PhysicalMaterial and read the
 *values out of that.
 *
 *This allows for very specific and interesting behavior that is for the most part
 *completely in the hands of your content creators.
 *
 *A programmer is needed only to create the orig set of parameters and then it is
 *all data driven parameterization!
 */
var(Parent) PhysicalMaterial Parent;
var(PhysicalProperties) export editinline PhysicalMaterialPropertyBase PhysicalMaterialProperty;

// Export UPhysicalMaterial::execFindPhysEffectInfo(FFrame&, void* const)
native function PhysEffectInfo FindPhysEffectInfo(PhysicalMaterial.EPhysEffectType Type);

simulated function FindFractureSounds(out SoundCue OutSoundExplosion, out SoundCue OutSoundSingle)
{
    local PhysicalMaterial TestMat;

    OutSoundExplosion = none;
    OutSoundSingle = none;
    TestMat = self;
    J0x21:
    // End:0xEB [Loop If]
    if(((OutSoundExplosion == none) || OutSoundSingle == none) && TestMat != none)
    {
        // End:0x89
        if(OutSoundSingle == none)
        {
            OutSoundSingle = TestMat.FractureSoundSingle;
        }
        // End:0xC0
        if(OutSoundExplosion == none)
        {
            OutSoundExplosion = TestMat.FractureSoundExplosion;
        }
        TestMat = TestMat.Parent;
        // [Loop Continue]
        goto J0x21;
    }
    return;
    //return;    
}

simulated function PhysicalMaterialPropertyBase GetPhysicalMaterialProperty(class<PhysicalMaterialPropertyBase> DesiredClass)
{
    // End:0x4B
    if((PhysicalMaterialProperty != none) && ClassIsChildOf(PhysicalMaterialProperty.Class, DesiredClass))
    {
        return PhysicalMaterialProperty;
    }
    // End:0x88
    else
    {
        // End:0x86
        if(Parent != none)
        {
            return Parent.GetPhysicalMaterialProperty(DesiredClass);
        }
        // End:0x88
        else
        {
            return none;
        }
    }
    //return ReturnValue;    
}

defaultproperties
{
    Friction=0.70
    Restitution=0.30
    Density=1.0
    LinearDamping=0.010
}