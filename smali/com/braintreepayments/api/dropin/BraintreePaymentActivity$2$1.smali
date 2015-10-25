.class Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2$1;
.super Ljava/lang/Object;
.source "BraintreePaymentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2$1;->this$1:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2$1;->this$1:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;

    iget-object v0, v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;->this$0:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    # getter for: Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->mHavePaymentMethodsBeenReceived:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->access$100(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 301
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2$1;->this$1:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;

    iget-object v0, v0, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity$2;->this$0:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->showAddPaymentMethodView()V

    .line 302
    return-void
.end method
