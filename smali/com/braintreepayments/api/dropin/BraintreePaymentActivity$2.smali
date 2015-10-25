.class Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;
.super Ljava/lang/Object;
.source "BraintreePaymentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->waitForData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;->this$0:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;->this$0:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    # getter for: Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mHavePaymentMethodsBeenReceived:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->access$100(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;->this$0:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    new-instance v1, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2$1;

    invoke-direct {v1, p0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2$1;-><init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 305
    :cond_0
    return-void
.end method
