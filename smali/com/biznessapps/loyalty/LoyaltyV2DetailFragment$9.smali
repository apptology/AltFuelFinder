.class Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$9;
.super Ljava/lang/Object;
.source "LoyaltyV2DetailFragment.java"

# interfaces
.implements Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$9;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$9;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # getter for: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mVGInfo:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$900(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$9;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->mInfoPageDisplayed:Z
    invoke-static {v0, v1}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$802(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;Z)Z

    .line 498
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$9;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$500(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    .line 503
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$9;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
