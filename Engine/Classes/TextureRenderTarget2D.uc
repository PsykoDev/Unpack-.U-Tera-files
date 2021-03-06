/*******************************************************************************
 * TextureRenderTarget2D generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class TextureRenderTarget2D extends TextureRenderTarget
    native(Texture)
    hidecategories(Object,Texture);

/** The width of the texture. */
var() const int SizeX;
/** The height of the texture. */
var() const int SizeY;
var const Texture.EPixelFormat Format;
/** The addressing mode to use for the X axis. */
var() Texture.TextureAddress AddressX;
/** The addressing mode to use for the Y axis. */
var() Texture.TextureAddress AddressY;
var private const LinearColor ClearColor;
/** True to force linear gamma space for this render target */
var() const transient bool bForceLinearGamma;

// Export UTextureRenderTarget2D::execCreate(FFrame&, void* const)
native static final function TextureRenderTarget2D Create(int InSizeX, int InSizeY, optional Texture.EPixelFormat InFormat, optional LinearColor InClearColor, optional bool bOnlyRenderOnce)
{
    InFormat = 2;                                    
}

defaultproperties
{
    Format=EPixelFormat.PF_A8R8G8B8
    ClearColor=(R=0.0,G=1.0,B=0.0,A=1.0)
}