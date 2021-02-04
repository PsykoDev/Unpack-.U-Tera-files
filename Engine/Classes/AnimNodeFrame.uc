/*******************************************************************************
 * AnimNodeFrame generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AnimNodeFrame extends AnimObject
    native(Anim)
    hidecategories(Object);

/** Horizontal size of comment box in pixels. */
var() int SizeX;
/** Vertical size of comment box in pixels. */
var() int SizeY;
/** Width of border of comment box in pixels. */
var() int BorderWidth;
/** Should we draw a box for this comment object, or leave it just as text. */
var() bool bDrawBox;
/** If we are drawing a box, should it be filled, or just an outline. */
var() bool bFilled;
/** If bDrawBox and bFilled are true, and FillMaterial or FillTexture are true, should be tile it across the box or stretch to fit. */
var() bool bTileFill;
/** If we are drawing a box for this comment object, what colour should the border be. */
var() Color BorderColor;
/** If bDrawBox and bFilled are true, what colour should the background be. */
var() Color FillColor;
/**  
 *If bDrawBox and bFilled, you can optionally specify a texture to fill the box with.
 *       If both FillTexture and FillMaterial are specified, the FillMaterial will be used.
 */
var() editoronly Texture2D FillTexture;
/**  
 *If bDrawBox and bFilled, you can optionally specify a material to fill the box with.
 *       If both FillTexture and FillMaterial are specified, the FillMaterial will be used.
 */
var() editoronly Material FillMaterial;
var() editoronly string ObjComment;

defaultproperties
{
    SizeX=128
    SizeY=64
    BorderWidth=1
    bDrawBox=true
    bFilled=true
    BorderColor=(R=0,G=0,B=0,A=255)
    FillColor=(R=255,G=255,B=255,A=16)
    DrawWidth=128
    DrawHeight=64
}