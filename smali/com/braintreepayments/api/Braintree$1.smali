.class final Lcom/braintreepayments/api/Braintree$1;
.super Ljava/lang/Object;
.source "Braintree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/Braintree;->setupHelper(Landroid/content/Context;Ljava/lang/String;Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$clientToken:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/braintreepayments/api/Braintree$1;->val$clientToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/braintreepayments/api/Braintree$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/braintreepayments/api/Braintree$1;->val$listener:Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, "braintree":Lcom/braintreepayments/api/Braintree;
    const/4 v5, 0x0

    .line 185
    .local v5, "exception":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 187
    .local v4, "errorMessage":Ljava/lang/String;
    :try_start_0
    sget-object v9, Lcom/braintreepayments/api/Braintree;->sInstances:Ljava/util/Map;

    iget-object v10, p0, Lcom/braintreepayments/api/Braintree$1;->val$clientToken:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 188
    sget-object v9, Lcom/braintreepayments/api/Braintree;->sInstances:Ljava/util/Map;

    iget-object v10, p0, Lcom/braintreepayments/api/Braintree$1;->val$clientToken:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/braintreepayments/api/Braintree;

    move-object v1, v0

    .line 193
    :goto_0
    # invokes: Lcom/braintreepayments/api/Braintree;->isSetup()Z
    invoke-static {v1}, Lcom/braintreepayments/api/Braintree;->access$000(Lcom/braintreepayments/api/Braintree;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 194
    # invokes: Lcom/braintreepayments/api/Braintree;->setup()V
    invoke-static {v1}, Lcom/braintreepayments/api/Braintree;->access$100(Lcom/braintreepayments/api/Braintree;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_1
    move-object v6, v1

    .line 202
    .local v6, "finalBraintree":Lcom/braintreepayments/api/Braintree;
    move-object v7, v4

    .line 203
    .local v7, "finalErrorMessage":Ljava/lang/String;
    move-object v8, v5

    .line 204
    .local v8, "finalException":Ljava/lang/Exception;
    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Lcom/braintreepayments/api/Braintree$1$1;

    invoke-direct {v10, p0, v6, v7, v8}, Lcom/braintreepayments/api/Braintree$1$1;-><init>(Lcom/braintreepayments/api/Braintree$1;Lcom/braintreepayments/api/Braintree;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void

    .line 190
    .end local v6    # "finalBraintree":Lcom/braintreepayments/api/Braintree;
    .end local v7    # "finalErrorMessage":Ljava/lang/String;
    .end local v8    # "finalException":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v2, Lcom/braintreepayments/api/Braintree;

    iget-object v9, p0, Lcom/braintreepayments/api/Braintree$1;->val$context:Landroid/content/Context;

    iget-object v10, p0, Lcom/braintreepayments/api/Braintree$1;->val$clientToken:Ljava/lang/String;

    invoke-direct {v2, v9, v10}, Lcom/braintreepayments/api/Braintree;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "braintree":Lcom/braintreepayments/api/Braintree;
    .local v2, "braintree":Lcom/braintreepayments/api/Braintree;
    move-object v1, v2

    .end local v2    # "braintree":Lcom/braintreepayments/api/Braintree;
    .restart local v1    # "braintree":Lcom/braintreepayments/api/Braintree;
    goto :goto_0

    .line 196
    :catch_0
    move-exception v3

    .line 197
    .local v3, "e":Ljava/lang/Exception;
    move-object v5, v3

    .line 198
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
