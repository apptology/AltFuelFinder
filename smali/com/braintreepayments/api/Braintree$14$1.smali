.class Lcom/braintreepayments/api/Braintree$14$1;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree$14;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/braintreepayments/api/Braintree$14;

.field final synthetic val$listener:Lcom/braintreepayments/api/Braintree$PaymentMethodNonceListener;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree$14;Lcom/braintreepayments/api/Braintree$PaymentMethodNonceListener;)V
    .locals 0

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$14$1;->this$1:Lcom/braintreepayments/api/Braintree$14;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$14$1;->val$listener:Lcom/braintreepayments/api/Braintree$PaymentMethodNonceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$14$1;->val$listener:Lcom/braintreepayments/api/Braintree$PaymentMethodNonceListener;

    iget-object v1, p0, Lcom/braintreepayments/api/Braintree$14$1;->this$1:Lcom/braintreepayments/api/Braintree$14;

    iget-object v1, v1, Lcom/braintreepayments/api/Braintree$14;->val$nonce:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/braintreepayments/api/Braintree$PaymentMethodNonceListener;->onPaymentMethodNonce(Ljava/lang/String;)V

    .line 1164
    return-void
.end method
