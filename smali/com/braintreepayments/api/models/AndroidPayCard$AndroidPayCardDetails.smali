.class Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;
.super Ljava/lang/Object;
.source "AndroidPayCard.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/models/AndroidPayCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidPayCardDetails"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCardType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardType"
    .end annotation
.end field

.field private mLastTwo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastTwo"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails$1;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails$1;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;->mCardType:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;->mLastTwo:Ljava/lang/String;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/braintreepayments/api/models/AndroidPayCard$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/braintreepayments/api/models/AndroidPayCard$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method protected getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;->mCardType:Ljava/lang/String;

    return-object v0
.end method

.method protected getLastTwo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;->mLastTwo:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;->mCardType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;->mLastTwo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return-void
.end method
