/*******************************************************************************
 * MicroTransactionBase generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class MicroTransactionBase extends PlatformInterfaceBase
    transient
    native(PlatformInterface);

enum EMicroTransactionDelegate
{
    MTD_PurchaseQueryComplete,
    MTD_PurchaseComplete,
    MTD_MAX
};

enum EMicroTransactionResult
{
    MTR_Succeeded,
    MTR_Failed,
    MTR_Canceled,
    MTR_RestoredFromServer,
    MTR_MAX
};

struct native PurchaseInfo
{
    var string Identifier;
    var string DisplayName;
    var string DisplayDescription;
    var string DisplayPrice;
    var string CurrencyType;

    structdefaultproperties
    {
        Identifier=""
        DisplayName=""
        DisplayDescription=""
        DisplayPrice=""
        CurrencyType=""
    }
};

var array<PurchaseInfo> AvailableProducts;
var string LastError;
var string LastErrorSolution;

// Export UMicroTransactionBase::execInit(FFrame&, void* const)
native event Init();

// Export UMicroTransactionBase::execQueryForAvailablePurchases(FFrame&, void* const)
native event bool QueryForAvailablePurchases();

// Export UMicroTransactionBase::execIsAllowedToMakePurchases(FFrame&, void* const)
native event bool IsAllowedToMakePurchases();

// Export UMicroTransactionBase::execBeginPurchase(FFrame&, void* const)
native event bool BeginPurchase(int Index);

// Export UMicroTransactionBase::execGetProductIndex(FFrame&, void* const)
native event int GetProductIndex(string Identifier);