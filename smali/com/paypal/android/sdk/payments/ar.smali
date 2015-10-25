.class final Lcom/paypal/android/sdk/payments/ar;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/aq;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ar;->a:Lcom/paypal/android/sdk/payments/aq;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ar;->a:Lcom/paypal/android/sdk/payments/aq;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/aq;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;->e(Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;)V

    return-void
.end method
