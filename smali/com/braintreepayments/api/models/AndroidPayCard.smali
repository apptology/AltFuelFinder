.class public Lcom/braintreepayments/api/models/AndroidPayCard;
.super Lcom/braintreepayments/api/models/PaymentMethod;
.source "AndroidPayCard.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/braintreepayments/api/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/braintreepayments/api/models/AndroidPayCard;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PAYMENT_METHOD_TYPE:Ljava/lang/String; = "AndroidPayCard"


# instance fields
.field private mDetails:Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/braintreepayments/api/models/AndroidPayCard$1;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/AndroidPayCard$1;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/models/AndroidPayCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/braintreepayments/api/models/PaymentMethod;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/braintreepayments/api/models/PaymentMethod;-><init>()V

    .line 57
    const-class v0, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;

    iput-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard;->mDetails:Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard;->mNonce:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard;->mDescription:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/PaymentMethodOptions;

    iput-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard;->mPaymentMethodOptions:Lcom/braintreepayments/api/models/PaymentMethodOptions;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard;->mSource:Ljava/lang/String;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/braintreepayments/api/models/AndroidPayCard$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/braintreepayments/api/models/AndroidPayCard$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/models/AndroidPayCard;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/AndroidPayCard;
    .locals 2
    .param p0, "androidPayCard"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/braintreepayments/api/models/AndroidPayCard;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/AndroidPayCard;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getLastTwo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard;->mDetails:Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;->getLastTwo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "Google Wallet"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard;->mDetails:Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    iget-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard;->mNonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard;->mPaymentMethodOptions:Lcom/braintreepayments/api/models/PaymentMethodOptions;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 51
    iget-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return-void
.end method
