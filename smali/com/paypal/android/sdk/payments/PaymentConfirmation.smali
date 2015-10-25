.class public final Lcom/paypal/android/sdk/payments/PaymentConfirmation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/paypal/android/sdk/payments/PayPalPayment;

.field private d:Lcom/paypal/android/sdk/payments/ProofOfPayment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->a:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/payments/bl;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/bl;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->b:Ljava/lang/String;

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalPayment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalPayment;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->c:Lcom/paypal/android/sdk/payments/PayPalPayment;

    const-class v0, Lcom/paypal/android/sdk/payments/ProofOfPayment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/ProofOfPayment;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->d:Lcom/paypal/android/sdk/payments/ProofOfPayment;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PaymentConfirmation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/paypal/android/sdk/payments/PayPalPayment;Lcom/paypal/android/sdk/payments/ProofOfPayment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->c:Lcom/paypal/android/sdk/payments/PayPalPayment;

    iput-object p3, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->d:Lcom/paypal/android/sdk/payments/ProofOfPayment;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getEnvironment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayment()Lcom/paypal/android/sdk/payments/PayPalPayment;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->c:Lcom/paypal/android/sdk/payments/PayPalPayment;

    return-object v0
.end method

.method public final getProofOfPayment()Lcom/paypal/android/sdk/payments/ProofOfPayment;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->d:Lcom/paypal/android/sdk/payments/ProofOfPayment;

    return-object v0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "environment"

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "paypal_sdk_version"

    const-string v3, "2.9.11"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "platform"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "product_name"

    const-string v3, "PayPal-Android-SDK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "client"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "response"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->d:Lcom/paypal/android/sdk/payments/ProofOfPayment;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/ProofOfPayment;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "response_type"

    const-string v2, "payment"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->a:Ljava/lang/String;

    const-string v2, "Error encoding JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->c:Lcom/paypal/android/sdk/payments/PayPalPayment;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->d:Lcom/paypal/android/sdk/payments/ProofOfPayment;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
