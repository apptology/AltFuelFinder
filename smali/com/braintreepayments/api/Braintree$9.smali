.class Lcom/braintreepayments/api/Braintree$9;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree;->createHelper(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/api/Braintree;

.field final synthetic val$paymentMethodBuilder:Lcom/braintreepayments/api/models/PaymentMethod$Builder;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/PaymentMethod$Builder;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$9;->this$0:Lcom/braintreepayments/api/Braintree;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$9;->val$paymentMethodBuilder:Lcom/braintreepayments/api/models/PaymentMethod$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 989
    :try_start_0
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$9;->this$0:Lcom/braintreepayments/api/Braintree;

    # getter for: Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;
    invoke-static {v2}, Lcom/braintreepayments/api/Braintree;->access$200(Lcom/braintreepayments/api/Braintree;)Lcom/braintreepayments/api/BraintreeApi;

    move-result-object v2

    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$9;->val$paymentMethodBuilder:Lcom/braintreepayments/api/models/PaymentMethod$Builder;

    invoke-virtual {v2, v3}, Lcom/braintreepayments/api/BraintreeApi;->create(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Lcom/braintreepayments/api/models/PaymentMethod;

    move-result-object v0

    .line 990
    .local v0, "createdPaymentMethod":Lcom/braintreepayments/api/models/PaymentMethod;
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$9;->this$0:Lcom/braintreepayments/api/Braintree;

    # invokes: Lcom/braintreepayments/api/Braintree;->addPaymentMethodToCache(Lcom/braintreepayments/api/models/PaymentMethod;)V
    invoke-static {v2, v0}, Lcom/braintreepayments/api/Braintree;->access$600(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 992
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$9;->this$0:Lcom/braintreepayments/api/Braintree;

    # invokes: Lcom/braintreepayments/api/Braintree;->postCreatedMethodToListeners(Lcom/braintreepayments/api/models/PaymentMethod;)V
    invoke-static {v2, v0}, Lcom/braintreepayments/api/Braintree;->access$700(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 993
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$9;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/PaymentMethod;->getNonce()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/braintreepayments/api/Braintree;->postCreatedNonceToListeners(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/braintreepayments/api/Braintree;->access$800(Lcom/braintreepayments/api/Braintree;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/BraintreeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/braintreepayments/api/exceptions/ErrorWithResponse; {:try_start_0 .. :try_end_0} :catch_1

    .line 999
    .end local v0    # "createdPaymentMethod":Lcom/braintreepayments/api/models/PaymentMethod;
    :goto_0
    return-void

    .line 994
    :catch_0
    move-exception v1

    .line 995
    .local v1, "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$9;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v2, v1}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 996
    .end local v1    # "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    :catch_1
    move-exception v1

    .line 997
    .local v1, "e":Lcom/braintreepayments/api/exceptions/ErrorWithResponse;
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$9;->this$0:Lcom/braintreepayments/api/Braintree;

    # invokes: Lcom/braintreepayments/api/Braintree;->postRecoverableErrorToListeners(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    invoke-static {v2, v1}, Lcom/braintreepayments/api/Braintree;->access$500(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    goto :goto_0
.end method
