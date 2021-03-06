/*******************************************************************************
 * FileWriter generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class FileWriter extends Info
    native
    notplaceable
    hidecategories(Navigation,Movement,Collision);

enum FWFileType
{
    FWFT_Log,
    FWFT_Stats,
    FWFT_HTML,
    FWFT_User,
    FWFT_Debug,
    FWFT_MAX
};

var native const Pointer ArchivePtr;
var const string Filename;
var const FileWriter.FWFileType FileType;
var bool bFlushEachWrite;
var bool bWantsAsyncWrites;

// Export UFileWriter::execOpenFile(FFrame&, void* const)
native final function bool OpenFile(coerce string InFilename, optional FileWriter.FWFileType InFileType, optional string InExtension, optional bool bUnique, optional bool bIncludeTimeStamp);

// Export UFileWriter::execCloseFile(FFrame&, void* const)
native final function CloseFile();

// Export UFileWriter::execLogf(FFrame&, void* const)
native final function Logf(coerce string logString);

event Destroyed()
{
    CloseFile();
    //return;    
}

defaultproperties
{
    bFlushEachWrite=true
    begin object name=Sprite class=SpriteComponent
        ReplacementPrimitive=none
    object end
    // Reference: SpriteComponent'Default__FileWriter.Sprite'
    Components(0)=Sprite
    bTickIsDisabled=true
}