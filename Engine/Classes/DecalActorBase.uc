/*******************************************************************************
 * DecalActorBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DecalActorBase extends Actor
    abstract
    native(Decal)
    notplaceable
    hidecategories(Navigation)
    classgroup(Decals)
    implements(EditorLinkSelectionInterface);

var private native const noexport Pointer VfTable_IEditorLinkSelectionInterface;
var() const editconst export editinline DecalComponent Decal;

defaultproperties
{
    begin object name=NewDecalComponent class=DecalComponent
        bStaticDecal=true
        DecalTransform=EDecalTransform.DecalTransform_OwnerAbsolute
        ReplacementPrimitive=none
    object end
    // Reference: DecalComponent'Default__DecalActorBase.NewDecalComponent'
    Decal=NewDecalComponent
    begin object name=NewDecalComponent class=DecalComponent
        bStaticDecal=true
        DecalTransform=EDecalTransform.DecalTransform_OwnerAbsolute
        ReplacementPrimitive=none
    object end
    // Reference: DecalComponent'Default__DecalActorBase.NewDecalComponent'
    Components(0)=NewDecalComponent
    begin object name=Sprite class=SpriteComponent
        Sprite=Texture2D'EditorResources.S_DecalActorIcon'
        SpriteCategoryName=Decals
        ReplacementPrimitive=none
        HiddenGame=true
        AlwaysLoadOnClient=false
        AlwaysLoadOnServer=false
        Scale=0.150
    object end
    // Reference: SpriteComponent'Default__DecalActorBase.Sprite'
    Components(1)=Sprite
    begin object name=ArrowComponent0 class=ArrowComponent
        bTreatAsASprite=true
        SpriteCategoryName=Decals
        ReplacementPrimitive=none
    object end
    // Reference: ArrowComponent'Default__DecalActorBase.ArrowComponent0'
    Components(2)=ArrowComponent0
    TickGroup=ETickingGroup.TG_DuringAsyncWork
    bStatic=true
    bMovable=false
}