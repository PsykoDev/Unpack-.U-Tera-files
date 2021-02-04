/*******************************************************************************
 * McpServiceBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class McpServiceBase extends Object
    native
    config(Engine);

var config string McpConfigClassName;
var McpServiceConfig McpConfig;

event Init()
{
    local class<McpServiceConfig> McpConfigClass;

    LogInternal("Loading McpServerBase McpConfigClass:" $ default.McpConfigClassName);
    McpConfigClass = class<McpServiceConfig>(DynamicLoadObject(default.McpConfigClassName, class'Class'));
    // End:0x8C
    if(McpConfigClass != none)
    {
        McpConfig = new McpConfigClass;
    }
    //return;    
}

function string GetBaseURL()
{
    return (McpConfig.Protocol $ "://") $ McpConfig.Domain;
    //return ReturnValue;    
}

function string GetAppAccessURL()
{
    return (((("?appKey=" $ McpConfig.AppKey) $ "&appSecret=") $ McpConfig.AppSecret) $ "&titleId=") $ McpConfig.TitleId;
    //return ReturnValue;    
}

function string GetUserAuthURL(string McpId)
{
    local string AuthTicket;

    AuthTicket = McpConfig.GetUserAuthTicket(McpId);
    // End:0x5D
    if(Len(AuthTicket) > 0)
    {
        return "&authTicket=" $ AuthTicket;
    }
    return "";
    //return ReturnValue;    
}

defaultproperties
{
    McpConfigClassName="IpDrv.McpServiceConfig"
}