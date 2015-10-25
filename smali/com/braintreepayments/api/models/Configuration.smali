.class public Lcom/braintreepayments/api/models/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private mAnalyticsConfiguration:Lcom/braintreepayments/api/models/AnalyticsConfiguration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "analytics"
    .end annotation
.end field

.field private mAndroidPayConfiguration:Lcom/braintreepayments/api/models/AndroidPayConfiguration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "androidPay"
    .end annotation
.end field

.field private mChallenges:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "challenges"
    .end annotation
.end field

.field private mClientApiUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clientApiUrl"
    .end annotation
.end field

.field private mMerchantAccountId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "merchantAccountId"
    .end annotation
.end field

.field private mMerchantId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "merchantId"
    .end annotation
.end field

.field private mPayPalConfiguration:Lcom/braintreepayments/api/models/PayPalConfiguration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paypal"
    .end annotation
.end field

.field private mPaypalEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paypalEnabled"
    .end annotation
.end field

.field private mThreeDSecureEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "threeDSecureEnabled"
    .end annotation
.end field

.field private mVenmo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "venmo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/Configuration;
    .locals 2
    .param p0, "configuration"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/Configuration;

    return-object v0
.end method

.method private isChallengePresent(Ljava/lang/String;)Z
    .locals 5
    .param p1, "requestedChallenge"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v4, p0, Lcom/braintreepayments/api/models/Configuration;->mChallenges:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/braintreepayments/api/models/Configuration;->mChallenges:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 129
    iget-object v0, p0, Lcom/braintreepayments/api/models/Configuration;->mChallenges:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 130
    .local v1, "challenge":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    const/4 v4, 0x1

    .line 136
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "challenge":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return v4

    .line 129
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "challenge":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "challenge":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getAnalytics()Lcom/braintreepayments/api/models/AnalyticsConfiguration;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/braintreepayments/api/models/Configuration;->mAnalyticsConfiguration:Lcom/braintreepayments/api/models/AnalyticsConfiguration;

    return-object v0
.end method

.method public getAndroidPay()Lcom/braintreepayments/api/models/AndroidPayConfiguration;
    .locals 1
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/braintreepayments/api/models/Configuration;->mAndroidPayConfiguration:Lcom/braintreepayments/api/models/AndroidPayConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/braintreepayments/api/models/AndroidPayConfiguration;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/AndroidPayConfiguration;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/models/Configuration;->mAndroidPayConfiguration:Lcom/braintreepayments/api/models/AndroidPayConfiguration;

    goto :goto_0
.end method

.method public getClientApiUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/braintreepayments/api/models/Configuration;->mClientApiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/braintreepayments/api/models/Configuration;->mMerchantAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/braintreepayments/api/models/Configuration;->mMerchantId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayPal()Lcom/braintreepayments/api/models/PayPalConfiguration;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/braintreepayments/api/models/Configuration;->mPayPalConfiguration:Lcom/braintreepayments/api/models/PayPalConfiguration;

    return-object v0
.end method

.method public getVenmoState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/braintreepayments/api/models/Configuration;->mVenmo:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    const-string v0, "off"

    .line 87
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/models/Configuration;->mVenmo:Ljava/lang/String;

    goto :goto_0
.end method

.method public isAnalyticsEnabled()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/braintreepayments/api/models/Configuration;->mAnalyticsConfiguration:Lcom/braintreepayments/api/models/AnalyticsConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/api/models/Configuration;->mAnalyticsConfiguration:Lcom/braintreepayments/api/models/AnalyticsConfiguration;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/AnalyticsConfiguration;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCvvChallengePresent()Z
    .locals 1

    .prologue
    .line 46
    const-string v0, "cvv"

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/models/Configuration;->isChallengePresent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPayPalEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/braintreepayments/api/models/Configuration;->mPaypalEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/api/models/Configuration;->mPayPalConfiguration:Lcom/braintreepayments/api/models/PayPalConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPostalCodeChallengePresent()Z
    .locals 1

    .prologue
    .line 53
    const-string v0, "postal_code"

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/models/Configuration;->isChallengePresent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isThreeDSecureEnabled()Z
    .locals 1
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/braintreepayments/api/models/Configuration;->mThreeDSecureEnabled:Z

    return v0
.end method
