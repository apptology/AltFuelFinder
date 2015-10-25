.class Lcom/braintreepayments/api/Braintree$2;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree;->getPaymentMethodsHelper()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/api/Braintree;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$2;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 452
    :try_start_0
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$2;->this$0:Lcom/braintreepayments/api/Braintree;

    # getter for: Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;
    invoke-static {v2}, Lcom/braintreepayments/api/Braintree;->access$200(Lcom/braintreepayments/api/Braintree;)Lcom/braintreepayments/api/BraintreeApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/braintreepayments/api/BraintreeApi;->getPaymentMethods()Ljava/util/List;

    move-result-object v1

    .line 453
    .local v1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/models/PaymentMethod;>;"
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$2;->this$0:Lcom/braintreepayments/api/Braintree;

    # setter for: Lcom/braintreepayments/api/Braintree;->mCachedPaymentMethods:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/braintreepayments/api/Braintree;->access$302(Lcom/braintreepayments/api/Braintree;Ljava/util/List;)Ljava/util/List;

    .line 454
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$2;->this$0:Lcom/braintreepayments/api/Braintree;

    # invokes: Lcom/braintreepayments/api/Braintree;->postPaymentMethodsToListeners(Ljava/util/List;)V
    invoke-static {v2, v1}, Lcom/braintreepayments/api/Braintree;->access$400(Lcom/braintreepayments/api/Braintree;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/BraintreeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/braintreepayments/api/exceptions/ErrorWithResponse; {:try_start_0 .. :try_end_0} :catch_1

    .line 460
    .end local v1    # "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/models/PaymentMethod;>;"
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$2;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v2, v0}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 457
    .end local v0    # "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    :catch_1
    move-exception v0

    .line 458
    .local v0, "e":Lcom/braintreepayments/api/exceptions/ErrorWithResponse;
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$2;->this$0:Lcom/braintreepayments/api/Braintree;

    # invokes: Lcom/braintreepayments/api/Braintree;->postRecoverableErrorToListeners(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    invoke-static {v2, v0}, Lcom/braintreepayments/api/Braintree;->access$500(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    goto :goto_0
.end method
