.class public final Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;
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
    name = "BraintreeError"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private field:Ljava/lang/String;

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

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError$1;

    invoke-direct {v0}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError$1;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->fieldErrors:Ljava/util/List;

    .line 131
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->fieldErrors:Ljava/util/List;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->fieldErrors:Ljava/util/List;

    .line 188
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->fieldErrors:Ljava/util/List;

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->field:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->message:Ljava/lang/String;

    .line 191
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/braintreepayments/api/exceptions/ErrorWithResponse$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/braintreepayments/api/exceptions/ErrorWithResponse$1;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->field:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public errorFor(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v2, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->fieldErrors:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->fieldErrors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    .line 164
    .local v0, "error":Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;
    iget-object v2, v0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->field:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    .end local v0    # "error":Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->field:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldErrors()Ljava/util/List;
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
    .line 152
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->fieldErrors:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BraintreeError for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->field:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->fieldErrors:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->fieldErrors:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->fieldErrors:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 182
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->field:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    return-void
.end method
