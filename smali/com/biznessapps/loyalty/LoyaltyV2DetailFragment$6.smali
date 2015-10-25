.class Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$6;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "LoyaltyV2DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-direct {p0, p2}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->email_is_not_correct:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment$6;->this$0:Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;

    # invokes: Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;->access$500(Lcom/biznessapps/loyalty/LoyaltyV2DetailFragment;)V

    .line 432
    return-void
.end method
