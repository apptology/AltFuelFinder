.class Lcom/braintreepayments/api/Braintree$3;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree;->finishPayWithVenmo(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/api/Braintree;

.field final synthetic val$nonce:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$3;->this$0:Lcom/braintreepayments/api/Braintree;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$3;->val$nonce:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 621
    :try_start_0
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$3;->this$0:Lcom/braintreepayments/api/Braintree;

    # getter for: Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;
    invoke-static {v3}, Lcom/braintreepayments/api/Braintree;->access$200(Lcom/braintreepayments/api/Braintree;)Lcom/braintreepayments/api/BraintreeApi;

    move-result-object v3

    iget-object v4, p0, Lcom/braintreepayments/api/Braintree$3;->val$nonce:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/braintreepayments/api/BraintreeApi;->getPaymentMethod(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod;

    move-result-object v2

    .line 622
    .local v2, "paymentMethod":Lcom/braintreepayments/api/models/PaymentMethod;
    const-string v3, "venmo-app"

    invoke-virtual {v2, v3}, Lcom/braintreepayments/api/models/PaymentMethod;->setSource(Ljava/lang/String;)V

    .line 623
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$3;->this$0:Lcom/braintreepayments/api/Braintree;

    # invokes: Lcom/braintreepayments/api/Braintree;->addPaymentMethodToCache(Lcom/braintreepayments/api/models/PaymentMethod;)V
    invoke-static {v3, v2}, Lcom/braintreepayments/api/Braintree;->access$600(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 624
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$3;->this$0:Lcom/braintreepayments/api/Braintree;

    # invokes: Lcom/braintreepayments/api/Braintree;->postCreatedMethodToListeners(Lcom/braintreepayments/api/models/PaymentMethod;)V
    invoke-static {v3, v2}, Lcom/braintreepayments/api/Braintree;->access$700(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 625
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$3;->this$0:Lcom/braintreepayments/api/Braintree;

    iget-object v4, p0, Lcom/braintreepayments/api/Braintree$3;->val$nonce:Ljava/lang/String;

    # invokes: Lcom/braintreepayments/api/Braintree;->postCreatedNonceToListeners(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/braintreepayments/api/Braintree;->access$800(Lcom/braintreepayments/api/Braintree;Ljava/lang/String;)V

    .line 626
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$3;->this$0:Lcom/braintreepayments/api/Braintree;

    const-string v4, "venmo-app.success"

    invoke-virtual {v3, v4}, Lcom/braintreepayments/api/Braintree;->sendAnalyticsEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/BraintreeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/braintreepayments/api/exceptions/ErrorWithResponse; {:try_start_0 .. :try_end_0} :catch_2

    .line 634
    .end local v2    # "paymentMethod":Lcom/braintreepayments/api/models/PaymentMethod;
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$3;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v3, v0}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 629
    .end local v0    # "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    :catch_1
    move-exception v0

    .line 630
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$3;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v3, v0}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 631
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 632
    .local v1, "errorWithResponse":Lcom/braintreepayments/api/exceptions/ErrorWithResponse;
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$3;->this$0:Lcom/braintreepayments/api/Braintree;

    # invokes: Lcom/braintreepayments/api/Braintree;->postRecoverableErrorToListeners(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    invoke-static {v3, v1}, Lcom/braintreepayments/api/Braintree;->access$500(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    goto :goto_0
.end method
