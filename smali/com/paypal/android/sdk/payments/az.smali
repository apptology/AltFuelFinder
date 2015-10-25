.class final Lcom/paypal/android/sdk/payments/az;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/ay;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/az;->a:Lcom/paypal/android/sdk/payments/ay;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/az;->a:Lcom/paypal/android/sdk/payments/ay;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ay;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->c(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)V

    return-void
.end method
