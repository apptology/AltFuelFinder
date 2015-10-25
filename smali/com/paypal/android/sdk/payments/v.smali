.class final Lcom/paypal/android/sdk/payments/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/aF;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/p;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/p;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/payments/aI;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/p;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/p;->dismissDialog(I)V

    iget-object v0, p1, Lcom/paypal/android/sdk/payments/aI;->b:Ljava/lang/String;

    const-string v1, "invalid_nonce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/p;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/p;->c:Lcom/paypal/android/sdk/cH;

    iget-object v0, v0, Lcom/paypal/android/sdk/cH;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/p;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aL:Lcom/paypal/android/sdk/cG;

    invoke-static {v1}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/p;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/p;->c:Lcom/paypal/android/sdk/cH;

    iget-object v0, v0, Lcom/paypal/android/sdk/cH;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/p;

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/aI;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/cE;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/paypal/android/sdk/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/p;

    check-cast p1, Lcom/paypal/android/sdk/co;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/p;->a(Lcom/paypal/android/sdk/payments/p;Lcom/paypal/android/sdk/co;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/p;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/p;->b(Lcom/paypal/android/sdk/payments/p;)V

    goto :goto_0
.end method
