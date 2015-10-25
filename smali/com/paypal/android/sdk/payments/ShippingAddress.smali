.class public final Lcom/paypal/android/sdk/payments/ShippingAddress;
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

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/ShippingAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/ShippingAddress;->a:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/payments/bC;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/bC;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/payments/ShippingAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->h:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/ShippingAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static a(ZLjava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/payments/ShippingAddress;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid.  Please see the docs."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/paypal/android/sdk/d;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/paypal/android/sdk/d;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/paypal/android/sdk/d;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method final a(Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "recipient_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "line1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "line2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "city"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "state"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "country_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "postal_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final city(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/ShippingAddress;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final countryCode(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/ShippingAddress;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isProcessable()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    move v0, v1

    :goto_0
    const-string v6, "recipient_name"

    invoke-static {v3, v6}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(ZLjava/lang/String;)V

    const-string v6, "line1"

    invoke-static {v4, v6}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(ZLjava/lang/String;)V

    const-string v6, "city"

    invoke-static {v5, v6}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(ZLjava/lang/String;)V

    const-string v6, "country_code"

    invoke-static {v0, v6}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(ZLjava/lang/String;)V

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final line1(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/ShippingAddress;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final line2(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/ShippingAddress;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final postalCode(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/ShippingAddress;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final recipientName(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/ShippingAddress;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final state(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/ShippingAddress;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "recipient_name"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "line1"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "city"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "country_code"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "line2"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "state"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "postal_code"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/paypal/android/sdk/payments/ShippingAddress;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ShippingAddress;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
