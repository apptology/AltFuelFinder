.class Lcom/braintreepayments/api/Braintree$7;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree;->startThreeDSecureVerification(Landroid/app/Activity;ILcom/braintreepayments/api/models/CardBuilder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/api/Braintree;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$amount:Ljava/lang/String;

.field final synthetic val$cardBuilder:Lcom/braintreepayments/api/models/CardBuilder;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/CardBuilder;Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$7;->this$0:Lcom/braintreepayments/api/Braintree;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$7;->val$cardBuilder:Lcom/braintreepayments/api/models/CardBuilder;

    iput-object p3, p0, Lcom/braintreepayments/api/Braintree$7;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/braintreepayments/api/Braintree$7;->val$requestCode:I

    iput-object p5, p0, Lcom/braintreepayments/api/Braintree$7;->val$amount:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 830
    :try_start_0
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$7;->this$0:Lcom/braintreepayments/api/Braintree;

    # getter for: Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;
    invoke-static {v3}, Lcom/braintreepayments/api/Braintree;->access$200(Lcom/braintreepayments/api/Braintree;)Lcom/braintreepayments/api/BraintreeApi;

    move-result-object v3

    iget-object v4, p0, Lcom/braintreepayments/api/Braintree$7;->val$cardBuilder:Lcom/braintreepayments/api/models/CardBuilder;

    invoke-virtual {v3, v4}, Lcom/braintreepayments/api/BraintreeApi;->tokenize(Lcom/braintreepayments/api/models/PaymentMethod$Builder;)Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, "nonce":Ljava/lang/String;
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$7;->this$0:Lcom/braintreepayments/api/Braintree;

    iget-object v4, p0, Lcom/braintreepayments/api/Braintree$7;->val$activity:Landroid/app/Activity;

    iget v5, p0, Lcom/braintreepayments/api/Braintree$7;->val$requestCode:I

    iget-object v6, p0, Lcom/braintreepayments/api/Braintree$7;->val$amount:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/braintreepayments/api/Braintree;->startThreeDSecureVerification(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/BraintreeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/braintreepayments/api/exceptions/ErrorWithResponse; {:try_start_0 .. :try_end_0} :catch_1

    .line 837
    .end local v2    # "nonce":Ljava/lang/String;
    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$7;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v3, v0}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 834
    .end local v0    # "e":Lcom/braintreepayments/api/exceptions/BraintreeException;
    :catch_1
    move-exception v1

    .line 835
    .local v1, "errorWithResponse":Lcom/braintreepayments/api/exceptions/ErrorWithResponse;
    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$7;->this$0:Lcom/braintreepayments/api/Braintree;

    # invokes: Lcom/braintreepayments/api/Braintree;->postRecoverableErrorToListeners(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    invoke-static {v3, v1}, Lcom/braintreepayments/api/Braintree;->access$500(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    goto :goto_0
.end method
