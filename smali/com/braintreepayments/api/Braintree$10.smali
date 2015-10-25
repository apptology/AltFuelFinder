.class Lcom/braintreepayments/api/Braintree$10;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree;->tokenizeHelper(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Ljava/util/concurrent/Future;
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
    .line 1030
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$10;->this$0:Lcom/braintreepayments/api/Braintree;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$10;->val$paymentMethodBuilder:Lcom/braintreepayments/api/models/PaymentMethod$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1034
    :try_start_0
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$10;->this$0:Lcom/braintreepayments/api/Braintree;

    # getter for: Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;
    invoke-static {v2}, Lcom/braintreepayments/api/Braintree;->access$200(Lcom/braintreepayments/api/Braintree;)Lcom/braintreepayments/api/BraintreeApi;

    move-result-object v2

    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$10;->val$paymentMethodBuilder:Lcom/braintreepayments/api/models/PaymentMethod$Builder;

    invoke-virtual {v2, v3}, Lcom/braintreepayments/api/BraintreeApi;->tokenize(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Ljava/lang/String;

    move-result-object v1

    .line 1035
    .local v1, "nonce":Ljava/lang/String;
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$10;->this$0:Lcom/braintreepayments/api/Braintree;

    # invokes: Lcom/braintreepayments/api/Braintree;->postCreatedNonceToListeners(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/braintreepayments/api/Braintree;->access$800(Lcom/braintreepayments/api/Braintree;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/BraintreeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/braintreepayments/api/exceptions/ErrorWithResponse; {:try_start_0 .. :try_end_0} :catch_1

    .line 1041
    .end local v1    # "nonce":Ljava/lang/String;
    :goto_0
    return-void

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$10;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v2, v0}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1038
    .end local v0    # "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    :catch_1
    move-exception v0

    .line 1039
    .local v0, "e":Lcom/braintreepayments/api/exceptions/ErrorWithResponse;
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$10;->this$0:Lcom/braintreepayments/api/Braintree;

    # invokes: Lcom/braintreepayments/api/Braintree;->postRecoverableErrorToListeners(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    invoke-static {v2, v0}, Lcom/braintreepayments/api/Braintree;->access$500(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    goto :goto_0
.end method
