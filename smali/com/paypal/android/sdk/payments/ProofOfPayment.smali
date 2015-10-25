.class public final Lcom/paypal/android/sdk/payments/ProofOfPayment;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/ProofOfPayment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->a:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/payments/bz;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/bz;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/ProofOfPayment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/ProofOfPayment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProofOfPayment created: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/ProofOfPayment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getIntent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "create_time"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "intent"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "state"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->e:Ljava/lang/String;

    const-string v2, "authorize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "authorization_id"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->e:Ljava/lang/String;

    const-string v2, "order"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "order_id"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/payments/ProofOfPayment;->a:Ljava/lang/String;

    const-string v2, "error encoding JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->f:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "no transactionId"

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ProofOfPayment;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
