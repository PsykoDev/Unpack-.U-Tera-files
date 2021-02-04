/*******************************************************************************
 * McpManagedValueManager generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class McpManagedValueManager extends McpManagedValueManagerBase
    config(Engine);

struct SaveSlotRequestState
{
    var string McpId;
    var string SaveSlot;
    var HttpRequestInterface Request;

    structdefaultproperties
    {
        McpId=""
        SaveSlot=""
        Request=none
    }
};

struct ValueRequestState extends SaveSlotRequestState
{
    var name ValueId;
};

var config string CreateSaveSlotUrl;
var config string ReadSaveSlotUrl;
var config string UpdateValueUrl;
var config string DeleteValueUrl;
var array<ManagedValueSaveSlot> SaveSlots;
var array<SaveSlotRequestState> CreateSaveSlotRequests;
var array<SaveSlotRequestState> ReadSaveSlotRequests;
var array<ValueRequestState> UpdateValueRequests;
var array<ValueRequestState> DeleteValueRequests;

function CreateSaveSlot(string McpId, string SaveSlot)
{
    local string URL;
    local HttpRequestInterface Request;
    local int AddAt;

    Request = class'HttpFactory'.static.CreateRequest();
    // End:0x267
    if(Request != none)
    {
        URL = ((((((GetBaseURL()) $ CreateSaveSlotUrl) $ (GetAppAccessURL())) $ "&uniqueUserId=") $ McpId) $ "&saveSlotId=") $ SaveSlot;
        Request.SetURL(URL);
        Request.SetVerb("POST");
        Request.__OnProcessRequestComplete__Delegate = OnCreateSaveSlotRequestComplete;
        AddAt = CreateSaveSlotRequests.Length;
        CreateSaveSlotRequests.Length = AddAt + 1;
        CreateSaveSlotRequests[AddAt].McpId = McpId;
        CreateSaveSlotRequests[AddAt].SaveSlot = SaveSlot;
        CreateSaveSlotRequests[AddAt].Request = Request;
        // End:0x23F
        if(!Request.ProcessRequest())
        {
            LogInternal(("Failed to start CreateSaveSlot web request for URL(" $ URL) $ ")");
        }
        LogInternal("Create save slot URL is " $ URL);
    }
    //return;    
}

function OnCreateSaveSlotRequestComplete(HttpRequestInterface Request, HttpResponseInterface Response, bool bWasSuccessful)
{
    local int Index, ResponseCode;
    local string ResponseString;

    Index = CreateSaveSlotRequests.Find('Request', Request);
    // End:0x2A4
    if(Index != -1)
    {
        ResponseCode = 500;
        // End:0x83
        if(Response != none)
        {
            ResponseCode = Response.GetResponseCode();
        }
        bWasSuccessful = bWasSuccessful && ResponseCode == 200;
        // End:0x13F
        if(bWasSuccessful)
        {
            ResponseString = Response.GetContentAsString();
            ParseValuesForSaveSlot(CreateSaveSlotRequests[Index].McpId, CreateSaveSlotRequests[Index].SaveSlot, ResponseString);
        }
        OnCreateSaveSlotComplete(CreateSaveSlotRequests[Index].McpId, CreateSaveSlotRequests[Index].SaveSlot, bWasSuccessful, Response.GetContentAsString());
        LogInternal(((((((("Create save slot McpId(" $ CreateSaveSlotRequests[Index].McpId) $ "), SaveSlot(") $ CreateSaveSlotRequests[Index].SaveSlot) $ ") was successful ") $ string(bWasSuccessful)) $ " with ResponseCode(") $ string(ResponseCode)) $ ")");
        CreateSaveSlotRequests.Remove(Index, 1);
    }
    //return;    
}

function int FindSaveSlotIndex(string McpId, string SaveSlot)
{
    local int SaveSlotIndex;

    SaveSlotIndex = 0;
    J0x0B:
    // End:0xA5 [Loop If]
    if(SaveSlotIndex < SaveSlots.Length)
    {
        // End:0x97
        if((SaveSlots[SaveSlotIndex].OwningMcpId == McpId) && SaveSlots[SaveSlotIndex].SaveSlot == SaveSlot)
        {
            return SaveSlotIndex;
        }
        ++ SaveSlotIndex;
        // [Loop Continue]
        goto J0x0B;
    }
    return -1;
    //return ReturnValue;    
}

function ParseValuesForSaveSlot(string McpId, string SaveSlot, string JsonPayload)
{
    local JsonObject ParsedJson;
    local int JsonIndex, SaveSlotIndex, ManagedValueIndex;
    local name ValueId;
    local int Value;

    SaveSlotIndex = FindSaveSlotIndex(McpId, SaveSlot);
    // End:0xC4
    if(SaveSlotIndex == -1)
    {
        SaveSlotIndex = SaveSlots.Length;
        SaveSlots.Length = SaveSlotIndex + 1;
        SaveSlots[SaveSlotIndex].OwningMcpId = McpId;
        SaveSlots[SaveSlotIndex].SaveSlot = SaveSlot;
    }
    ParsedJson = class'JsonObject'.static.DecodeJson(JsonPayload);
    JsonIndex = 0;
    J0x101:
    // End:0x337 [Loop If]
    if(JsonIndex < ParsedJson.ObjectArray.Length)
    {
        ValueId = name(ParsedJson.ObjectArray[JsonIndex].GetStringValue("value_id"));
        Value = ParsedJson.ObjectArray[JsonIndex].GetIntValue("value");
        ManagedValueIndex = SaveSlots[SaveSlotIndex].Values.Find('ValueId', ValueId);
        // End:0x2DC
        if(ManagedValueIndex == -1)
        {
            ManagedValueIndex = SaveSlots[SaveSlotIndex].Values.Length;
            SaveSlots[SaveSlotIndex].Values.Length = ManagedValueIndex + 1;
            SaveSlots[SaveSlotIndex].Values[ManagedValueIndex].ValueId = ValueId;
        }
        SaveSlots[SaveSlotIndex].Values[ManagedValueIndex].Value = Value;
        ++ JsonIndex;
        // [Loop Continue]
        goto J0x101;
    }
    //return;    
}

function ReadSaveSlot(string McpId, string SaveSlot)
{
    local string URL;
    local HttpRequestInterface Request;
    local int AddAt;

    Request = class'HttpFactory'.static.CreateRequest();
    // End:0x262
    if(Request != none)
    {
        URL = ((((((GetBaseURL()) $ ReadSaveSlotUrl) $ (GetAppAccessURL())) $ "&uniqueUserId=") $ McpId) $ "&saveSlotId=") $ SaveSlot;
        Request.SetURL(URL);
        Request.SetVerb("GET");
        Request.__OnProcessRequestComplete__Delegate = OnReadSaveSlotRequestComplete;
        AddAt = ReadSaveSlotRequests.Length;
        ReadSaveSlotRequests.Length = AddAt + 1;
        ReadSaveSlotRequests[AddAt].McpId = McpId;
        ReadSaveSlotRequests[AddAt].SaveSlot = SaveSlot;
        ReadSaveSlotRequests[AddAt].Request = Request;
        // End:0x23C
        if(!Request.ProcessRequest())
        {
            LogInternal(("Failed to start ReadSaveSlot web request for URL(" $ URL) $ ")");
        }
        LogInternal("Read save slot URL is " $ URL);
    }
    //return;    
}

function OnReadSaveSlotRequestComplete(HttpRequestInterface Request, HttpResponseInterface Response, bool bWasSuccessful)
{
    local int Index, ResponseCode;
    local string ResponseString;

    Index = ReadSaveSlotRequests.Find('Request', Request);
    // End:0x2A2
    if(Index != -1)
    {
        ResponseCode = 500;
        // End:0x83
        if(Response != none)
        {
            ResponseCode = Response.GetResponseCode();
        }
        bWasSuccessful = bWasSuccessful && ResponseCode == 200;
        // End:0x13F
        if(bWasSuccessful)
        {
            ResponseString = Response.GetContentAsString();
            ParseValuesForSaveSlot(ReadSaveSlotRequests[Index].McpId, ReadSaveSlotRequests[Index].SaveSlot, ResponseString);
        }
        OnReadSaveSlotComplete(ReadSaveSlotRequests[Index].McpId, ReadSaveSlotRequests[Index].SaveSlot, bWasSuccessful, Response.GetContentAsString());
        LogInternal(((((((("Read save slot McpId(" $ ReadSaveSlotRequests[Index].McpId) $ "), SaveSlot(") $ ReadSaveSlotRequests[Index].SaveSlot) $ ") was successful ") $ string(bWasSuccessful)) $ " with ResponseCode(") $ string(ResponseCode)) $ ")");
        ReadSaveSlotRequests.Remove(Index, 1);
    }
    //return;    
}

function array<ManagedValue> GetValues(string McpId, string SaveSlot)
{
    local int SaveSlotIndex;
    local array<ManagedValue> EmptyArray;

    SaveSlotIndex = FindSaveSlotIndex(McpId, SaveSlot);
    // End:0x60
    if(SaveSlotIndex != -1)
    {
        return SaveSlots[SaveSlotIndex].Values;
    }
    EmptyArray.Length = 0;
    return EmptyArray;
    //return ReturnValue;    
}

function int GetValue(string McpId, string SaveSlot, name ValueId)
{
    local int SaveSlotIndex, ValueIndex, Value;

    SaveSlotIndex = FindSaveSlotIndex(McpId, SaveSlot);
    // End:0xDF
    if(SaveSlotIndex != -1)
    {
        ValueIndex = SaveSlots[SaveSlotIndex].Values.Find('ValueId', ValueId);
        // End:0xDF
        if(ValueIndex != -1)
        {
            Value = SaveSlots[SaveSlotIndex].Values[ValueIndex].Value;
        }
    }
    return Value;
    //return ReturnValue;    
}

function UpdateValue(string McpId, string SaveSlot, name ValueId, int Value)
{
    local string URL;
    local HttpRequestInterface Request;
    local int AddAt;

    Request = class'HttpFactory'.static.CreateRequest();
    // End:0x2C2
    if(Request != none)
    {
        URL = ((((((((((GetBaseURL()) $ UpdateValueUrl) $ (GetAppAccessURL())) $ "&uniqueUserId=") $ McpId) $ "&saveSlotId=") $ SaveSlot) $ "&valueId=") $ string(ValueId)) $ "&value=") $ string(Value);
        Request.SetURL(URL);
        Request.SetVerb("POST");
        Request.__OnProcessRequestComplete__Delegate = OnUpdateValueRequestComplete;
        AddAt = UpdateValueRequests.Length;
        UpdateValueRequests.Length = AddAt + 1;
        UpdateValueRequests[AddAt].McpId = McpId;
        UpdateValueRequests[AddAt].SaveSlot = SaveSlot;
        UpdateValueRequests[AddAt].ValueId = ValueId;
        UpdateValueRequests[AddAt].Request = Request;
        // End:0x29E
        if(!Request.ProcessRequest())
        {
            LogInternal(("Failed to start UpdateValue web request for URL(" $ URL) $ ")");
        }
        LogInternal("Update value URL is " $ URL);
    }
    //return;    
}

function OnUpdateValueRequestComplete(HttpRequestInterface Request, HttpResponseInterface Response, bool bWasSuccessful)
{
    local int Index, ResponseCode;
    local string ResponseString;
    local int UpdatedValue;

    Index = UpdateValueRequests.Find('Request', Request);
    // End:0x3B2
    if(Index != -1)
    {
        ResponseCode = 500;
        // End:0x83
        if(Response != none)
        {
            ResponseCode = Response.GetResponseCode();
        }
        bWasSuccessful = bWasSuccessful && ResponseCode == 200;
        // End:0x149
        if(bWasSuccessful)
        {
            ResponseString = ("[" $ Response.GetContentAsString()) $ "]";
            ParseValuesForSaveSlot(UpdateValueRequests[Index].McpId, UpdateValueRequests[Index].SaveSlot, ResponseString);
        }
        UpdatedValue = GetValue(UpdateValueRequests[Index].McpId, UpdateValueRequests[Index].SaveSlot, UpdateValueRequests[Index].ValueId);
        OnUpdateValueComplete(UpdateValueRequests[Index].McpId, UpdateValueRequests[Index].SaveSlot, UpdateValueRequests[Index].ValueId, UpdatedValue, bWasSuccessful, Response.GetContentAsString());
        LogInternal(((((((((((("Update value McpId(" $ UpdateValueRequests[Index].McpId) $ "), SaveSlot(") $ UpdateValueRequests[Index].SaveSlot) $ "), ValueId(") $ string(UpdateValueRequests[Index].ValueId)) $ "), Value(") $ string(UpdatedValue)) $ ") was successful ") $ string(bWasSuccessful)) $ " with ResponseCode(") $ string(ResponseCode)) $ ")");
        UpdateValueRequests.Remove(Index, 1);
    }
    //return;    
}

function DeleteValue(string McpId, string SaveSlot, name ValueId)
{
    local string URL;
    local HttpRequestInterface Request;
    local int AddAt;

    Request = class'HttpFactory'.static.CreateRequest();
    // End:0x2AC
    if(Request != none)
    {
        URL = ((((((((GetBaseURL()) $ DeleteValueUrl) $ (GetAppAccessURL())) $ "&uniqueUserId=") $ McpId) $ "&saveSlotId=") $ SaveSlot) $ "&valueId=") $ string(ValueId);
        Request.SetURL(URL);
        Request.SetVerb("DELETE");
        Request.__OnProcessRequestComplete__Delegate = OnDeleteValueRequestComplete;
        AddAt = DeleteValueRequests.Length;
        DeleteValueRequests.Length = AddAt + 1;
        DeleteValueRequests[AddAt].McpId = McpId;
        DeleteValueRequests[AddAt].SaveSlot = SaveSlot;
        DeleteValueRequests[AddAt].ValueId = ValueId;
        DeleteValueRequests[AddAt].Request = Request;
        // End:0x288
        if(!Request.ProcessRequest())
        {
            LogInternal(("Failed to start DeleteValue web request for URL(" $ URL) $ ")");
        }
        LogInternal("Delete value URL is " $ URL);
    }
    //return;    
}

function OnDeleteValueRequestComplete(HttpRequestInterface Request, HttpResponseInterface Response, bool bWasSuccessful)
{
    local int Index, ResponseCode, SaveSlotIndex, ValueIndex;

    Index = DeleteValueRequests.Find('Request', Request);
    // End:0x392
    if(Index != -1)
    {
        ResponseCode = 500;
        // End:0x83
        if(Response != none)
        {
            ResponseCode = Response.GetResponseCode();
        }
        bWasSuccessful = bWasSuccessful && ResponseCode == 200;
        // End:0x1D2
        if(bWasSuccessful)
        {
            SaveSlotIndex = FindSaveSlotIndex(DeleteValueRequests[Index].McpId, DeleteValueRequests[Index].SaveSlot);
            // End:0x1D2
            if(SaveSlotIndex != -1)
            {
                ValueIndex = SaveSlots[SaveSlotIndex].Values.Find('ValueId', DeleteValueRequests[Index].ValueId);
                // End:0x1D2
                if(ValueIndex != -1)
                {
                    SaveSlots[SaveSlotIndex].Values.Remove(ValueIndex, 1);
                }
            }
        }
        OnDeleteValueComplete(DeleteValueRequests[Index].McpId, DeleteValueRequests[Index].SaveSlot, DeleteValueRequests[Index].ValueId, bWasSuccessful, Response.GetContentAsString());
        LogInternal(((((((((("Delete value McpId(" $ DeleteValueRequests[Index].McpId) $ "), SaveSlot(") $ DeleteValueRequests[Index].SaveSlot) $ "), ValueId(") $ string(DeleteValueRequests[Index].ValueId)) $ ") was successful ") $ string(bWasSuccessful)) $ " with ResponseCode(") $ string(ResponseCode)) $ ")");
        DeleteValueRequests.Remove(Index, 1);
    }
    //return;    
}

defaultproperties
{
    CreateSaveSlotUrl="/createvalues"
    ReadSaveSlotUrl="/listvalues"
    UpdateValueUrl="/updatevalue"
    DeleteValueUrl="/deletevalue"
}