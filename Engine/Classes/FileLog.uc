/*******************************************************************************
 * FileLog generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class FileLog extends FileWriter
    native
    notplaceable
    hidecategories(Navigation,Movement,Collision);

function OpenLog(coerce string LogFilename, optional string extension, optional bool bUnique)
{
    OpenFile(LogFilename, 0, extension, bUnique);
    //return;    
}

function CloseLog()
{
    CloseFile();
    //return;    
}

defaultproperties
{
    begin object name=Sprite class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__FileLog.Sprite'
    Components(0)=Sprite
}