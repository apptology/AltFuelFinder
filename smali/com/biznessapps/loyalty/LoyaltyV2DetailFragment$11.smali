.class Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$11;
.super Lcom/biznessapps/api/AsyncCallback;
.source "LoyaltyV2DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;
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


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$11;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 583
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$11;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 586
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$11;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 587
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 588
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->hasDataError(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$11;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$11;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    sget v3, Lcom/biznessapps/layout/R$string;->error_occured:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$11;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->loadData()V
    invoke-static {v1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$1000(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    .line 592
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$11;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$11;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    sget v3, Lcom/biznessapps/layout/R$string;->successfully_posted:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
