/*******************************************************************************
 * S1GlobalObjectContainer generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class S1GlobalObjectContainer extends Object
    native;

struct native S1GlobalObjectContainerInfo
{
    var init native string FullName;
    var native S1GlobalObjectContainer GlobalObjectContainer;
};

struct native S1GlobalObjectContainerInfos
{
    var init native array<init S1GlobalObjectContainerInfo> GlobalObjectContainerInfoArray;
};

var array<Object> Objects;