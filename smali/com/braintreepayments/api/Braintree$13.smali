.class Lcom/braintreepayments/api/Braintree$13;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Lcom/braintreepayments/api/Braintree$ListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree;->postCreatedMethodToListeners(Lcom/braintreepayments/api/models/PaymentMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/api/Braintree;

.field final synthetic val$paymentMethod:Lcom/braintreepayments/api/models/PaymentMethod;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree;Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 0

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$13;->this$0:Lcom/braintreepayments/api/Braintree;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$13;->val$paymentMethod:Lcom/braintreepayments/api/models/PaymentMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 1138
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$13;->this$0:Lcom/braintreepayments/api/Braintree;

    # getter for: Lcom/braintreepayments/api/Braintree;->mCreatedListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/braintreepayments/api/Braintree;->access$1100(Lcom/braintreepayments/api/Braintree;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;

    .line 1139
    .local v1, "listener":Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;
    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$13;->this$0:Lcom/braintreepayments/api/Braintree;

    # getter for: Lcom/braintreepayments/api/Braintree;->mListenerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/braintreepayments/api/Braintree;->access$1000(Lcom/braintreepayments/api/Braintree;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/braintreepayments/api/Braintree$13$1;

    invoke-direct {v3, p0, v1}, Lcom/braintreepayments/api/Braintree$13$1;-><init>(Lcom/braintreepayments/api/Braintree$13;Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1146
    .end local v1    # "listener":Lcom/braintreepayments/api/Braintree$PaymentMethodCreatedListener;
    :cond_0
    return-void
.end method

.method public hasListeners()Z
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$13;->this$0:Lcom/braintreepayments/api/Braintree;

    # getter for: Lcom/braintreepayments/api/Braintree;->mCreatedListeners:Ljava/util/Set;
    invoke-static {v0}, Lcom/braintreepayments/api/Braintree;->access$1100(Lcom/braintreepayments/api/Braintree;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
