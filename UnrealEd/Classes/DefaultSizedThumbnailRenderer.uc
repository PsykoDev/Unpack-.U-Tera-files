/*******************************************************************************
 * DefaultSizedThumbnailRenderer generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DefaultSizedThumbnailRenderer extends ThumbnailRenderer
    abstract
    native
    config(Editor);

var config int DefaultSizeX;
var config int DefaultSizeY;

defaultproperties
{
    DefaultSizeX=512
    DefaultSizeY=512
}