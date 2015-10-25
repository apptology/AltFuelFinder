.class public final Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;
.super Ljava/lang/Object;
.source "ErrorWithResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/exceptions/ErrorWithResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BraintreeErrors"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private error:Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

.field private fieldErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors$1;

    invoke-direct {v0}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors$1;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;->fieldErrors:Ljava/util/List;

    .line 89
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;->fieldErrors:Ljava/util/List;

    .line 113
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;->fieldErrors:Ljava/util/List;

    sget-object v1, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 114
    const-class v0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    iput-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;->error:Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/braintreepayments/api/exceptions/ErrorWithResponse$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/braintreepayments/api/exceptions/ErrorWithResponse$1;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method protected getFieldErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;->fieldErrors:Ljava/util/List;

    return-object v0
.end method

.method protected getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;->error:Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;->error:Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    invoke-virtual {v0}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Parsing error response failed"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;->fieldErrors:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 109
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;->error:Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 110
    return-void
.end method
