.class public final Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/paypal/android/sdk/payments/K;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.paypal.details.scope"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/J;

    invoke-static {p0}, Lcom/paypal/android/sdk/d;->b(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/paypal/android/sdk/d;->a(Landroid/app/Activity;)V

    new-instance v1, Lcom/paypal/android/sdk/payments/K;

    invoke-direct {v1, p0, v0}, Lcom/paypal/android/sdk/payments/K;-><init>(Landroid/content/Context;Lcom/paypal/android/sdk/payments/J;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->a:Lcom/paypal/android/sdk/payments/K;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->a:Lcom/paypal/android/sdk/payments/K;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/K;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->a:Lcom/paypal/android/sdk/payments/K;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/K;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Landroid/widget/TextView;Lcom/paypal/android/sdk/cG;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->a:Lcom/paypal/android/sdk/payments/K;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/K;->c:Landroid/widget/Button;

    sget-object v1, Lcom/paypal/android/sdk/cG;->d:Lcom/paypal/android/sdk/cG;

    invoke-static {v1}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;->a:Lcom/paypal/android/sdk/payments/K;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/K;->c:Landroid/widget/Button;

    new-instance v1, Lcom/paypal/android/sdk/payments/I;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/I;-><init>(Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
