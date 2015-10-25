.class public Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;
.super Ljava/lang/Object;
.source "ThreeDSecureAuthenticationResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/braintreepayments/api/annotations/Beta;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCard:Lcom/braintreepayments/api/models/Card;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card"
    .end annotation
.end field

.field private mErrors:Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errors"
    .end annotation
.end field

.field private mException:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exception"
    .end annotation
.end field

.field private mSuccess:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse$1;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse$1;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mSuccess:Z

    .line 126
    const-class v0, Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/Card;

    iput-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mCard:Lcom/braintreepayments/api/models/Card;

    .line 127
    const-class v0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;

    iput-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mErrors:Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mException:Ljava/lang/String;

    .line 129
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromException(Ljava/lang/String;)Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;
    .locals 2
    .param p0, "exception"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;-><init>()V

    .line 78
    .local v0, "authenticationResponse":Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mSuccess:Z

    .line 79
    iput-object p0, v0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mException:Ljava/lang/String;

    .line 81
    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;
    .locals 7
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;-><init>()V

    .line 50
    .local v0, "authenticationResponse":Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 53
    .local v3, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v4, "json":Lorg/json/JSONObject;
    const-string v5, "paymentMethod"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braintreepayments/api/models/Card;

    .line 56
    .local v1, "card":Lcom/braintreepayments/api/models/Card;
    const-string v5, "threeDSecureInfo"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/braintreepayments/api/models/ThreeDSecureInfo;

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/braintreepayments/api/models/ThreeDSecureInfo;

    invoke-virtual {v1, v5}, Lcom/braintreepayments/api/models/Card;->setThreeDSecureInfo(Lcom/braintreepayments/api/models/ThreeDSecureInfo;)V

    .line 59
    iput-object v1, v0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mCard:Lcom/braintreepayments/api/models/Card;

    .line 60
    const-string v5, "success"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mSuccess:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "card":Lcom/braintreepayments/api/models/Card;
    .end local v4    # "json":Lorg/json/JSONObject;
    :goto_0
    const-class v5, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;

    invoke-virtual {v3, p0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;

    iput-object v5, v0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mErrors:Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;

    .line 66
    return-object v0

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Lorg/json/JSONException;
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mSuccess:Z

    goto :goto_0
.end method

.method public static isThreeDSecureAuthenticationResponse(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    const-string v0, "com.braintreepayments.api.EXTRA_THREE_D_SECURE_RESULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getCard()Lcom/braintreepayments/api/models/Card;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mCard:Lcom/braintreepayments/api/models/Card;

    return-object v0
.end method

.method public getErrors()Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mErrors:Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;

    return-object v0
.end method

.method public getException()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mException:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mSuccess:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 119
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mCard:Lcom/braintreepayments/api/models/Card;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mErrors:Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 121
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->mException:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
