.class public final Lcom/braintreepayments/api/data/BraintreeData;
.super Ljava/lang/Object;
.source "BraintreeData.java"


# instance fields
.field private mCorrelationId:Ljava/lang/String;

.field private mDeviceCollector:Lcom/devicecollector/DeviceCollector;

.field private mDeviceSessionId:Ljava/lang/String;

.field private mFraudMerchantId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/braintreepayments/api/data/BraintreeEnvironment;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "environment"    # Lcom/braintreepayments/api/data/BraintreeEnvironment;

    .prologue
    .line 28
    invoke-virtual {p2}, Lcom/braintreepayments/api/data/BraintreeEnvironment;->getMerchantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/braintreepayments/api/data/BraintreeEnvironment;->getCollectorUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/braintreepayments/api/data/BraintreeData;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fraudMerchantId"    # Ljava/lang/String;
    .param p3, "collectorUrl"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/braintreepayments/api/data/BraintreeData;->mFraudMerchantId:Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/data/BraintreeData;->getCorrelationId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/data/BraintreeData;->mCorrelationId:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/devicecollector/DeviceCollector;

    invoke-direct {v0, p1}, Lcom/devicecollector/DeviceCollector;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/braintreepayments/api/data/BraintreeData;->mDeviceCollector:Lcom/devicecollector/DeviceCollector;

    .line 43
    iget-object v0, p0, Lcom/braintreepayments/api/data/BraintreeData;->mDeviceCollector:Lcom/devicecollector/DeviceCollector;

    iget-object v1, p0, Lcom/braintreepayments/api/data/BraintreeData;->mFraudMerchantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/devicecollector/DeviceCollector;->setMerchantId(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/braintreepayments/api/data/BraintreeData;->mDeviceCollector:Lcom/devicecollector/DeviceCollector;

    invoke-virtual {v0, p3}, Lcom/devicecollector/DeviceCollector;->setCollectorUrl(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private getCorrelationId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v4, "com.paypal.android.sdk.payments.PayPalConfiguration"

    invoke-virtual {v2, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getClientMetadataId"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 72
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 73
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    move-object v2, v3

    .line 74
    goto :goto_0
.end method


# virtual methods
.method public collectDeviceData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    iget-object v1, p0, Lcom/braintreepayments/api/data/BraintreeData;->mDeviceSessionId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 53
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braintreepayments/api/data/BraintreeData;->mDeviceSessionId:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/braintreepayments/api/data/BraintreeData;->mDeviceCollector:Lcom/devicecollector/DeviceCollector;

    iget-object v2, p0, Lcom/braintreepayments/api/data/BraintreeData;->mDeviceSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/devicecollector/DeviceCollector;->collect(Ljava/lang/String;)V

    .line 57
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"device_session_id\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braintreepayments/api/data/BraintreeData;->mDeviceSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"fraud_merchant_id\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braintreepayments/api/data/BraintreeData;->mFraudMerchantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/braintreepayments/api/data/BraintreeData;->mCorrelationId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"correlation_id\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braintreepayments/api/data/BraintreeData;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 62
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
