.class Lcom/braintreepayments/api/Braintree$5;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree;->performAndroidPayChangeMaskedWalletRequest(Landroid/app/Activity;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/api/Braintree;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$googleTransactionId:Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree;Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$5;->this$0:Lcom/braintreepayments/api/Braintree;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$5;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/braintreepayments/api/Braintree$5;->val$requestCode:I

    iput-object p4, p0, Lcom/braintreepayments/api/Braintree$5;->val$googleTransactionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/braintreepayments/api/Braintree$5;->this$0:Lcom/braintreepayments/api/Braintree;

    # getter for: Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;
    invoke-static {v1}, Lcom/braintreepayments/api/Braintree;->access$200(Lcom/braintreepayments/api/Braintree;)Lcom/braintreepayments/api/BraintreeApi;

    move-result-object v1

    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$5;->val$activity:Landroid/app/Activity;

    iget v3, p0, Lcom/braintreepayments/api/Braintree$5;->val$requestCode:I

    iget-object v4, p0, Lcom/braintreepayments/api/Braintree$5;->val$googleTransactionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/braintreepayments/api/BraintreeApi;->performAndroidPayChangeMaskedWalletRequest(Landroid/app/Activity;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/UnexpectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Lcom/braintreepayments/api/exceptions/UnexpectedException;
    iget-object v1, p0, Lcom/braintreepayments/api/Braintree$5;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v1, v0}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
