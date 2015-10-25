.class Lcom/braintreepayments/api/Braintree$13$1;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree$13;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/braintreepayments/api/Braintree$13;

.field final synthetic val$listener:Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree$13;Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;)V
    .locals 0

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$13$1;->this$1:Lcom/braintreepayments/api/Braintree$13;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$13$1;->val$listener:Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$13$1;->val$listener:Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;

    iget-object v1, p0, Lcom/braintreepayments/api/Braintree$13$1;->this$1:Lcom/braintreepayments/api/Braintree$13;

    iget-object v1, v1, Lcom/braintreepayments/api/Braintree$13;->val$paymentMethod:Lcom/braintreepayments/api/models/PaymentMethod;

    invoke-interface {v0, v1}, Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;->onPaymentMethodCreated(Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 1143
    return-void
.end method
