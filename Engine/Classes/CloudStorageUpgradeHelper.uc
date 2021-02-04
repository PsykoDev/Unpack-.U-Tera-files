/*******************************************************************************
 * CloudStorageUpgradeHelper generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
interface CloudStorageUpgradeHelper extends Interface
    abstract
    native(PlatformInterface);

event HandleLocalDocument(out string DocName, out int bShouldMoveToCloud, out int bShouldDeleteLocalFile)
{
    //return;    
}

event HandleLocalKeyValue(out string CloudKeyName, out PlatformInterfaceData CloudValue, out int bShouldMoveToCloud, out int bShouldDeleteLocalKey)
{
    //return;    
}

event GetCloudUpgradeKeys(out array<string> CloudKeys)
{
    //return;    
}