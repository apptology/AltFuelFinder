.class public final Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/math/BigDecimal;

.field private c:Ljava/math/BigDecimal;

.field private d:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->a:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/payments/av;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/av;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_2
    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    return-void

    :cond_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "error unparceling PayPalPaymentDetails"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    iput-object p2, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    iput-object p3, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    return-object v0
.end method

.method protected final b()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    return-object v0
.end method

.method protected final c()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isProcessable()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    const-string v1, "shipping"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    const-string v1, "subtotal"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    if-eqz v1, :cond_2

    const-string v1, "tax"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->a:Ljava/lang/String;

    const-string v2, "error encoding JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
