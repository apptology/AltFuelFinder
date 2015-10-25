.class public Lcom/braintreepayments/api/models/AndroidPayConfiguration;
.super Ljava/lang/Object;
.source "AndroidPayConfiguration.java"


# annotations
.annotation build Lcom/braintreepayments/api/annotations/Beta;
.end annotation


# instance fields
.field private mDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayName"
    .end annotation
.end field

.field private mEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field private mEnvironment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "environment"
    .end annotation
.end field

.field private mGoogleAuthorizationFingerprint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "googleAuthorizationFingerprint"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayConfiguration;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayConfiguration;->mEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAuthorizationFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayConfiguration;->mGoogleAuthorizationFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/braintreepayments/api/models/AndroidPayConfiguration;->mEnabled:Z

    return v0
.end method
