.class final Lcom/paypal/android/sdk/payments/aQ;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/aP;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/aP;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/aQ;->a:Lcom/paypal/android/sdk/payments/aP;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aQ;->a:Lcom/paypal/android/sdk/payments/aP;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/aP;->a:Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->e(Lcom/paypal/android/sdk/payments/PaymentActivity;)V

    return-void
.end method
