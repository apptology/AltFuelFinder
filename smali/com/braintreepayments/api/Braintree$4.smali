.class Lcom/braintreepayments/api/Braintree$4;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree;->performAndroidPayMaskedWalletRequest(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/api/Braintree;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cart:Lcom/google/android/gms/wallet/Cart;

.field final synthetic val$isBillingAgreement:Z

.field final synthetic val$phoneNumberRequired:Z

.field final synthetic val$requestCode:I

.field final synthetic val$shippingAddressRequired:Z


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree;Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$4;->this$0:Lcom/braintreepayments/api/Braintree;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$4;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/braintreepayments/api/Braintree$4;->val$requestCode:I

    iput-object p4, p0, Lcom/braintreepayments/api/Braintree$4;->val$cart:Lcom/google/android/gms/wallet/Cart;

    iput-boolean p5, p0, Lcom/braintreepayments/api/Braintree$4;->val$isBillingAgreement:Z

    iput-boolean p6, p0, Lcom/braintreepayments/api/Braintree$4;->val$shippingAddressRequired:Z

    iput-boolean p7, p0, Lcom/braintreepayments/api/Braintree$4;->val$phoneNumberRequired:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$4;->this$0:Lcom/braintreepayments/api/Braintree;

    # getter for: Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;
    invoke-static {v0}, Lcom/braintreepayments/api/Braintree;->access$200(Lcom/braintreepayments/api/Braintree;)Lcom/braintreepayments/api/BraintreeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/Braintree$4;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/braintreepayments/api/Braintree$4;->val$requestCode:I

    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$4;->val$cart:Lcom/google/android/gms/wallet/Cart;

    iget-boolean v4, p0, Lcom/braintreepayments/api/Braintree$4;->val$isBillingAgreement:Z

    iget-boolean v5, p0, Lcom/braintreepayments/api/Braintree$4;->val$shippingAddressRequired:Z

    iget-boolean v6, p0, Lcom/braintreepayments/api/Braintree$4;->val$phoneNumberRequired:Z

    invoke-virtual/range {v0 .. v6}, Lcom/braintreepayments/api/BraintreeApi;->performAndroidPayMaskedWalletRequest(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/braintreepayments/api/exceptions/UnexpectedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 718
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v7

    .line 714
    .local v7, "e":Lcom/braintreepayments/api/exceptions/InvalidArgumentException;
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$4;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0, v7}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 715
    .end local v7    # "e":Lcom/braintreepayments/api/exceptions/InvalidArgumentException;
    :catch_1
    move-exception v7

    .line 716
    .local v7, "e":Lcom/braintreepayments/api/exceptions/UnexpectedException;
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$4;->this$0:Lcom/braintreepayments/api/Braintree;

    invoke-virtual {v0, v7}, Lcom/braintreepayments/api/Braintree;->postUnrecoverableErrorToListeners(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
