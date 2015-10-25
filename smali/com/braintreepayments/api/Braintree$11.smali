.class Lcom/braintreepayments/api/Braintree$11;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree;->sendAnalyticsEventHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/api/Braintree;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$integrationType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/Braintree;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$11;->this$0:Lcom/braintreepayments/api/Braintree;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$11;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/braintreepayments/api/Braintree$11;->val$integrationType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/braintreepayments/api/Braintree$11;->this$0:Lcom/braintreepayments/api/Braintree;

    # getter for: Lcom/braintreepayments/api/Braintree;->mBraintreeApi:Lcom/braintreepayments/api/BraintreeApi;
    invoke-static {v0}, Lcom/braintreepayments/api/Braintree;->access$200(Lcom/braintreepayments/api/Braintree;)Lcom/braintreepayments/api/BraintreeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/Braintree$11;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/braintreepayments/api/Braintree$11;->val$integrationType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/braintreepayments/api/BraintreeApi;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    return-void
.end method
