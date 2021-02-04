/*******************************************************************************
 * Base64 generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Base64 extends Object
    native;

// Export UBase64::execEncode(FFrame&, void* const)
native static function string Encode(const out array<byte> Source);

// Export UBase64::execDecode(FFrame&, void* const)
native static function Decode(string Source, out array<byte> Dest);

// Export UBase64::execEncodeString(FFrame&, void* const)
native static function string EncodeString(string Source);

// Export UBase64::execDecodeString(FFrame&, void* const)
native static function string DecodeString(string Source);

static function TestStringVersion()
{
    local string ThreeByteString, FourByteString, FiveByteString, InternetSample, EncodedString, DecodedString;

    ThreeByteString = "123";
    FourByteString = "1234";
    FiveByteString = "12345";
    InternetSample = "any carnal pleasure.";
    EncodedString = EncodeString(InternetSample);
    // End:0x121
    if(EncodedString != "YW55IGNhcm5hbCBwbGVhc3VyZS4=")
    {
        LogInternal(("Encoding of InternetSample returned different data than expected, got (" $ EncodedString) $ "), expected (YW55IGNhcm5hbCBwbGVhc3VyZS4=)");
    }
    // End:0x149
    else
    {
        LogInternal("InternetSample encoding test passed");
    }
    DecodedString = DecodeString(EncodedString);
    // End:0x1EC
    if(DecodedString != InternetSample)
    {
        LogInternal(((("Decoding of InternetSample returned the wrong string, got (" $ DecodedString) $ "), expected (") $ InternetSample) $ ")");
    }
    // End:0x214
    else
    {
        LogInternal("InternetSample decoding test passed");
    }
    EncodedString = EncodeString(ThreeByteString);
    // End:0x2B4
    if(Len(EncodedString) != 4)
    {
        LogInternal(("Encoding of ThreeByteString returned the wrong number of characters, got (" $ string(Len(EncodedString))) $ "), expected (4)");
    }
    DecodedString = DecodeString(EncodedString);
    // End:0x358
    if(DecodedString != ThreeByteString)
    {
        LogInternal(((("Decoding of ThreeByteString returned the wrong string, got (" $ DecodedString) $ "), expected (") $ ThreeByteString) $ ")");
    }
    // End:0x378
    else
    {
        LogInternal("ThreeByteString test passed");
    }
    EncodedString = EncodeString(FourByteString);
    // End:0x417
    if(Len(EncodedString) != 8)
    {
        LogInternal(("Encoding of FourByteString returned the wrong number of characters, got (" $ string(Len(EncodedString))) $ "), expected (8)");
    }
    DecodedString = DecodeString(EncodedString);
    // End:0x4BA
    if(DecodedString != FourByteString)
    {
        LogInternal(((("Decoding of FourByteString returned the wrong string, got (" $ DecodedString) $ "), expected (") $ FourByteString) $ ")");
    }
    // End:0x4D9
    else
    {
        LogInternal("FourByteString test passed");
    }
    EncodedString = EncodeString(FiveByteString);
    // End:0x578
    if(Len(EncodedString) != 8)
    {
        LogInternal(("Encoding of FiveByteString returned the wrong number of characters, got (" $ string(Len(EncodedString))) $ "), expected (8)");
    }
    DecodedString = DecodeString(EncodedString);
    // End:0x61B
    if(DecodedString != FiveByteString)
    {
        LogInternal(((("Decoding of FiveByteString returned the wrong string, got (" $ DecodedString) $ "), expected (") $ FiveByteString) $ ")");
    }
    // End:0x63A
    else
    {
        LogInternal("FiveByteString test passed");
    }
    //return;    
}
