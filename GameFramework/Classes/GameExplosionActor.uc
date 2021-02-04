/*******************************************************************************
 * GameExplosionActor generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GameExplosionActor extends Actor
    abstract
    native
    notplaceable
    hidecategories(Navigation);

var protected transient bool bHasExploded;
/**  
 *True if this actor can explode more than once and doesn't die after an explosion.
 *       Used by placeable actors whose explosions are triggered via matinee
 */
var() protected bool bExplodeMoreThanOnce;
var bool bTrackExplosionParticleSystemLifespan;
var bool bDrawDebug;
var protected export editinline transient PointLightComponent ExplosionLight;
var protected export editinline transient RadialBlurComponent ExplosionRadialBlur;
var protected transient float LightFadeTime;
var protected transient float LightFadeTimeRemaining;
var protected transient float LightInitialBrightness;
var protected transient float RadialBlurFadeTime;
var protected transient float RadialBlurFadeTimeRemaining;
var protected transient float RadialBlurMaxBlurAmount;
var GameExplosion ExplosionTemplate;
var protected export editinline RB_RadialImpulseComponent RadialImpulseComponent;
var Controller InstigatorController;
var Actor HitActorFromPhysMaterialTrace;
var Vector HitLocationFromPhysMaterialTrace;
var Actor Attachee;
var Controller AttacheeController;
var transient float DirectionalExplosionMinDot;
var transient Vector ExplosionDirection;

replication
{
    // Pos:0x000
    if(bNetInitial)
        ExplosionDirection
}

event PreBeginPlay()
{
    super.PreBeginPlay();
    // End:0x52
    if((Instigator != none) && InstigatorController == none)
    {
        InstigatorController = Instigator.Controller;
    }
    //return;    
}

protected simulated function PhysicalMaterial GetPhysicalMaterial()
{
    local PhysicalMaterial Retval;
    local Vector TraceStart, TraceDest, OutHitNorm, ExploNormal;
    local TraceHitInfo OutHitInfo;

    TraceStart = Location + (vect(0.0, 0.0, 1.0) * 256.0);
    TraceDest = Location - (vect(0.0, 0.0, 1.0) * 16.0);
    HitActorFromPhysMaterialTrace = Trace(HitLocationFromPhysMaterialTrace, OutHitNorm, TraceDest, TraceStart, true, vect(0.0, 0.0, 0.0), OutHitInfo, 1 | 2);
    // End:0xE7
    if(FluidSurfaceActor(HitActorFromPhysMaterialTrace) != none)
    {
        Retval = OutHitInfo.PhysMaterial;
        return Retval;
    }
    ExploNormal = vector(Rotation);
    TraceStart = Location + (ExploNormal * 8.0);
    TraceDest = TraceStart - (ExploNormal * 64.0);
    HitActorFromPhysMaterialTrace = Trace(HitLocationFromPhysMaterialTrace, OutHitNorm, TraceDest, TraceStart, true, vect(0.0, 0.0, 0.0), OutHitInfo, 1);
    // End:0x1C4
    if(HitActorFromPhysMaterialTrace != none)
    {
        Retval = OutHitInfo.PhysMaterial;
    }
    return Retval;
    //return ReturnValue;    
}

simulated function bool DoFullDamageToActor(Actor Victim)
{
    return ((Victim.bStatic || Victim.IsA('KActor')) || Victim.IsA('InterpActor')) || Victim.IsA('FracturedStaticMeshPart');
    //return ReturnValue;    
}

protected simulated function bool IsBehindExplosion(Actor A)
{
    // End:0x77
    if(ExplosionTemplate.bDirectionalExplosion && !IsZero(ExplosionDirection))
    {
        return (ExplosionDirection Dot Normal(A.Location - Location)) < DirectionalExplosionMinDot;
    }
    return false;
    //return ReturnValue;    
}

// Export UGameExplosionActor::execBoxDistanceToPoint(FFrame&, void* const)
native static final function float BoxDistanceToPoint(Vector Start, Box BBox);

protected simulated function bool DoExplosionDamage(bool bCauseDamage, bool bCauseEffects)
{
    local Actor Victim, HitActor;
    local Vector HitL, HitN, Dir, BBoxCenter;
    local bool bDamageBlocked, bDoFullDamage, bCauseFractureEffects, bCausePawnEffects, bCauseDamageEffects, bHurtSomeone;

    local float ColRadius, ColHeight, CheckRadius, VictimDist;
    local array<Actor> VictimsList;
    local Box BBox;
    local Controller ModInstigator;
    local GamePawn VictimPawn;
    local FracturedStaticMeshActor FracActor;
    local byte WantPhysChunksAndParticles;
    local TraceHitInfo HitInfo;
    local KActorFromStatic NewKActor;
    local editinline StaticMeshComponent HitStaticMesh;

    bCauseFractureEffects = (bCauseEffects && WorldInfo.NetMode != NM_DedicatedServer) && ExplosionTemplate.bCausesFracture;
    bCauseEffects = bCauseEffects && WorldInfo.NetMode != NM_Client;
    bHurtSomeone = false;
    CheckRadius = GetEffectCheckRadius(bCauseDamage, bCauseFractureEffects, bCauseEffects);
    // End:0xBEE
    if(CheckRadius > 0.0)
    {
        // End:0xA3F
        foreach CollidingActors(class'Actor', Victim, CheckRadius, Location, ExplosionTemplate.bUseOverlapCheck,, HitInfo)
        {
            // End:0x220
            if(Victim.bWorldGeometry)
            {
                HitStaticMesh = StaticMeshComponent(HitInfo.HitComponent);
                // End:0x220
                if((HitStaticMesh != none) && HitStaticMesh.CanBecomeDynamic())
                {
                    NewKActor = class'KActorFromStatic'.static.MakeDynamic(HitStaticMesh);
                    // End:0x220
                    if(NewKActor != none)
                    {
                        Victim = NewKActor;
                    }
                }
            }
            // End:0xA3E
            if(((((((Victim != self) && !Victim.bWorldGeometry || Victim.bCanBeDamaged) && NavigationPoint(Victim) == none) && Victim != ExplosionTemplate.ActorToIgnoreForDamage) && !ExplosionTemplate.bIgnoreInstigator || Victim != Instigator) && !ClassIsChildOf(Victim.Class, ExplosionTemplate.ActorClassToIgnoreForDamage)) && !IsBehindExplosion(Victim))
            {
                VictimPawn = GamePawn(Victim);
                Victim.GetComponentsBoundingBox(BBox);
                // End:0x3EF
                if(ExplosionTemplate.bUseOverlapCheck)
                {
                    VictimDist = BoxDistanceToPoint(Location, BBox);
                }
                // End:0x424
                else
                {
                    VictimDist = VSize(Location - Victim.Location);
                }
                // End:0x61F
                if(bCauseFractureEffects && VictimPawn == none)
                {
                    FracActor = FracturedStaticMeshActor(Victim);
                    // End:0x61F
                    if(((((FracActor != none) && VictimDist < ExplosionTemplate.FractureMeshRadius) && FracActor.Physics == 0) && FracActor.IsFracturedByDamageType(ExplosionTemplate.MyDamageType)) && FracActor.FractureEffectIsRelevant(false, Instigator, WantPhysChunksAndParticles))
                    {
                        FracActor.NotifyHitByExplosion(InstigatorController, ExplosionTemplate.Damage, ExplosionTemplate.MyDamageType);
                        FracActor.BreakOffPartsInRadius(Location, ExplosionTemplate.FractureMeshRadius, ExplosionTemplate.FracturePartVel, ((WantPhysChunksAndParticles == 1) ? true : false));
                    }
                }
                bCausePawnEffects = (bCauseEffects && VictimPawn != none) && !VictimPawn.InGodMode();
                bCauseDamageEffects = bCauseDamage && VictimDist < ExplosionTemplate.DamageRadius;
                // End:0x6DF
                if(DoFullDamageToActor(Victim))
                {
                    bDamageBlocked = false;
                    bDoFullDamage = true;
                }
                // End:0x7C6
                else
                {
                    // End:0x7C6
                    if(bCausePawnEffects || bCauseDamageEffects)
                    {
                        BBoxCenter = (BBox.Min + BBox.Max) * 0.50;
                        HitActor = Trace(HitL, HitN, BBoxCenter, Location + vect(0.0, 0.0, 20.0), false,,, 1);
                        bDamageBlocked = (HitActor != none) && HitActor != Victim;
                        bDoFullDamage = false;
                    }
                }
                // End:0xA3E
                if(!bDamageBlocked)
                {
                    // End:0x9E9
                    if(bCauseDamageEffects)
                    {
                        ModInstigator = InstigatorController;
                        // End:0x8B0
                        if((((AttacheeController != none) && AttacheeController.PlayerReplicationInfo != none) && VictimPawn != none) && !WorldInfo.GRI.OnSameTeam(AttacheeController, VictimPawn.Controller))
                        {
                            ModInstigator = AttacheeController;
                        }
                        Victim.TakeRadiusDamage(ModInstigator, ExplosionTemplate.Damage, ExplosionTemplate.DamageRadius, ExplosionTemplate.MyDamageType, ExplosionTemplate.MomentumTransferScale, Location, bDoFullDamage, ((Owner != none) ? Owner : self), ExplosionTemplate.DamageFalloffExponent);
                        VictimsList[VictimsList.Length] = Victim;
                        // End:0x9E9
                        if(Victim.IsA('Pawn'))
                        {
                            bHurtSomeone = true;
                        }
                    }
                    // End:0xA15
                    if(bCausePawnEffects)
                    {
                        SpecialPawnEffectsFor(VictimPawn, VictimDist);
                        // End:0xA3E
                        continue;
                    }
                    // End:0xA3E
                    if(bCauseEffects)
                    {
                        SpecialCringeEffectsFor(Victim, VictimDist);
                    }
                }
            }            
        }        
        // End:0xBEE
        if(ExplosionTemplate.bFullDamageToAttachee && VictimsList.Find(Attachee) == -1)
        {
            Victim = Attachee;
            Victim.GetBoundingCylinder(ColRadius, ColHeight);
            Dir = Normal(Victim.Location - Location);
            Victim.TakeDamage(int(ExplosionTemplate.Damage), InstigatorController, Victim.Location - ((0.50 * (ColHeight + ColRadius)) * Dir), ExplosionTemplate.MomentumTransferScale * Dir, ExplosionTemplate.MyDamageType,, ((Owner != none) ? Owner : self));
        }
    }
    return bHurtSomeone;
    //return ReturnValue;    
}

function float GetEffectCheckRadius(bool bCauseDamage, bool bCauseFractureEffects, bool bCauseEffects)
{
    local float CheckRadius;

    // End:0x35
    if(bCauseFractureEffects)
    {
        CheckRadius = ExplosionTemplate.FractureMeshRadius;
    }
    // End:0x75
    if(bCauseDamage)
    {
        CheckRadius = FMax(CheckRadius, ExplosionTemplate.DamageRadius);
    }
    // End:0xE8
    if(bCauseEffects)
    {
        CheckRadius = FMax(CheckRadius, ExplosionTemplate.KnockDownRadius);
        CheckRadius = FMax(CheckRadius, ExplosionTemplate.CringeRadius);
    }
    return CheckRadius;
    //return ReturnValue;    
}

protected function SpecialPawnEffectsFor(GamePawn VictimPawn, float VictimDist)
{
    //return;    
}

protected function SpecialCringeEffectsFor(Actor Victim, float VictimDist)
{
    //return;    
}

protected simulated function UpdateExplosionTemplateWithPerMaterialFX(PhysicalMaterial PhysMaterial)
{
    //return;    
}

simulated function SpawnExplosionParticleSystem(ParticleSystem Template)
{
    //return;    
}

simulated function SpawnExplosionDecal()
{
    //return;    
}

simulated function SpawnExplosionFogVolume()
{
    //return;    
}

simulated function Explode(GameExplosion NewExplosionTemplate, optional Vector Direction)
{
    local float HowLongToLive;
    local PhysicalMaterial PhysMat;
    local bool bHurtSomeone;

    ExplosionTemplate = NewExplosionTemplate;
    // End:0x7C
    if(ExplosionTemplate.bDirectionalExplosion)
    {
        ExplosionDirection = Normal(Direction);
        DirectionalExplosionMinDot = Cos(ExplosionTemplate.DirectionalExplosionAngleDeg * 0.017453290);
    }
    HowLongToLive = (LifeSpan + ExplosionTemplate.DamageDelay) + 0.010;
    // End:0x98B
    if(!bHasExploded || bExplodeMoreThanOnce)
    {
        // End:0x12C
        if(ExplosionTemplate.bAllowPerMaterialFX)
        {
            PhysMat = GetPhysicalMaterial();
            // End:0x12C
            if(PhysMat != none)
            {
                UpdateExplosionTemplateWithPerMaterialFX(PhysMat);
            }
        }
        // End:0x75A
        if(WorldInfo.NetMode != NM_DedicatedServer)
        {
            // End:0x206
            if(ExplosionTemplate.ParticleEmitterTemplate != none)
            {
                SpawnExplosionParticleSystem(ExplosionTemplate.ParticleEmitterTemplate);
                // End:0x206
                if(bTrackExplosionParticleSystemLifespan == true)
                {
                    HowLongToLive = FMax(ExplosionTemplate.ParticleEmitterTemplate.GetMaxLifespan(0.0) + 0.10, HowLongToLive);
                }
            }
            SpawnExplosionDecal();
            // End:0x38E
            if(ExplosionTemplate.ExploLight != none)
            {
                // End:0x256
                if(ExplosionLight != none)
                {
                    DetachComponent(ExplosionLight);
                }
                ExplosionLight = new (self) class'PointLightComponent' (ExplosionTemplate.ExploLight);
                // End:0x38E
                if(ExplosionLight != none)
                {
                    AttachComponent(ExplosionLight);
                    ExplosionLight.SetEnabled(true);
                    SetTimer(ExplosionTemplate.ExploLightFadeOutTime);
                    LightFadeTime = ExplosionTemplate.ExploLightFadeOutTime;
                    LightFadeTimeRemaining = LightFadeTime;
                    HowLongToLive = FMax(LightFadeTime + 0.20, HowLongToLive);
                    LightInitialBrightness = ExplosionTemplate.ExploLight.Brightness;
                }
            }
            // End:0x52E
            if(ExplosionTemplate.ExploRadialBlur != none)
            {
                // End:0x52E
                if((ExplosionTemplate.bPerformRadialBlurRelevanceCheck == false) || ImpactEffectIsRelevant(Instigator, Location + vect(0.0, 0.0, 1.0), false, 4000.0, 350.0, true))
                {
                    // End:0x435
                    if(ExplosionRadialBlur != none)
                    {
                        DetachComponent(ExplosionRadialBlur);
                    }
                    ExplosionRadialBlur = new (self) class'RadialBlurComponent' (ExplosionTemplate.ExploRadialBlur);
                    // End:0x52E
                    if(ExplosionRadialBlur != none)
                    {
                        AttachComponent(ExplosionRadialBlur);
                        RadialBlurFadeTime = ExplosionTemplate.ExploRadialBlurFadeOutTime;
                        RadialBlurFadeTimeRemaining = RadialBlurFadeTime;
                        RadialBlurMaxBlurAmount = ExplosionTemplate.ExploRadialBlurMaxBlur;
                        SetTimer(FMax(RadialBlurFadeTime, LightFadeTime));
                        HowLongToLive = FMax(RadialBlurFadeTime + 0.20, HowLongToLive);
                    }
                }
            }
            DoExplosionCameraEffects();
            // End:0x6E7
            if((ExplosionTemplate.MyDamageType != none) && ExplosionTemplate.MyDamageType.default.RadialDamageImpulse > 0.0)
            {
                RadialImpulseComponent.ImpulseRadius = FMax(ExplosionTemplate.DamageRadius, ExplosionTemplate.KnockDownRadius);
                RadialImpulseComponent.ImpulseStrength = ExplosionTemplate.MyDamageType.default.RadialDamageImpulse;
                RadialImpulseComponent.bVelChange = ExplosionTemplate.MyDamageType.default.bRadialDamageVelChange;
                RadialImpulseComponent.ImpulseFalloff = 0;
                RadialImpulseComponent.FireImpulse(Location);
            }
            SpawnExplosionFogVolume();
            // End:0x75A
            if(FluidSurfaceActor(HitActorFromPhysMaterialTrace) != none)
            {
                FluidSurfaceActor(HitActorFromPhysMaterialTrace).FluidComponent.ApplyForce(HitLocationFromPhysMaterialTrace, 1024.0, 20.0, false);
            }
        }
        bHurtSomeone = false;
        // End:0x80B
        if(ExplosionTemplate.Damage > 0.0)
        {
            // End:0x7F1
            if(ExplosionTemplate.DamageDelay > 0.0)
            {
                DoExplosionDamage(false, true);
                SetTimer(ExplosionTemplate.DamageDelay, false, 'DelayedExplosionDamage');
            }
            // End:0x808
            else
            {
                bHurtSomeone = DoExplosionDamage(true, true);
            }
        }
        // End:0x817
        else
        {
            DoExplosionDamage(false, true);
        }
        // End:0x904
        if(WorldInfo.NetMode != NM_DedicatedServer)
        {
            // End:0x8AB
            if(bHurtSomeone && ExplosionTemplate.ExplosionSoundHurtSomeone != none)
            {
                PlaySound(ExplosionTemplate.ExplosionSoundHurtSomeone, true, true, false, Location, true);
            }
            // End:0x904
            else
            {
                // End:0x904
                if(ExplosionTemplate.ExplosionSound != none)
                {
                    PlaySound(ExplosionTemplate.ExplosionSound, true, true, false, Location, true);
                }
            }
        }
        // End:0x921
        if(Role == ROLE_Authority)
        {
            MakeNoise(1.0);
        }
        // End:0x938
        if(bDrawDebug)
        {
            DrawDebug();
        }
        bHasExploded = true;
        // End:0x98B
        if(!bPendingDelete && !bDeleteMe)
        {
            LifeSpan = ((bExplodeMoreThanOnce) ? 0.0 : HowLongToLive);
        }
    }
    //return;    
}

simulated function DelayedExplosionDamage()
{
    DoExplosionDamage(true, false);
    //return;    
}

simulated function DrawDebug()
{
    local Color C;
    local float Angle;

    // End:0x128
    if(ExplosionTemplate.bDirectionalExplosion)
    {
        C.R = 255;
        C.G = 128;
        C.B = 16;
        C.A = 255;
        Angle = ExplosionTemplate.DirectionalExplosionAngleDeg * 0.017453290;
        DrawDebugCone(Location, ExplosionDirection, ExplosionTemplate.DamageRadius, Angle, Angle, 8, C, true);
    }
    // End:0x162
    else
    {
        DrawDebugSphere(Location, ExplosionTemplate.DamageRadius, 10, 255, 128, 16, true);
    }
    //return;    
}

simulated function DoExplosionCameraEffects()
{
    local CameraShake Shake;
    local float ShakeScale;
    local PlayerController PC;

    // End:0x256
    foreach WorldInfo.LocalPlayerControllers(class'PlayerController', PC)
    {
        // End:0x255
        if(PC.PlayerCamera != none)
        {
            Shake = ChooseCameraShake(Location, PC);
            // End:0x255
            if(Shake != none)
            {
                ShakeScale = PC.PlayerCamera.CalcRadialShakeScale(PC.PlayerCamera, Location, ExplosionTemplate.CamShakeInnerRadius, ExplosionTemplate.CamShakeOuterRadius, ExplosionTemplate.CamShakeFalloff);
                // End:0x203
                if(ExplosionTemplate.bOrientCameraShakeTowardsEpicenter)
                {
                    PC.ClientPlayCameraShake(Shake, ShakeScale, ExplosionTemplate.bAutoControllerVibration, 2, rotator(Location - PC.ViewTarget.Location));
                    // End:0x255
                    continue;
                }
                PC.ClientPlayCameraShake(Shake, ShakeScale, ExplosionTemplate.bAutoControllerVibration);
            }
        }        
    }    
    SpawnCameraLensEffects();
    //return;    
}

simulated function SpawnCameraLensEffects()
{
    local PlayerController PC;

    // End:0x179
    if(ExplosionTemplate.CameraLensEffect != none)
    {
        // End:0x178
        foreach WorldInfo.LocalPlayerControllers(class'PlayerController', PC)
        {
            // End:0x177
            if((((PC.Pawn != none) && VSize(PC.Pawn.Location - Location) < ExplosionTemplate.CameraLensEffectRadius) && PC.IsAimingAt(self, 0.10)) && !IsBehindExplosion(PC.Pawn))
            {
                PC.ClientSpawnCameraLensEffect(ExplosionTemplate.CameraLensEffect);
            }            
        }        
    }
    //return;    
}

protected simulated function CameraShake ChooseCameraShake(Vector Epicenter, PlayerController PC)
{
    local Vector CamX, CamY, CamZ, ToEpicenter;
    local float FwdDot, RtDot;
    local CameraShake ChosenShake;
    local Rotator NoPitchRot;

    // End:0x44
    if(ExplosionTemplate.bOrientCameraShakeTowardsEpicenter)
    {
        return ExplosionTemplate.CamShake;
    }
    // End:0x2C7
    else
    {
        // End:0x2C7
        if(((ExplosionTemplate.CamShake_Left != none) || ExplosionTemplate.CamShake_Right != none) || ExplosionTemplate.CamShake_Rear != none)
        {
            ToEpicenter = Epicenter - PC.PlayerCamera.Location;
            ToEpicenter.Z = 0.0;
            ToEpicenter = Normal(ToEpicenter);
            NoPitchRot = PC.PlayerCamera.Rotation;
            NoPitchRot.Pitch = 0;
            GetAxes(NoPitchRot, CamX, CamY, CamZ);
            FwdDot = CamX Dot ToEpicenter;
            // End:0x210
            if(FwdDot > 0.7070)
            {
                ChosenShake = ExplosionTemplate.CamShake;
            }
            // End:0x2C7
            else
            {
                // End:0x29F
                if(FwdDot > -0.7070)
                {
                    RtDot = CamY Dot ToEpicenter;
                    ChosenShake = ((RtDot > 0.0) ? ExplosionTemplate.CamShake_Right : ExplosionTemplate.CamShake_Left);
                }
                // End:0x2C7
                else
                {
                    ChosenShake = ExplosionTemplate.CamShake_Rear;
                }
            }
        }
    }
    // End:0x2FE
    if(ChosenShake == none)
    {
        ChosenShake = ExplosionTemplate.CamShake;
    }
    return ChosenShake;
    //return ReturnValue;    
}

defaultproperties
{
    begin object name=ImpulseComponent0 class=RB_RadialImpulseComponent
        ReplacementPrimitive=none
    object end
    // Reference: RB_RadialImpulseComponent'Default__GameExplosionActor.ImpulseComponent0'
    RadialImpulseComponent=ImpulseComponent0
    begin object name=ImpulseComponent0 class=RB_RadialImpulseComponent
        ReplacementPrimitive=none
    object end
    // Reference: RB_RadialImpulseComponent'Default__GameExplosionActor.ImpulseComponent0'
    Components(0)=ImpulseComponent0
}