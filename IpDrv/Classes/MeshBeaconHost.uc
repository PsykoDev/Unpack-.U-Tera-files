/*******************************************************************************
 * MeshBeaconHost generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MeshBeaconHost extends MeshBeacon
    native
    config(Engine);

struct native ClientConnectionBandwidthTestData
{
    var MeshBeacon.EMeshBeaconBandwidthTestState CurrentState;
    var MeshBeacon.EMeshBeaconBandwidthTestType TestType;
    var int BytesTotalNeeded;
    var int BytesReceived;
    var Double RequestTestStartTime;
    var Double TestStartTime;
    var ConnectionBandwidthStats BandwidthStats;

    structdefaultproperties
    {
        CurrentState=EMeshBeaconBandwidthTestState.MB_BandwidthTestState_NotStarted
        TestType=EMeshBeaconBandwidthTestType.MB_BandwidthTestType_Upstream
        BytesTotalNeeded=0
        BytesReceived=0
        RequestTestStartTime=none
        TestStartTime=none
        BandwidthStats=(UpstreamRate=0,DownstreamRate=0,RoundtripLatency=0)
    }
};

struct native ClientMeshBeaconConnection
{
    var UniqueNetId PlayerNetId;
    var float ElapsedHeartbeatTime;
    var native transient Pointer Socket;
    var bool bConnectionAccepted;
    var ClientConnectionBandwidthTestData BandwidthTest;
    var Engine.OnlineSubsystem.ENATType NatType;
    var bool bCanHostVs;
    var float GoodHostRatio;
    var array<ConnectionBandwidthStats> BandwidthHistory;
    var int MinutesSinceLastTest;

    structdefaultproperties
    {
        PlayerNetId=(Uid=none)
        ElapsedHeartbeatTime=0.0
        bConnectionAccepted=false
        BandwidthTest=(CurrentState=EMeshBeaconBandwidthTestState.MB_BandwidthTestState_NotStarted,TestType=EMeshBeaconBandwidthTestType.MB_BandwidthTestType_Upstream,BytesTotalNeeded=0,BytesReceived=0,RequestTestStartTime=none,TestStartTime=none,BandwidthStats=(UpstreamRate=0,DownstreamRate=0,RoundtripLatency=0))
        NatType=ENATType.NAT_Unknown
        bCanHostVs=false
        GoodHostRatio=0.0
        BandwidthHistory=none
        MinutesSinceLastTest=0
    }
};

var const array<ClientMeshBeaconConnection> ClientConnections;
var private array<UniqueNetId> PendingPlayerConnections;
var const UniqueNetId OwningPlayerId;
var private bool bAllowBandwidthTesting;
var config int ConnectionBacklog;
var delegate<OnReceivedClientConnectionRequest> __OnReceivedClientConnectionRequest__Delegate;
var delegate<OnStartedBandwidthTest> __OnStartedBandwidthTest__Delegate;
var delegate<OnFinishedBandwidthTest> __OnFinishedBandwidthTest__Delegate;
var delegate<OnAllPendingPlayersConnected> __OnAllPendingPlayersConnected__Delegate;
var delegate<OnReceivedClientCreateNewSessionResult> __OnReceivedClientCreateNewSessionResult__Delegate;

// Export UMeshBeaconHost::execInitHostBeacon(FFrame&, void* const)
native function bool InitHostBeacon(UniqueNetId InOwningPlayerId);

// Export UMeshBeaconHost::execDestroyBeacon(FFrame&, void* const)
native event DestroyBeacon();

// Export UMeshBeaconHost::execRequestClientBandwidthTest(FFrame&, void* const)
native function bool RequestClientBandwidthTest(UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType, int TestBufferSize);

// Export UMeshBeaconHost::execHasInProgressBandwidthTest(FFrame&, void* const)
native function bool HasInProgressBandwidthTest();

// Export UMeshBeaconHost::execCancelInProgressBandwidthTests(FFrame&, void* const)
native function CancelInProgressBandwidthTests();

// Export UMeshBeaconHost::execHasPendingBandwidthTest(FFrame&, void* const)
native function bool HasPendingBandwidthTest();

// Export UMeshBeaconHost::execCancelPendingBandwidthTests(FFrame&, void* const)
native function CancelPendingBandwidthTests();

function AllowBandwidthTesting(bool bEnabled)
{
    bAllowBandwidthTesting = bEnabled;
    //return;    
}

delegate OnReceivedClientConnectionRequest(const out ClientMeshBeaconConnection NewClientConnection)
{
    //return;    
}

delegate OnStartedBandwidthTest(UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType)
{
    //return;    
}

delegate OnFinishedBandwidthTest(UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType, MeshBeacon.EMeshBeaconBandwidthTestResult TestResult, const out ConnectionBandwidthStats BandwidthStats)
{
    //return;    
}

function SetPendingPlayerConnections(const out array<UniqueNetId> Players)
{
    PendingPlayerConnections = Players;
    //return;    
}

// Export UMeshBeaconHost::execGetConnectionIndexForPlayer(FFrame&, void* const)
native function int GetConnectionIndexForPlayer(UniqueNetId PlayerNetId);

// Export UMeshBeaconHost::execAllPlayersConnected(FFrame&, void* const)
native function bool AllPlayersConnected(const out array<UniqueNetId> Players);

delegate OnAllPendingPlayersConnected()
{
    //return;    
}

// Export UMeshBeaconHost::execTellClientsToTravel(FFrame&, void* const)
native function TellClientsToTravel(name SessionName, class<OnlineGameSearch> SearchClass, const out byte PlatformSpecificInfo[80]);

// Export UMeshBeaconHost::execRequestClientCreateNewSession(FFrame&, void* const)
native function bool RequestClientCreateNewSession(UniqueNetId PlayerNetId, name SessionName, class<OnlineGameSearch> SearchClass, const out array<PlayerMember> Players);

delegate OnReceivedClientCreateNewSessionResult(bool bSucceeded, name SessionName, class<OnlineGameSearch> SearchClass, const out byte PlatformSpecificInfo[80])
{
    //return;    
}

function DumpConnections()
{
    local int ClientIdx, HistoryIdx;
    local UniqueNetId NetId;

    LogInternal("Debug info for Beacon: " $ string(BeaconName), 'DevBeacon');
    ClientIdx = 0;
    J0x3C:
    // End:0x4C5 [Loop If]
    if(ClientIdx < ClientConnections.Length)
    {
        NetId = ClientConnections[ClientIdx].PlayerNetId;
        LogInternal("", 'DevBeacon');
        LogInternal("Client connection entry: " $ string(ClientIdx), 'DevBeacon');
        LogInternal("\\tPlayerNetId: " $ class'OnlineSubsystem'.static.UniqueNetIdToString(NetId), 'DevBeacon');
        LogInternal("\\tNatType: " $ string(ClientConnections[ClientIdx].NatType), 'DevBeacon');
        LogInternal("\\tGoodHostRatio: " $ string(ClientConnections[ClientIdx].GoodHostRatio), 'DevBeacon');
        LogInternal("\\tbCanHostVs: " $ string(ClientConnections[ClientIdx].bCanHostVs), 'DevBeacon');
        LogInternal("\\tMinutesSinceLastTest: " $ string(ClientConnections[ClientIdx].MinutesSinceLastTest), 'DevBeacon');
        LogInternal("\\tBandwidthTest.CurrentState: " $ string(ClientConnections[ClientIdx].BandwidthTest.CurrentState), 'DevBeacon');
        LogInternal("\\tBandwidthTest.TestType: " $ string(ClientConnections[ClientIdx].BandwidthTest.TestType), 'DevBeacon');
        LogInternal("\\tBandwidth History: " $ string(ClientConnections[ClientIdx].BandwidthHistory.Length), 'DevBeacon');
        HistoryIdx = 0;
        J0x346:
        // End:0x4B7 [Loop If]
        if(HistoryIdx < ClientConnections[ClientIdx].BandwidthHistory.Length)
        {
            LogInternal(((((("\\t\\t" $ " Upstream bytes/sec: ") $ string(ClientConnections[ClientIdx].BandwidthHistory[HistoryIdx].UpstreamRate)) $ " Downstream bytes/sec: ") $ string(ClientConnections[ClientIdx].BandwidthHistory[HistoryIdx].DownstreamRate)) $ " Roundrtrip msec: ") $ string(ClientConnections[ClientIdx].BandwidthHistory[HistoryIdx].RoundtripLatency), 'DevBeacon');
            ++ HistoryIdx;
            // [Loop Continue]
            goto J0x346;
        }
        ++ ClientIdx;
        // [Loop Continue]
        goto J0x3C;
    }
    LogInternal("");
    //return;    
}

function DebugRender(Canvas Canvas, UniqueNetId CurOptimalHostId)
{
    local int ClientIdx, HistoryIdx;
    local UniqueNetId NetId;
    local float XL, YL, Offset;

    Offset = 50.0;
    Canvas.Font = class'Engine'.static.GetTinyFont();
    Canvas.StrLen("============================================================", XL, YL);
    YL = float(Canvas.SizeY) - (Offset * float(2));
    Canvas.SetPos(Offset, Offset);
    Canvas.SetDrawColor(0, 0, 255, 64);
    Canvas.DrawTile(Canvas.DefaultTexture, XL, YL, 0.0, 0.0, 1.0, 1.0);
    Canvas.SetPos(Offset, Offset);
    Canvas.SetDrawColor(255, 255, 255);
    Canvas.DrawText("Debug info for Beacon:" $ string(BeaconName));
    // End:0x29C
    if(CurOptimalHostId == OwningPlayerId)
    {
        Canvas.SetDrawColor(255, 255, 0);
    }
    Canvas.DrawText("Owning Host: " $ class'OnlineSubsystem'.static.UniqueNetIdToString(OwningPlayerId));
    ClientIdx = 0;
    J0x305:
    // End:0xC9D [Loop If]
    if(ClientIdx < ClientConnections.Length)
    {
        Canvas.SetDrawColor(255, 255, 255);
        // End:0x3C1
        if(Canvas.CurY >= YL)
        {
            Canvas.SetPos(Canvas.CurX + XL, Offset);
        }
        NetId = ClientConnections[ClientIdx].PlayerNetId;
        Canvas.DrawText("============================================================");
        Canvas.DrawText("Client connection entry: " $ string(ClientIdx));
        Canvas.SetPos(Canvas.CurX + float(10), Canvas.CurY);
        // End:0x545
        if(CurOptimalHostId == NetId)
        {
            Canvas.SetDrawColor(255, 255, 0);
        }
        Canvas.DrawText("PlayerNetId: " $ class'OnlineSubsystem'.static.UniqueNetIdToString(NetId));
        Canvas.SetDrawColor(255, 255, 255);
        Canvas.DrawText("NatType: " $ string(ClientConnections[ClientIdx].NatType));
        Canvas.DrawText("GoodHostRatio: " $ string(ClientConnections[ClientIdx].GoodHostRatio));
        Canvas.DrawText("bCanHostVs: " $ string(ClientConnections[ClientIdx].bCanHostVs));
        Canvas.DrawText("MinutesSinceLastTest: " $ string(ClientConnections[ClientIdx].MinutesSinceLastTest));
        Canvas.DrawText("Current BandwidthTest: ");
        Canvas.SetPos(Canvas.CurX + float(10), Canvas.CurY);
        Canvas.DrawText("CurrentState: " $ string(ClientConnections[ClientIdx].BandwidthTest.CurrentState));
        Canvas.DrawText("TestType: " $ string(ClientConnections[ClientIdx].BandwidthTest.TestType));
        Canvas.DrawText("BytesTotalNeeded: " $ string(ClientConnections[ClientIdx].BandwidthTest.BytesTotalNeeded));
        Canvas.DrawText("BytesReceived: " $ string(ClientConnections[ClientIdx].BandwidthTest.BytesReceived));
        Canvas.DrawText("UpstreamRate bytes/sec: " $ string(ClientConnections[ClientIdx].BandwidthTest.BandwidthStats.UpstreamRate));
        Canvas.SetPos(Canvas.CurX - float(10), Canvas.CurY);
        Canvas.DrawText("Bandwidth History: " $ string(ClientConnections[ClientIdx].BandwidthHistory.Length));
        Canvas.SetPos(Canvas.CurX + float(10), Canvas.CurY);
        HistoryIdx = 0;
        J0xB69:
        // End:0xC2D [Loop If]
        if(HistoryIdx < ClientConnections[ClientIdx].BandwidthHistory.Length)
        {
            Canvas.DrawText("Upstream bytes/sec: " $ string(ClientConnections[ClientIdx].BandwidthHistory[HistoryIdx].UpstreamRate));
            ++ HistoryIdx;
            // [Loop Continue]
            goto J0xB69;
        }
        Canvas.SetPos(Canvas.CurX - float(20), Canvas.CurY);
        ++ ClientIdx;
        // [Loop Continue]
        goto J0x305;
    }
    //return;    
}

defaultproperties
{
    bAllowBandwidthTesting=true
}