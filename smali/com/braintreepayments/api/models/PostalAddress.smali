.class public Lcom/braintreepayments/api/models/PostalAddress;
.super Ljava/lang/Object;
.source "PostalAddress.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/braintreepayments/api/models/PostalAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCountryCodeAlpha2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field private mExtendedAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "street2"
    .end annotation
.end field

.field private mLocality:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field private mPostalCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postalCode"
    .end annotation
.end field

.field private mRegion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field

.field private mStreetAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "street1"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/braintreepayments/api/models/PostalAddress$1;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/PostalAddress$1;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/models/PostalAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mStreetAddress:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mExtendedAddress:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mLocality:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mCountryCodeAlpha2:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mPostalCode:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mRegion:Ljava/lang/String;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/braintreepayments/api/models/PostalAddress$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/braintreepayments/api/models/PostalAddress$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/models/PostalAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getCountryCodeAlpha2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mCountryCodeAlpha2:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mExtendedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mStreetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public setCountryCodeAlpha2(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCodeAlpha2"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/braintreepayments/api/models/PostalAddress;->mCountryCodeAlpha2:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setExtendedAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "extendedAddress"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/braintreepayments/api/models/PostalAddress;->mExtendedAddress:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setLocality(Ljava/lang/String;)V
    .locals 0
    .param p1, "locality"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/braintreepayments/api/models/PostalAddress;->mLocality:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/braintreepayments/api/models/PostalAddress;->mPostalCode:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/braintreepayments/api/models/PostalAddress;->mRegion:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setStreetAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "streetAddress"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/braintreepayments/api/models/PostalAddress;->mStreetAddress:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mStreetAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mExtendedAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mLocality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mCountryCodeAlpha2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/braintreepayments/api/models/PostalAddress;->mRegion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method
