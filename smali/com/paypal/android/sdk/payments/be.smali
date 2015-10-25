.class final Lcom/paypal/android/sdk/payments/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/bd;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/be;->a:Lcom/paypal/android/sdk/payments/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/be;->a:Lcom/paypal/android/sdk/payments/bd;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/bd;->a:Lcom/paypal/android/sdk/cW;

    invoke-virtual {v0, p2}, Lcom/paypal/android/sdk/cW;->a(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/be;->a:Lcom/paypal/android/sdk/payments/bd;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/bd;->c:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/be;->a:Lcom/paypal/android/sdk/payments/bd;

    iget-object v1, v1, Lcom/paypal/android/sdk/payments/bd;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, p2}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Ljava/util/List;I)V

    return-void
.end method
