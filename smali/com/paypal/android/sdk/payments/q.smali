.class final Lcom/paypal/android/sdk/payments/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/c;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/p;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/p;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/q;->a:Lcom/paypal/android/sdk/payments/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/q;->a:Lcom/paypal/android/sdk/payments/p;

    sget-object v1, Lcom/paypal/android/sdk/cD;->w:Lcom/paypal/android/sdk/cD;

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/p;->a(Lcom/paypal/android/sdk/payments/p;Lcom/paypal/android/sdk/cD;)V

    return-void
.end method
