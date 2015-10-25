.class public Lcom/braintreepayments/api/AndroidPay;
.super Ljava/lang/Object;
.source "AndroidPay.java"


# annotations
.annotation build Lcom/braintreepayments/api/annotations/Beta;
.end annotation


# instance fields
.field private mCart:Lcom/google/android/gms/wallet/Cart;

.field private mConfiguration:Lcom/braintreepayments/api/models/Configuration;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method protected constructor <init>(Lcom/braintreepayments/api/models/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/braintreepayments/api/models/Configuration;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/braintreepayments/api/AndroidPay;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    .line 31
    return-void
.end method

.method private getConnectedApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/UnexpectedException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lcom/braintreepayments/api/AndroidPay;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/wallet/Wallet;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v3, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    invoke-direct {p0}, Lcom/braintreepayments/api/AndroidPay;->getEnvironment()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setEnvironment(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setTheme(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->build()Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/braintreepayments/api/AndroidPay;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/braintreepayments/api/AndroidPay;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/braintreepayments/api/AndroidPay;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 145
    .local v0, "connectionResult":Lcom/google/android/gms/common/ConnectionResult;
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    new-instance v1, Lcom/braintreepayments/api/exceptions/UnexpectedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleApiClient failed to connect with error code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/braintreepayments/api/exceptions/UnexpectedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    .end local v0    # "connectionResult":Lcom/google/android/gms/common/ConnectionResult;
    :cond_1
    iget-object v1, p0, Lcom/braintreepayments/api/AndroidPay;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v1
.end method

.method private getEnvironment()I
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/braintreepayments/api/AndroidPay;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/Configuration;->getAndroidPay()Lcom/braintreepayments/api/models/AndroidPayConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/AndroidPayConfiguration;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/api/AndroidPay;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/Configuration;->getAndroidPay()Lcom/braintreepayments/api/models/AndroidPayConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/AndroidPayConfiguration;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "production"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMerchantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/braintreepayments/api/AndroidPay;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/Configuration;->getAndroidPay()Lcom/braintreepayments/api/models/AndroidPayConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/AndroidPayConfiguration;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/braintreepayments/api/AndroidPay;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/Configuration;->getAndroidPay()Lcom/braintreepayments/api/models/AndroidPayConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/AndroidPayConfiguration;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static isFullWalletResponse(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 58
    const-string v0, "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMaskedWalletResponse(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 46
    const-string v0, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected disconnect()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/braintreepayments/api/AndroidPay;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/braintreepayments/api/AndroidPay;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 123
    :cond_0
    return-void
.end method

.method protected getFullWalletRequest(Ljava/lang/String;)Lcom/google/android/gms/wallet/FullWalletRequest;
    .locals 2
    .param p1, "googleTransactionId"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {}, Lcom/google/android/gms/wallet/FullWalletRequest;->newBuilder()Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/AndroidPay;->mCart:Lcom/google/android/gms/wallet/Cart;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->setCart(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->build()Lcom/google/android/gms/wallet/FullWalletRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getMaskedWalletRequest(ZZZ)Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .locals 3
    .param p1, "isBillingAgreement"    # Z
    .param p2, "shippingAddressRequired"    # Z
    .param p3, "phoneNumberRequired"    # Z

    .prologue
    .line 96
    invoke-static {}, Lcom/google/android/gms/wallet/MaskedWalletRequest;->newBuilder()Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/braintreepayments/api/AndroidPay;->getMerchantName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setMerchantName(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    const-string v2, "USD"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/braintreepayments/api/AndroidPay;->mCart:Lcom/google/android/gms/wallet/Cart;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setCart(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setIsBillingAgreement(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setShippingAddressRequired(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setPhoneNumberRequired(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/braintreepayments/api/AndroidPay;->getTokenizationParameters()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setPaymentMethodTokenizationParameters(Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v0

    .line 105
    .local v0, "maskedWalletRequestBuilder":Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    iget-object v1, p0, Lcom/braintreepayments/api/AndroidPay;->mCart:Lcom/google/android/gms/wallet/Cart;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/braintreepayments/api/AndroidPay;->mCart:Lcom/google/android/gms/wallet/Cart;

    invoke-virtual {v1}, Lcom/google/android/gms/wallet/Cart;->getTotalPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setEstimatedTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->build()Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v1

    return-object v1
.end method

.method protected getTokenizationParameters()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;->newBuilder()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->setPaymentMethodTokenizationType(I)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v0

    const-string v1, "gateway"

    const-string v2, "braintree"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v0

    const-string v1, "braintree:merchantId"

    iget-object v2, p0, Lcom/braintreepayments/api/AndroidPay;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v2}, Lcom/braintreepayments/api/models/Configuration;->getMerchantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v0

    const-string v1, "braintree:authorizationFingerprint"

    iget-object v2, p0, Lcom/braintreepayments/api/AndroidPay;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v2}, Lcom/braintreepayments/api/models/Configuration;->getAndroidPay()Lcom/braintreepayments/api/models/AndroidPayConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/braintreepayments/api/models/AndroidPayConfiguration;->getGoogleAuthorizationFingerprint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v0

    const-string v1, "braintree:apiVersion"

    const-string v2, "v1"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v0

    const-string v1, "braintree:sdkVersion"

    const-string v2, "1.6.5"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->build()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-result-object v0

    return-object v0
.end method

.method protected performChangeMaskedWalletRequest(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "googleTransactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/UnexpectedException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/gms/wallet/Wallet;->Payments:Lcom/google/android/gms/wallet/Payments;

    invoke-direct {p0, p1}, Lcom/braintreepayments/api/AndroidPay;->getConnectedApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p3, v2, p2}, Lcom/google/android/gms/wallet/Payments;->changeMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method protected performFullWalletRequest(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "googleTransactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/UnexpectedException;
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/gms/wallet/Wallet;->Payments:Lcom/google/android/gms/wallet/Payments;

    invoke-direct {p0, p1}, Lcom/braintreepayments/api/AndroidPay;->getConnectedApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/braintreepayments/api/AndroidPay;->getFullWalletRequest(Ljava/lang/String;)Lcom/google/android/gms/wallet/FullWalletRequest;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/gms/wallet/Payments;->loadFullWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    .line 80
    return-void
.end method

.method protected performMaskedWalletRequest(Landroid/content/Context;IZZZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "isBillingAgreement"    # Z
    .param p4, "shippingAddressRequired"    # Z
    .param p5, "phoneNumberRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/UnexpectedException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p3, p4, p5}, Lcom/braintreepayments/api/AndroidPay;->getMaskedWalletRequest(ZZZ)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v0

    .line 66
    .local v0, "maskedWalletRequest":Lcom/google/android/gms/wallet/MaskedWalletRequest;
    sget-object v1, Lcom/google/android/gms/wallet/Wallet;->Payments:Lcom/google/android/gms/wallet/Payments;

    invoke-direct {p0, p1}, Lcom/braintreepayments/api/AndroidPay;->getConnectedApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, v0, p2}, Lcom/google/android/gms/wallet/Payments;->loadMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    .line 68
    return-void
.end method

.method protected setCart(Lcom/google/android/gms/wallet/Cart;)V
    .locals 0
    .param p1, "cart"    # Lcom/google/android/gms/wallet/Cart;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/braintreepayments/api/AndroidPay;->mCart:Lcom/google/android/gms/wallet/Cart;

    .line 35
    return-void
.end method
