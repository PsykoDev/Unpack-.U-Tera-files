/*******************************************************************************
 * McpUserAuthResponseWrapper generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class McpUserAuthResponseWrapper extends HttpResponseInterface;

var int ResponseCode;
var string ErrorString;

function Init(int InResponseCode, string InErrorString)
{
    ResponseCode = InResponseCode;
    ErrorString = InErrorString;
    //return;    
}

function int GetResponseCode()
{
    return ResponseCode;
    //return ReturnValue;    
}

function string GetContentAsString()
{
    return ErrorString;
    //return ReturnValue;    
}