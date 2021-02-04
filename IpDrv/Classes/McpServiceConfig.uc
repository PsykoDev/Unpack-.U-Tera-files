/*******************************************************************************
 * McpServiceConfig generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class McpServiceConfig extends Object
    config(Engine);

var config string DevProtocol;
var config string ProdProtocol;
var config string DevDomain;
var config string ProdDomain;
var transient string Domain;
var transient string Protocol;
var config string TitleId;
var string AppKey;
var string AppSecret;
var config string GameName;
var config string ServiceName;
var string GameUser;
var string GamePassword;

function Init(bool bIsProduction)
{
    // End:0x36
    if(bIsProduction)
    {
        Domain = ProdDomain;
        Protocol = ProdProtocol;
    }
    // End:0x5C
    else
    {
        Domain = DevDomain;
        Protocol = DevProtocol;
    }
    //return;    
}

function string GetUserAuthTicket(string McpId)
{
    //return ReturnValue;    
}
