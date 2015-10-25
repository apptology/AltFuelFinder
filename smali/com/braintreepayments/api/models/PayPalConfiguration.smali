.class public Lcom/braintreepayments/api/models/PayPalConfiguration;
.super Ljava/lang/Object;
.source "PayPalConfiguration.java"


# instance fields
.field private mClientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clientId"
    .end annotation
.end field

.field private mDirectBaseUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "directBaseUrl"
    .end annotation
.end field

.field private mDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayName"
    .end annotation
.end field

.field private mEnvironment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "environment"
    .end annotation
.end field

.field private mPrivacyUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "privacyUrl"
    .end annotation
.end field

.field private mTouchDisabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "touchDisabled"
    .end annotation
.end field

.field private mUserAgreementUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userAgreementUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalConfiguration;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectBaseUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/braintreepayments/api/models/PayPalConfiguration;->mDirectBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalConfiguration;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalConfiguration;->mEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalConfiguration;->mPrivacyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchDisabled()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/braintreepayments/api/models/PayPalConfiguration;->mTouchDisabled:Z

    return v0
.end method

.method public getUserAgreementUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalConfiguration;->mUserAgreementUrl:Ljava/lang/String;

    return-object v0
.end method
