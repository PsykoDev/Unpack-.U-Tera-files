/*******************************************************************************
 * InAppMessageBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class InAppMessageBase extends PlatformInterfaceBase
    transient
    native(PlatformInterface);

enum EInAppMessageInterfaceDelegate
{
    IAMD_InAppSMSUIComplete,
    IAMD_InAppEmailComplete,
    IAMD_MAX
};

// Export UInAppMessageBase::execInit(FFrame&, void* const)
native event Init();

// Export UInAppMessageBase::execShowInAppSMSUI(FFrame&, void* const)
native event bool ShowInAppSMSUI(optional string InitialMessage);

// Export UInAppMessageBase::execShowInAppEmailUI(FFrame&, void* const)
native event bool ShowInAppEmailUI(optional string InitialAddress, optional string InitialSubject, optional string InitialMessage);