.class final Lcom/braintreepayments/api/models/Card$1;
.super Ljava/lang/Object;
.source "Card.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/models/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/braintreepayments/api/models/Card;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/braintreepayments/api/models/Card;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 127
    new-instance v0, Lcom/braintreepayments/api/models/Card;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/braintreepayments/api/models/Card;-><init>(Landroid/os/Parcel;Lcom/braintreepayments/api/models/Card$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/Card$1;->createFromParcel(Landroid/os/Parcel;)Lcom/braintreepayments/api/models/Card;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/braintreepayments/api/models/Card;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 129
    new-array v0, p1, [Lcom/braintreepayments/api/models/Card;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/Card$1;->newArray(I)[Lcom/braintreepayments/api/models/Card;

    move-result-object v0

    return-object v0
.end method
