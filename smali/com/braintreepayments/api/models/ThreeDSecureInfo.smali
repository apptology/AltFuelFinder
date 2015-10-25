.class public Lcom/braintreepayments/api/models/ThreeDSecureInfo;
.super Ljava/lang/Object;
.source "ThreeDSecureInfo.java"

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
            "Lcom/braintreepayments/api/models/ThreeDSecureInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLiabilityShiftPossible:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "liabilityShiftPossible"
    .end annotation
.end field

.field private mLiabilityShifted:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "liabilityShifted"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/braintreepayments/api/models/ThreeDSecureInfo$1;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/ThreeDSecureInfo$1;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/models/ThreeDSecureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureInfo;->mLiabilityShifted:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/braintreepayments/api/models/ThreeDSecureInfo;->mLiabilityShiftPossible:Z

    .line 49
    return-void

    :cond_0
    move v0, v2

    .line 47
    goto :goto_0

    :cond_1
    move v1, v2

    .line 48
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/braintreepayments/api/models/ThreeDSecureInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/braintreepayments/api/models/ThreeDSecureInfo$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/models/ThreeDSecureInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public isLiabilityShiftPossible()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureInfo;->mLiabilityShiftPossible:Z

    return v0
.end method

.method public isLiabilityShifted()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureInfo;->mLiabilityShifted:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    iget-boolean v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureInfo;->mLiabilityShifted:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-boolean v0, p0, Lcom/braintreepayments/api/models/ThreeDSecureInfo;->mLiabilityShiftPossible:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 44
    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0

    :cond_1
    move v1, v2

    .line 43
    goto :goto_1
.end method
