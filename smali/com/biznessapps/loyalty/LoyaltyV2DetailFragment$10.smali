.class Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;
.super Lcom/biznessapps/api/AsyncCallback;
.source "LoyaltyV2DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->checkLoyality(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/AsyncCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

.field final synthetic val$errorRunable:Ljava/lang/Runnable;

.field final synthetic val$perkId:Ljava/lang/String;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    iput-object p2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->val$perkId:Ljava/lang/String;

    iput-object p3, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->val$successRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->val$errorRunable:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 575
    invoke-super {p0, p1, p2}, Lcom/biznessapps/api/AsyncCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->server_connection_failure:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 578
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 531
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 535
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 537
    .local v5, "responseObj":Lorg/json/JSONObject;
    const-string v8, "success"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 539
    .local v6, "success":I
    const/4 v8, 0x1

    if-ne v6, v8, :cond_2

    .line 540
    const-string v8, "new_count"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 541
    .local v4, "newCount":I
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;
    invoke-static {v8}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$300(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->setAwardedValue(I)V

    .line 544
    const-string v8, "user_loyalty_perk"

    invoke-static {v5, v8}, Lcom/biznessapps/utils/json/JsonParser;->getJSONValue(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 545
    .local v7, "userLoyaltyPerk":Lorg/json/JSONObject;
    if-eqz v7, :cond_1

    .line 547
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 548
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    if-eqz v3, :cond_1

    .line 549
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 550
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 551
    .local v2, "key":Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 553
    .local v0, "available":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_0

    .line 554
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->val$perkId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 555
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;
    invoke-static {v8}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$300(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->val$perkId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->markAsConsumed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    .end local v0    # "available":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "newCount":I
    .end local v5    # "responseObj":Lorg/json/JSONObject;
    .end local v6    # "success":I
    .end local v7    # "userLoyaltyPerk":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 567
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->val$errorRunable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 571
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 572
    return-void

    .line 562
    .restart local v4    # "newCount":I
    .restart local v5    # "responseObj":Lorg/json/JSONObject;
    .restart local v6    # "success":I
    .restart local v7    # "userLoyaltyPerk":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->val$successRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 564
    .end local v4    # "newCount":I
    .end local v7    # "userLoyaltyPerk":Lorg/json/JSONObject;
    :cond_2
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$10;->val$errorRunable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
