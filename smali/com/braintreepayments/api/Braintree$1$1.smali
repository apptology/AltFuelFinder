.class Lcom/braintreepayments/api/Braintree$1$1;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/api/Braintree$1;

.field final synthetic val$finalBraintree:Lcom/braintreepayments/api/Braintree;

.field final synthetic val$finalErrorMessage:Ljava/lang/String;

.field final synthetic val$finalException:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree$1;Lcom/braintreepayments/api/Braintree;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$1$1;->this$0:Lcom/braintreepayments/api/Braintree$1;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$1$1;->val$finalBraintree:Lcom/braintreepayments/api/Braintree;

    iput-object p3, p0, Lcom/braintreepayments/api/Braintree$1$1;->val$finalErrorMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/braintreepayments/api/Braintree$1$1;->val$finalException:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$1$1;->val$finalBraintree:Lcom/braintreepayments/api/Braintree;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$1$1;->val$finalBraintree:Lcom/braintreepayments/api/Braintree;

    # invokes: Lcom/braintreepayments/api/Braintree;->isSetup()Z
    invoke-static {v0}, Lcom/braintreepayments/api/Braintree;->access$000(Lcom/braintreepayments/api/Braintree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$1$1;->this$0:Lcom/braintreepayments/api/Braintree$1;

    iget-object v0, v0, Lcom/braintreepayments/api/Braintree$1;->val$listener:Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$1$1;->val$finalBraintree:Lcom/braintreepayments/api/Braintree;

    invoke-interface {v0, v1, v2, v4, v4}, Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;->onBraintreeSetupFinished(ZLcom/braintreepayments/api/Braintree;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$1$1;->this$0:Lcom/braintreepayments/api/Braintree$1;

    iget-object v0, v0, Lcom/braintreepayments/api/Braintree$1;->val$listener:Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$1$1;->val$finalErrorMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/braintreepayments/api/Braintree$1$1;->val$finalException:Ljava/lang/Exception;

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;->onBraintreeSetupFinished(ZLcom/braintreepayments/api/Braintree;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
