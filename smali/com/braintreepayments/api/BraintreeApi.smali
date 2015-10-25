.class public Lcom/braintreepayments/api/BraintreeApi;
.super Ljava/lang/Object;
.source "BraintreeApi.java"


# static fields
.field private static final PAYMENT_METHOD_ENDPOINT:Ljava/lang/String; = "payment_methods"


# instance fields
.field private mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

.field private mBraintreeData:Ljava/lang/Object;

.field private mClientToken:Lcom/braintreepayments/api/models/ClientToken;

.field private mConfiguration:Lcom/braintreepayments/api/models/Configuration;

.field private mContext:Landroid/content/Context;

.field private mHttpRequest:Lcom/braintreepayments/api/internal/HttpRequest;

.field private mVenmoAppSwitch:Lcom/braintreepayments/api/VenmoAppSwitch;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/braintreepayments/api/models/ClientToken;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientToken"    # Lcom/braintreepayments/api/models/ClientToken;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/braintreepayments/api/BraintreeApi;->mClientToken:Lcom/braintreepayments/api/models/ClientToken;

    .line 94
    new-instance v0, Lcom/braintreepayments/api/internal/HttpRequest;

    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mClientToken:Lcom/braintreepayments/api/models/ClientToken;

    invoke-virtual {v1}, Lcom/braintreepayments/api/models/ClientToken;->getAuthorizationFingerprint()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/internal/HttpRequest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mHttpRequest:Lcom/braintreepayments/api/internal/HttpRequest;

    .line 95
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/braintreepayments/api/models/ClientToken;Lcom/braintreepayments/api/models/Configuration;Lcom/braintreepayments/api/internal/HttpRequest;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientToken"    # Lcom/braintreepayments/api/models/ClientToken;
    .param p3, "configuration"    # Lcom/braintreepayments/api/models/Configuration;
    .param p4, "requestor"    # Lcom/braintreepayments/api/internal/HttpRequest;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/braintreepayments/api/BraintreeApi;->mClientToken:Lcom/braintreepayments/api/models/ClientToken;

    .line 107
    iput-object p3, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    .line 108
    iput-object p4, p0, Lcom/braintreepayments/api/BraintreeApi;->mHttpRequest:Lcom/braintreepayments/api/internal/HttpRequest;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mBraintreeData:Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/braintreepayments/api/VenmoAppSwitch;

    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-direct {v0, v1, v2}, Lcom/braintreepayments/api/VenmoAppSwitch;-><init>(Landroid/content/Context;Lcom/braintreepayments/api/models/Configuration;)V

    iput-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mVenmoAppSwitch:Lcom/braintreepayments/api/VenmoAppSwitch;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientTokenString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v2, "([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 76
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .end local p2    # "clientTokenString":Ljava/lang/String;
    .local v0, "clientTokenString":Ljava/lang/String;
    move-object p2, v0

    .line 80
    .end local v0    # "clientTokenString":Ljava/lang/String;
    .restart local p2    # "clientTokenString":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Lcom/braintreepayments/api/models/ClientToken;->fromString(Ljava/lang/String;)Lcom/braintreepayments/api/models/ClientToken;

    move-result-object v2

    iput-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mClientToken:Lcom/braintreepayments/api/models/ClientToken;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {p2}, Lcom/braintreepayments/api/models/Configuration;->fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/Configuration;

    move-result-object v2

    iput-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    .line 84
    new-instance v2, Lcom/braintreepayments/api/internal/HttpRequest;

    iget-object v3, p0, Lcom/braintreepayments/api/BraintreeApi;->mClientToken:Lcom/braintreepayments/api/models/ClientToken;

    invoke-virtual {v3}, Lcom/braintreepayments/api/models/ClientToken;->getAuthorizationFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/braintreepayments/api/internal/HttpRequest;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mHttpRequest:Lcom/braintreepayments/api/internal/HttpRequest;

    .line 85
    iget-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mHttpRequest:Lcom/braintreepayments/api/internal/HttpRequest;

    iget-object v3, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v3}, Lcom/braintreepayments/api/models/Configuration;->getClientApiUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/braintreepayments/api/internal/HttpRequest;->setBaseUrl(Ljava/lang/String;)V

    .line 87
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mBraintreeData:Ljava/lang/Object;

    .line 88
    new-instance v2, Lcom/braintreepayments/api/VenmoAppSwitch;

    iget-object v3, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-direct {v2, p1, v3}, Lcom/braintreepayments/api/VenmoAppSwitch;-><init>(Landroid/content/Context;Lcom/braintreepayments/api/models/Configuration;)V

    iput-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mVenmoAppSwitch:Lcom/braintreepayments/api/VenmoAppSwitch;

    .line 89
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientTokenString"    # Ljava/lang/String;
    .param p3, "configurationString"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p2}, Lcom/braintreepayments/api/models/ClientToken;->fromString(Ljava/lang/String;)Lcom/braintreepayments/api/models/ClientToken;

    move-result-object v0

    invoke-static {p3}, Lcom/braintreepayments/api/models/Configuration;->fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/Configuration;

    move-result-object v1

    new-instance v2, Lcom/braintreepayments/api/internal/HttpRequest;

    invoke-static {p2}, Lcom/braintreepayments/api/models/ClientToken;->fromString(Ljava/lang/String;)Lcom/braintreepayments/api/models/ClientToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/braintreepayments/api/models/ClientToken;->getAuthorizationFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/braintreepayments/api/internal/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/braintreepayments/api/BraintreeApi;-><init>(Landroid/content/Context;Lcom/braintreepayments/api/models/ClientToken;Lcom/braintreepayments/api/models/Configuration;Lcom/braintreepayments/api/internal/HttpRequest;)V

    .line 101
    return-void
.end method

.method private getConfiguration()Lcom/braintreepayments/api/models/Configuration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/BraintreeException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mClientToken:Lcom/braintreepayments/api/models/ClientToken;

    invoke-virtual {v2}, Lcom/braintreepayments/api/models/ClientToken;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "configVersion"

    const-string v4, "3"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "configUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mHttpRequest:Lcom/braintreepayments/api/internal/HttpRequest;

    invoke-virtual {v2, v0}, Lcom/braintreepayments/api/internal/HttpRequest;->get(Ljava/lang/String;)Lcom/braintreepayments/api/internal/HttpResponse;

    move-result-object v1

    .line 133
    .local v1, "response":Lcom/braintreepayments/api/internal/HttpResponse;
    invoke-virtual {v1}, Lcom/braintreepayments/api/internal/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/braintreepayments/api/models/Configuration;->fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/Configuration;

    move-result-object v2

    return-object v2
.end method

.method private jsonForType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ServerException;
        }
    .end annotation

    .prologue
    .line 552
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 553
    .local v1, "responseJson":Lorg/json/JSONObject;
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 555
    .end local v1    # "responseJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/braintreepayments/api/exceptions/ServerException;

    const-string v3, "Parsing server response failed"

    invoke-direct {v2, v3}, Lcom/braintreepayments/api/exceptions/ServerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private versionedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/v1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public collectDeviceData(Landroid/app/Activity;Lcom/braintreepayments/api/data/BraintreeEnvironment;)Ljava/lang/String;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "environment"    # Lcom/braintreepayments/api/data/BraintreeEnvironment;

    .prologue
    .line 519
    invoke-virtual {p2}, Lcom/braintreepayments/api/data/BraintreeEnvironment;->getMerchantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/braintreepayments/api/data/BraintreeEnvironment;->getCollectorUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/braintreepayments/api/BraintreeApi;->collectDeviceData(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public collectDeviceData(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "merchantId"    # Ljava/lang/String;
    .param p3, "collectorUrl"    # Ljava/lang/String;

    .prologue
    .line 536
    :try_start_0
    new-instance v2, Lcom/braintreepayments/api/data/BraintreeData;

    invoke-direct {v2, p1, p2, p3}, Lcom/braintreepayments/api/data/BraintreeData;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mBraintreeData:Ljava/lang/Object;

    .line 537
    iget-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mBraintreeData:Ljava/lang/Object;

    check-cast v2, Lcom/braintreepayments/api/data/BraintreeData;

    invoke-virtual {v2}, Lcom/braintreepayments/api/data/BraintreeData;->collectDeviceData()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 542
    .local v0, "deviceData":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 538
    .end local v0    # "deviceData":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 539
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"correlation_id\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->getClientMetadataId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "deviceData":Ljava/lang/String;
    goto :goto_0
.end method

.method public create(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Lcom/braintreepayments/api/models/PaymentMethod;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">(",
            "Lcom/braintreepayments/api/models/PaymentMethod$Builder",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/BraintreeException;
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "paymentMethodBuilder":Lcom/braintreepayments/api/models/PaymentMethod$Builder;, "Lcom/braintreepayments/api/models/PaymentMethod$Builder<TT;>;"
    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mHttpRequest:Lcom/braintreepayments/api/internal/HttpRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payment_methods/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/braintreepayments/api/models/PaymentMethod$Builder;->getApiPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/braintreepayments/api/BraintreeApi;->versionedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/braintreepayments/api/models/PaymentMethod$Builder;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/braintreepayments/api/internal/HttpRequest;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/braintreepayments/api/internal/HttpResponse;

    move-result-object v0

    .line 397
    .local v0, "response":Lcom/braintreepayments/api/internal/HttpResponse;
    invoke-virtual {v0}, Lcom/braintreepayments/api/internal/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/braintreepayments/api/models/PaymentMethod$Builder;->getApiResource()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/braintreepayments/api/BraintreeApi;->jsonForType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/braintreepayments/api/models/PaymentMethod$Builder;->fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod;

    move-result-object v1

    return-object v1
.end method

.method protected disconnectGoogleApiClient()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    invoke-virtual {v0}, Lcom/braintreepayments/api/AndroidPay;->disconnect()V

    .line 283
    :cond_0
    return-void
.end method

.method public finishPayWithPayPal(ILandroid/content/Intent;)Lcom/braintreepayments/api/models/PayPalAccount;
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/BraintreeException;,
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-virtual {p0, v1, p1, p2}, Lcom/braintreepayments/api/BraintreeApi;->handlePayPalResponse(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    move-result-object v0

    .line 325
    .local v0, "payPalAccountBuilder":Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/BraintreeApi;->create(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Lcom/braintreepayments/api/models/PaymentMethod;

    move-result-object v1

    check-cast v1, Lcom/braintreepayments/api/models/PayPalAccount;

    .line 328
    :cond_0
    return-object v1
.end method

.method public finishPayWithPayPal(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/PayPalAccount;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/BraintreeException;,
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0, p1, p2, p3}, Lcom/braintreepayments/api/BraintreeApi;->handlePayPalResponse(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    move-result-object v0

    .line 349
    .local v0, "payPalAccountBuilder":Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/BraintreeApi;->create(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Lcom/braintreepayments/api/models/PaymentMethod;

    move-result-object v1

    check-cast v1, Lcom/braintreepayments/api/models/PayPalAccount;

    .line 352
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finishPayWithVenmo(ILandroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mVenmoAppSwitch:Lcom/braintreepayments/api/VenmoAppSwitch;

    invoke-virtual {v0, p1, p2}, Lcom/braintreepayments/api/VenmoAppSwitch;->handleAppSwitchResponse(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAndroidPayTokenizationParameters()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/braintreepayments/api/AndroidPay;

    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/AndroidPay;-><init>(Lcom/braintreepayments/api/models/Configuration;)V

    iput-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    invoke-virtual {v0}, Lcom/braintreepayments/api/AndroidPay;->getTokenizationParameters()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-result-object v0

    return-object v0
.end method

.method protected getConfigurationString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNonceFromAndroidPayFullWalletResponse(Landroid/content/Intent;)Lcom/braintreepayments/api/models/AndroidPayCard;
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-static {p1}, Lcom/braintreepayments/api/AndroidPay;->isFullWalletResponse(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    const-string v2, "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wallet/FullWallet;

    .line 369
    .local v1, "fullWallet":Lcom/google/android/gms/wallet/FullWallet;
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/google/android/gms/wallet/FullWallet;->getPaymentMethodToken()Lcom/google/android/gms/wallet/PaymentMethodToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/wallet/PaymentMethodToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "androidPayCards"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 371
    .local v0, "androidPayCards":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 372
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/braintreepayments/api/models/AndroidPayCard;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/braintreepayments/api/models/AndroidPayCard;

    .line 376
    .end local v0    # "androidPayCards":Lorg/json/JSONArray;
    .end local v1    # "fullWallet":Lcom/google/android/gms/wallet/FullWallet;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getPaymentMethod(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod;
    .locals 6
    .param p1, "nonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/BraintreeException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 477
    iget-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mHttpRequest:Lcom/braintreepayments/api/internal/HttpRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "payment_methods/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/braintreepayments/api/BraintreeApi;->versionedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/braintreepayments/api/internal/HttpRequest;->get(Ljava/lang/String;)Lcom/braintreepayments/api/internal/HttpResponse;

    move-result-object v1

    .line 480
    .local v1, "response":Lcom/braintreepayments/api/internal/HttpResponse;
    invoke-virtual {v1}, Lcom/braintreepayments/api/internal/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/braintreepayments/api/models/PaymentMethod;->parsePaymentMethods(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 481
    .local v0, "paymentMethodsList":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/models/PaymentMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 482
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/braintreepayments/api/models/PaymentMethod;

    return-object v2

    .line 483
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 484
    new-instance v2, Lcom/braintreepayments/api/exceptions/ServerException;

    const-string v3, "Expected one payment method, got multiple payment methods"

    invoke-direct {v2, v3}, Lcom/braintreepayments/api/exceptions/ServerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 486
    :cond_1
    new-instance v2, Lcom/braintreepayments/api/exceptions/ServerException;

    const-string v3, "No payment methods were found for nonce"

    invoke-direct {v2, v3}, Lcom/braintreepayments/api/exceptions/ServerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPaymentMethods()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/BraintreeException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mHttpRequest:Lcom/braintreepayments/api/internal/HttpRequest;

    const-string v2, "payment_methods"

    invoke-direct {p0, v2}, Lcom/braintreepayments/api/BraintreeApi;->versionedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/braintreepayments/api/internal/HttpRequest;->get(Ljava/lang/String;)Lcom/braintreepayments/api/internal/HttpResponse;

    move-result-object v0

    .line 472
    .local v0, "response":Lcom/braintreepayments/api/internal/HttpResponse;
    invoke-virtual {v0}, Lcom/braintreepayments/api/internal/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/braintreepayments/api/models/PaymentMethod;->parsePaymentMethods(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public handlePayPalResponse(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ConfigurationException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/braintreepayments/api/PayPalHelper;->stopPaypalService(Landroid/content/Context;)V

    .line 299
    invoke-static {p1, p2, p3}, Lcom/braintreepayments/api/PayPalHelper;->getBuilderFromActivity(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected isAndroidPayEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v2}, Lcom/braintreepayments/api/models/Configuration;->getAndroidPay()Lcom/braintreepayments/api/models/AndroidPayConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/braintreepayments/api/models/AndroidPayConfiguration;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    iget-object v3, p0, Lcom/braintreepayments/api/BraintreeApi;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0
.end method

.method public isCvvChallengePresent()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/Configuration;->isCvvChallengePresent()Z

    move-result v0

    return v0
.end method

.method public isPayPalEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/Configuration;->isPayPalEnabled()Z

    move-result v0

    return v0
.end method

.method public isPostalCodeChallengePresent()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/Configuration;->isPostalCodeChallengePresent()Z

    move-result v0

    return v0
.end method

.method protected isSetup()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThreeDSecureEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/Configuration;->isThreeDSecureEnabled()Z

    move-result v0

    return v0
.end method

.method public isVenmoEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mVenmoAppSwitch:Lcom/braintreepayments/api/VenmoAppSwitch;

    invoke-virtual {v0}, Lcom/braintreepayments/api/VenmoAppSwitch;->isAvailable()Z

    move-result v0

    return v0
.end method

.method protected performAndroidPayChangeMaskedWalletRequest(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "googleTransactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/UnexpectedException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/braintreepayments/api/AndroidPay;

    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/AndroidPay;-><init>(Lcom/braintreepayments/api/models/Configuration;)V

    iput-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braintreepayments/api/AndroidPay;->performChangeMaskedWalletRequest(Landroid/content/Context;ILjava/lang/String;)V

    .line 264
    return-void
.end method

.method protected performAndroidPayFullWalletRequest(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "cart"    # Lcom/google/android/gms/wallet/Cart;
    .param p4, "googleTransactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/UnexpectedException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/braintreepayments/api/AndroidPay;

    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/AndroidPay;-><init>(Lcom/braintreepayments/api/models/Configuration;)V

    iput-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    .line 272
    :cond_0
    if-eqz p3, :cond_1

    .line 273
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    invoke-virtual {v0, p3}, Lcom/braintreepayments/api/AndroidPay;->setCart(Lcom/google/android/gms/wallet/Cart;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    invoke-virtual {v0, p1, p2, p4}, Lcom/braintreepayments/api/AndroidPay;->performFullWalletRequest(Landroid/content/Context;ILjava/lang/String;)V

    .line 277
    return-void
.end method

.method protected performAndroidPayMaskedWalletRequest(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "cart"    # Lcom/google/android/gms/wallet/Cart;
    .param p4, "isBillingAgreement"    # Z
    .param p5, "shippingAddressRequired"    # Z
    .param p6, "phoneNumberRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/InvalidArgumentException;,
            Lcom/braintreepayments/api/exceptions/UnexpectedException;
        }
    .end annotation

    .prologue
    .line 242
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 243
    new-instance v0, Lcom/braintreepayments/api/exceptions/InvalidArgumentException;

    const-string v1, "The cart must be null when isBillingAgreement is true"

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/exceptions/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    if-nez p4, :cond_1

    if-nez p3, :cond_1

    .line 245
    new-instance v0, Lcom/braintreepayments/api/exceptions/InvalidArgumentException;

    const-string v1, "Cart cannot be null unless isBillingAgreement is true"

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/exceptions/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    if-nez v0, :cond_2

    .line 249
    new-instance v0, Lcom/braintreepayments/api/AndroidPay;

    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/AndroidPay;-><init>(Lcom/braintreepayments/api/models/Configuration;)V

    iput-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    invoke-virtual {v0, p3}, Lcom/braintreepayments/api/AndroidPay;->setCart(Lcom/google/android/gms/wallet/Cart;)V

    .line 253
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mAndroidPay:Lcom/braintreepayments/api/AndroidPay;

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/braintreepayments/api/AndroidPay;->performMaskedWalletRequest(Landroid/content/Context;IZZZ)V

    .line 255
    return-void
.end method

.method public sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "integrationType"    # Ljava/lang/String;

    .prologue
    .line 497
    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v1}, Lcom/braintreepayments/api/models/Configuration;->isAnalyticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    new-instance v0, Lcom/braintreepayments/api/models/AnalyticsRequest;

    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/braintreepayments/api/models/AnalyticsRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .local v0, "analyticsRequest":Lcom/braintreepayments/api/models/AnalyticsRequest;
    :try_start_0
    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mHttpRequest:Lcom/braintreepayments/api/internal/HttpRequest;

    iget-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v2}, Lcom/braintreepayments/api/models/Configuration;->getAnalytics()Lcom/braintreepayments/api/models/AnalyticsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/braintreepayments/api/models/AnalyticsConfiguration;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/AnalyticsRequest;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/braintreepayments/api/internal/HttpRequest;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/braintreepayments/api/internal/HttpResponse;
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/BraintreeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/braintreepayments/api/exceptions/ErrorWithResponse; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v0    # "analyticsRequest":Lcom/braintreepayments/api/models/AnalyticsRequest;
    :cond_0
    :goto_0
    return-void

    .line 504
    .restart local v0    # "analyticsRequest":Lcom/braintreepayments/api/models/AnalyticsRequest;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 502
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected setup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/BraintreeException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/braintreepayments/api/BraintreeApi;->getConfiguration()Lcom/braintreepayments/api/models/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    .line 120
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mHttpRequest:Lcom/braintreepayments/api/internal/HttpRequest;

    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v1}, Lcom/braintreepayments/api/models/Configuration;->getClientApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/internal/HttpRequest;->setBaseUrl(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mBraintreeData:Ljava/lang/Object;

    .line 123
    new-instance v0, Lcom/braintreepayments/api/VenmoAppSwitch;

    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-direct {v0, v1, v2}, Lcom/braintreepayments/api/VenmoAppSwitch;-><init>(Landroid/content/Context;Lcom/braintreepayments/api/models/Configuration;)V

    iput-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mVenmoAppSwitch:Lcom/braintreepayments/api/VenmoAppSwitch;

    .line 124
    return-void
.end method

.method public startPayWithPayPal(Landroid/app/Activity;ILjava/util/List;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p3, "additionalScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v1}, Lcom/braintreepayments/api/models/Configuration;->getPayPal()Lcom/braintreepayments/api/models/PayPalConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/braintreepayments/api/PayPalHelper;->startPaypal(Landroid/content/Context;Lcom/braintreepayments/api/models/PayPalConfiguration;)V

    .line 213
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/Configuration;->getPayPal()Lcom/braintreepayments/api/models/PayPalConfiguration;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/braintreepayments/api/PayPalHelper;->launchPayPal(Landroid/app/Activity;ILcom/braintreepayments/api/models/PayPalConfiguration;Ljava/util/List;)V

    .line 214
    return-void
.end method

.method public startPayWithVenmo(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/AppSwitchNotAvailableException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/braintreepayments/api/BraintreeApi;->mVenmoAppSwitch:Lcom/braintreepayments/api/VenmoAppSwitch;

    invoke-virtual {v0, p1, p2}, Lcom/braintreepayments/api/VenmoAppSwitch;->launch(Landroid/app/Activity;I)V

    .line 229
    return-void
.end method

.method public threeDSecureLookup(Ljava/lang/String;Ljava/lang/String;)Lcom/braintreepayments/api/models/ThreeDSecureLookup;
    .locals 5
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/String;
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/braintreepayments/api/exceptions/BraintreeException;,
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;
        }
    .end annotation

    .prologue
    .line 453
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "merchantAccountId"

    iget-object v4, p0, Lcom/braintreepayments/api/BraintreeApi;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v4}, Lcom/braintreepayments/api/models/Configuration;->getMerchantAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "amount"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 457
    .local v0, "params":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/braintreepayments/api/BraintreeApi;->mHttpRequest:Lcom/braintreepayments/api/internal/HttpRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "payment_methods/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/three_d_secure/lookup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/braintreepayments/api/BraintreeApi;->versionedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/braintreepayments/api/internal/HttpRequest;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/braintreepayments/api/internal/HttpResponse;

    move-result-object v1

    .line 461
    .local v1, "response":Lcom/braintreepayments/api/internal/HttpResponse;
    invoke-virtual {v1}, Lcom/braintreepayments/api/internal/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/ThreeDSecureLookup;

    move-result-object v2

    return-object v2
.end method

.method public tokenize(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Ljava/lang/String;
    .locals 2
    .param p1, "paymentMethodBuilder"    # Lcom/braintreepayments/api/models/PaymentMethod$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/BraintreeException;,
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;
        }
    .end annotation

    .prologue
    .line 417
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/braintreepayments/api/models/PaymentMethod$Builder;->validate(Z)Lcom/braintreepayments/api/models/PaymentMethod$Builder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/BraintreeApi;->create(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Lcom/braintreepayments/api/models/PaymentMethod;

    move-result-object v0

    .line 418
    .local v0, "paymentMethod":Lcom/braintreepayments/api/models/PaymentMethod;
    invoke-virtual {v0}, Lcom/braintreepayments/api/models/PaymentMethod;->getNonce()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
