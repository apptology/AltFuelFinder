.class public Lcom/braintreepayments/api/models/Card$BillingAddress;
.super Ljava/lang/Object;
.source "Card.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/models/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BillingAddress"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/braintreepayments/api/models/Card$BillingAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCountryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "countryName"
    .end annotation
.end field

.field private mFirstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstName"
    .end annotation
.end field

.field private mLastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastName"
    .end annotation
.end field

.field private mLocality:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locality"
    .end annotation
.end field

.field private mPostalCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postalCode"
    .end annotation
.end field

.field private mRegion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "region"
    .end annotation
.end field

.field private mStreetAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "streetAddress"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/braintreepayments/api/models/Card$BillingAddress$1;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/Card$BillingAddress$1;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/models/Card$BillingAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mFirstName:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mLastName:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mCountryName:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mLocality:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mPostalCode:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mRegion:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mStreetAddress:Ljava/lang/String;

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/braintreepayments/api/models/Card$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/braintreepayments/api/models/Card$1;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/models/Card$BillingAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method protected setCountryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryName"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mCountryName:Ljava/lang/String;

    .line 190
    return-void
.end method

.method protected setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mFirstName:Ljava/lang/String;

    .line 182
    return-void
.end method

.method protected setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mLastName:Ljava/lang/String;

    .line 186
    return-void
.end method

.method protected setLocality(Ljava/lang/String;)V
    .locals 0
    .param p1, "locality"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mLocality:Ljava/lang/String;

    .line 194
    return-void
.end method

.method protected setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mPostalCode:Ljava/lang/String;

    .line 198
    return-void
.end method

.method protected setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mRegion:Ljava/lang/String;

    .line 202
    return-void
.end method

.method protected setStreetAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "streetAddress"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mStreetAddress:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mCountryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mLocality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mRegion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/braintreepayments/api/models/Card$BillingAddress;->mStreetAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    return-void
.end method
