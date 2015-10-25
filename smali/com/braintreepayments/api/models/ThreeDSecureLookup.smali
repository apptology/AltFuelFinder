.class public Lcom/braintreepayments/api/models/ThreeDSecureLookup;
.super Ljava/lang/Object;
.source "ThreeDSecureLookup.java"

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
            "Lcom/braintreepayments/api/models/ThreeDSecureLookup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAcsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "acsUrl"
    .end annotation
.end field

.field private mCard:Lcom/braintreepayments/api/models/Card;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card"
    .end annotation
.end field

.field private mMd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "md"
    .end annotation
.end field

.field private mPareq:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pareq"
    .end annotation
.end field

.field private mTermUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "termUrl"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/braintreepayments/api/models/ThreeDSecureLookup$1;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/ThreeDSecureLookup$1;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mAcsUrl:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mMd:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mTermUrl:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mPareq:Ljava/lang/String;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/braintreepayments/api/models/ThreeDSecureLookup$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/braintreepayments/api/models/ThreeDSecureLookup$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/models/ThreeDSecureLookup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/ThreeDSecureLookup;
    .locals 6
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v2, "json":Lorg/json/JSONObject;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 40
    .local v1, "gson":Lcom/google/gson/Gson;
    const-string v4, "paymentMethod"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/Card;

    .line 41
    .local v0, "card":Lcom/braintreepayments/api/models/Card;
    const-string v4, "threeDSecureInfo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/braintreepayments/api/models/ThreeDSecureInfo;

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/braintreepayments/api/models/ThreeDSecureInfo;

    invoke-virtual {v0, v4}, Lcom/braintreepayments/api/models/Card;->setThreeDSecureInfo(Lcom/braintreepayments/api/models/ThreeDSecureInfo;)V

    .line 44
    const-string v4, "lookup"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/braintreepayments/api/models/ThreeDSecureLookup;

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/braintreepayments/api/models/ThreeDSecureLookup;

    .line 46
    .local v3, "lookup":Lcom/braintreepayments/api/models/ThreeDSecureLookup;
    iput-object v0, v3, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mCard:Lcom/braintreepayments/api/models/Card;

    .line 48
    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getAcsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mAcsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCard()Lcom/braintreepayments/api/models/Card;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mCard:Lcom/braintreepayments/api/models/Card;

    return-object v0
.end method

.method public getMd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mMd:Ljava/lang/String;

    return-object v0
.end method

.method public getPareq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mPareq:Ljava/lang/String;

    return-object v0
.end method

.method public getTermUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mTermUrl:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mAcsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mMd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mTermUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->mPareq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return-void
.end method
