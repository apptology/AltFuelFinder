.class public Lcom/braintreepayments/api/models/Card;
.super Lcom/braintreepayments/api/models/PaymentMethod;
.source "Card.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braintreepayments/api/models/Card$BillingAddress;,
        Lcom/braintreepayments/api/models/Card$CardDetails;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/braintreepayments/api/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PAYMENT_METHOD_TYPE:Ljava/lang/String; = "CreditCard"


# instance fields
.field private mBillingAddress:Lcom/braintreepayments/api/models/Card$BillingAddress;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "billingAddress"
    .end annotation
.end field

.field private mCvv:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cvv"
    .end annotation
.end field

.field private mDetails:Lcom/braintreepayments/api/models/Card$CardDetails;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details"
    .end annotation
.end field

.field private mExpirationDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expirationDate"
    .end annotation
.end field

.field private mExpirationMonth:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expirationMonth"
    .end annotation
.end field

.field private mExpirationYear:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expirationYear"
    .end annotation
.end field

.field private mNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field private mThreeDSecureInfo:Lcom/braintreepayments/api/models/ThreeDSecureInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "threeDSecureInfo"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/braintreepayments/api/models/Card$1;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/Card$1;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/models/Card;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/braintreepayments/api/models/PaymentMethod;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/braintreepayments/api/models/PaymentMethod;-><init>()V

    .line 113
    const-class v0, Lcom/braintreepayments/api/models/Card$BillingAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/Card$BillingAddress;

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card;->mBillingAddress:Lcom/braintreepayments/api/models/Card$BillingAddress;

    .line 114
    const-class v0, Lcom/braintreepayments/api/models/Card$CardDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/Card$CardDetails;

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card;->mDetails:Lcom/braintreepayments/api/models/Card$CardDetails;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card;->mExpirationMonth:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card;->mExpirationYear:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card;->mExpirationDate:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card;->mNumber:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card;->mCvv:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card;->mNonce:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card;->mDescription:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/PaymentMethodOptions;

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card;->mPaymentMethodOptions:Lcom/braintreepayments/api/models/PaymentMethodOptions;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card;->mSource:Ljava/lang/String;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/braintreepayments/api/models/Card$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/braintreepayments/api/models/Card$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/models/Card;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/Card;
    .locals 2
    .param p0, "creditCard"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/Card;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getLastTwo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mDetails:Lcom/braintreepayments/api/models/Card$CardDetails;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/Card$CardDetails;->getLastTwo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreeDSecureInfo()Lcom/braintreepayments/api/models/ThreeDSecureInfo;
    .locals 1
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mThreeDSecureInfo:Lcom/braintreepayments/api/models/ThreeDSecureInfo;

    return-object v0
.end method

.method public getTypeLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mDetails:Lcom/braintreepayments/api/models/Card$CardDetails;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/Card$CardDetails;->getCardType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setBillingAddress(Lcom/braintreepayments/api/models/Card$BillingAddress;)V
    .locals 0
    .param p1, "billingAddress"    # Lcom/braintreepayments/api/models/Card$BillingAddress;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card;->mBillingAddress:Lcom/braintreepayments/api/models/Card$BillingAddress;

    .line 58
    return-void
.end method

.method protected setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card;->mNumber:Ljava/lang/String;

    .line 79
    return-void
.end method

.method protected setCvv(Ljava/lang/String;)V
    .locals 0
    .param p1, "cvv"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card;->mCvv:Ljava/lang/String;

    .line 83
    return-void
.end method

.method protected setExpirationDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "expirationDate"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card;->mExpirationDate:Ljava/lang/String;

    .line 75
    return-void
.end method

.method protected setExpirationMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "expirationMonth"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card;->mExpirationMonth:Ljava/lang/String;

    .line 67
    return-void
.end method

.method protected setExpirationYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "expirationYear"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card;->mExpirationYear:Ljava/lang/String;

    .line 71
    return-void
.end method

.method protected setThreeDSecureInfo(Lcom/braintreepayments/api/models/ThreeDSecureInfo;)V
    .locals 0
    .param p1, "threeDSecureInfo"    # Lcom/braintreepayments/api/models/ThreeDSecureInfo;
    .annotation build Lcom/braintreepayments/api/annotations/Beta;
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card;->mThreeDSecureInfo:Lcom/braintreepayments/api/models/ThreeDSecureInfo;

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mBillingAddress:Lcom/braintreepayments/api/models/Card$BillingAddress;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mDetails:Lcom/braintreepayments/api/models/Card$CardDetails;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mExpirationMonth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mExpirationYear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mExpirationDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mCvv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mNonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mPaymentMethodOptions:Lcom/braintreepayments/api/models/PaymentMethodOptions;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 109
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return-void
.end method
