/*******************************************************************************
 * SeqVar_ObjectList generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqVar_ObjectList extends SeqVar_Object
    native(Sequence)
    hidecategories(Object);

/** this is our list of objects which this kismet variable holds */
var() array<Object> ObjList;

function Object GetObjectValue()
{
    return ((ObjList.Length > 0) ? ObjList[0] : none);
    //return ReturnValue;    
}

function SetObjectValue(Object NewValue)
{
    ObjList[0] = NewValue;
    //return;    
}

defaultproperties
{
    ObjName="Object List"
    ObjColor=(R=102,G=0,B=102,A=255)
}