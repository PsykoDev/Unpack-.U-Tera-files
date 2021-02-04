/*******************************************************************************
 * HttpRequestWindows generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class HttpRequestWindows extends HttpRequestInterface
    native;

var private native const transient Pointer Request;
var private native const string RequestVerb;
var private native const transient Pointer RequestURL;
var private native const array<byte> Payload;

// Export UHttpRequestWindows::execGetHeader(FFrame&, void* const)
native function string GetHeader(string HeaderName);

// Export UHttpRequestWindows::execGetHeaders(FFrame&, void* const)
native function array<string> GetHeaders();

// Export UHttpRequestWindows::execGetURLParameter(FFrame&, void* const)
native function string GetURLParameter(string ParameterName);

// Export UHttpRequestWindows::execGetContentType(FFrame&, void* const)
native function string GetContentType();

// Export UHttpRequestWindows::execGetContentLength(FFrame&, void* const)
native function int GetContentLength();

// Export UHttpRequestWindows::execGetURL(FFrame&, void* const)
native function string GetURL();

// Export UHttpRequestWindows::execGetContent(FFrame&, void* const)
native function GetContent(out array<byte> Content);

// Export UHttpRequestWindows::execGetVerb(FFrame&, void* const)
native function string GetVerb();

// Export UHttpRequestWindows::execSetVerb(FFrame&, void* const)
native function HttpRequestInterface SetVerb(string Verb);

// Export UHttpRequestWindows::execSetURL(FFrame&, void* const)
native function HttpRequestInterface SetURL(string URL);

// Export UHttpRequestWindows::execSetContent(FFrame&, void* const)
native function HttpRequestInterface SetContent(const out array<byte> ContentPayload);

// Export UHttpRequestWindows::execSetContentAsString(FFrame&, void* const)
native function HttpRequestInterface SetContentAsString(string ContentString);

// Export UHttpRequestWindows::execSetHeader(FFrame&, void* const)
native function HttpRequestInterface SetHeader(string HeaderName, string HeaderValue);

// Export UHttpRequestWindows::execProcessRequest(FFrame&, void* const)
native function bool ProcessRequest();