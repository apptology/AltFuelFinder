.class final Lcom/paypal/android/sdk/payments/bC;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/paypal/android/sdk/payments/ShippingAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/paypal/android/sdk/payments/ShippingAddress;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/paypal/android/sdk/payments/ShippingAddress;

    return-object v0
.end method
