.class Lcom/braintreepayments/api/Braintree$8;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree;->startThreeDSecureVerification(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/api/Braintree;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$amount:Ljava/lang/String;

.field final synthetic val$nonce:Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$8;->this$0:Lcom/braintreepayments/api/Braintree;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$8;->val$nonce:Ljava/lang/String;

    iput-object p3, p0, Lcom/braintreepayments/api/Braintree$8;->val$amount:Ljava/lang/String;

    iput-object p4, p0, Lcom/braintreepayments/api/Braintree$8;->val$activity:Landroid/app/Activity;

    iput p5, p0, Lcom/braintreepayments/api/Braintree$8;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 874
    :try_start_0
    iget-object v4, p0, Lcom/braintreepayments/api/Braintree$8;->this$0:Lcom/braintreepayments/api/Braintree;

    # getter for: Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;
    invoke-static {v4}, Lcom/braintreepayments/api/Braintree;->access$200(Lcom/braintreepayments/api/Braintree;)Lcom/braintreepayments/api/BraintreeApi;

    move-result-object v4

    iget-object v5, p0, Lcom/braintreepayments/api/Braintree$8;->val$nonce:Ljava/lang/String;

    iget-object v6, p0, Lcom/braintreepayments/api/Braintree$8;->val$amount:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/braintreepayments/api/BraintreeApi;->threeDSecureLookup(Ljava/lang/String;Ljava/lang/String;)Lcom/braintreepayments/api/models/ThreeDSecureLookup;

    move-result-object v3

    .line 876
    .local v3, "threeDSecureLookup":Lcom/braintreepayments/api/models/ThreeDSecureLookup;
    invoke-virtual {v3}, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->getAcsUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 877
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/braintreepayments/api/Braintree$8;->val$activity:Landroid/app/Activity;

    const-class v6, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.braintreepayments.api.EXTRA_THREE_D_SECURE_LOOKUP"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 879
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/braintreepayments/api/Braintree$8;->val$activity:Landroid/app/Activity;

    iget v5, p0, Lcom/braintreepayments/api/Braintree$8;->val$requestCode:I

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 891
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "threeDSecureLookup":Lcom/braintreepayments/api/models/ThreeDSecureLookup;
    :goto_0
    return-void

    .line 881
    .restart local v3    # "threeDSecureLookup":Lcom/braintreepayments/api/models/ThreeDSecureLookup;
    :cond_0
    iget-object v4, p0, Lcom/braintreepayments/api/Braintree$8;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v3}, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->getCard()Lcom/braintreepayments/api/models/Card;

    move-result-object v5

    # invokes: Lcom/braintreepayments/api/Braintree;->postCreatedMethodToListeners(Lcom/braintreepayments/api/models/PaymentMethod;)V
    invoke-static {v4, v5}, Lcom/braintreepayments/api/Braintree;->access$700(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 882
    iget-object v4, p0, Lcom/braintreepayments/api/Braintree$8;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v3}, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->getCard()Lcom/braintreepayments/api/models/Card;

    move-result-object v5

    invoke-virtual {v5}, Lcom/braintreepayments/api/models/Card;->getNonce()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/braintreepayments/api/Braintree;->postCreatedNonceToListeners(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/braintreepayments/api/Braintree;->access$800(Lcom/braintreepayments/api/Braintree;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/BraintreeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/braintreepayments/api/exceptions/ErrorWithResponse; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 884
    .end local v3    # "threeDSecureLookup":Lcom/braintreepayments/api/models/ThreeDSecureLookup;
    :catch_0
    move-exception v0

    .line 885
    .local v0, "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    iget-object v4, p0, Lcom/braintreepayments/api/Braintree$8;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v4, v0}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 886
    .end local v0    # "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    :catch_1
    move-exception v0

    .line 887
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/braintreepayments/api/Braintree$8;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v4, v0}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 888
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 889
    .local v1, "errorWithResponse":Lcom/braintreepayments/api/exceptions/ErrorWithResponse;
    iget-object v4, p0, Lcom/braintreepayments/api/Braintree$8;->this$0:Lcom/braintreepayments/api/Braintree;

    # invokes: Lcom/braintreepayments/api/Braintree;->postRecoverableErrorToListeners(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    invoke-static {v4, v1}, Lcom/braintreepayments/api/Braintree;->access$500(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    goto :goto_0
.end method
