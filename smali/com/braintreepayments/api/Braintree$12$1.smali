.class Lcom/braintreepayments/api/Braintree$12$1;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree$12;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/braintreepayments/api/Braintree$12;

.field final synthetic val$listener:Lcom/braintreepayments/api/Braintree$PaymentMethodsUpdatedListener;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree$12;Lcom/braintreepayments/api/Braintree$PaymentMethodsUpdatedListener;)V
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$12$1;->this$1:Lcom/braintreepayments/api/Braintree$12;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$12$1;->val$listener:Lcom/braintreepayments/api/Braintree$PaymentMethodsUpdatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$12$1;->val$listener:Lcom/braintreepayments/api/Braintree$PaymentMethodsUpdatedListener;

    iget-object v1, p0, Lcom/braintreepayments/api/Braintree$12$1;->this$1:Lcom/braintreepayments/api/Braintree$12;

    iget-object v1, v1, Lcom/braintreepayments/api/Braintree$12;->val$paymentMethodsSafe:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/braintreepayments/api/Braintree$PaymentMethodsUpdatedListener;->onPaymentMethodsUpdated(Ljava/util/List;)V

    .line 1122
    return-void
.end method
