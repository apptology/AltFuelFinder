.class Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;
.super Lcom/biznessapps/api/AsyncCallback;
.source "LoyaltyV1DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->checkLoyality(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
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
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

.field final synthetic val$errorRunable:Ljava/lang/Runnable;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    iput-object p2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->val$successRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->val$errorRunable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 489
    invoke-super {p0, p1, p2}, Lcom/biznessapps/api/AsyncCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 491
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->server_connection_failure:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 493
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 452
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 456
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 458
    .local v2, "responseObj":Lorg/json/JSONObject;
    const-string v4, "success"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 460
    .local v3, "success":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 461
    const-string v4, "new_count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 463
    .local v1, "newCount":I
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    invoke-static {v4}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$400(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setApprovedCount(I)V

    .line 464
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    invoke-static {v5}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$400(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/storage/StorageKeeper;->saveLoyaltyItem(Lcom/biznessapps/loyalty/LoyaltyV1Entity;)V

    .line 465
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    invoke-static {v4}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$400(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->stampCompleted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 466
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    const/4 v5, 0x2

    # setter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->actionType:I
    invoke-static {v4, v5}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$902(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;I)I

    .line 471
    :goto_0
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->val$successRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v1    # "newCount":I
    .end local v2    # "responseObj":Lorg/json/JSONObject;
    .end local v3    # "success":I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 486
    return-void

    .line 468
    .restart local v1    # "newCount":I
    .restart local v2    # "responseObj":Lorg/json/JSONObject;
    .restart local v3    # "success":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    const/4 v5, 0x0

    # setter for: Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->actionType:I
    invoke-static {v4, v5}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->access$902(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;I)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 477
    .end local v1    # "newCount":I
    .end local v2    # "responseObj":Lorg/json/JSONObject;
    .end local v3    # "success":I
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 480
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->val$errorRunable:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 481
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->val$errorRunable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 473
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "responseObj":Lorg/json/JSONObject;
    .restart local v3    # "success":I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->val$errorRunable:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 474
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;->val$errorRunable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
