.class Lcom/biznessapps/social/SocialFragment$1$1$1;
.super Ljava/lang/Object;
.source "SocialFragment.java"

# interfaces
.implements Lcom/biznessapps/common/social/OnSocialPublishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/social/SocialFragment$1$1;->onCommentEntered(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/biznessapps/social/SocialFragment$1$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/social/SocialFragment$1$1;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$1$1$1;->this$2:Lcom/biznessapps/social/SocialFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 170
    if-eqz p3, :cond_0

    .line 171
    const-string v0, "SocialFragment"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$1$1$1;->this$2:Lcom/biznessapps/social/SocialFragment$1$1;

    iget-object v0, v0, Lcom/biznessapps/social/SocialFragment$1$1;->this$1:Lcom/biznessapps/social/SocialFragment$1;

    iget-object v0, v0, Lcom/biznessapps/social/SocialFragment$1;->this$0:Lcom/biznessapps/social/SocialFragment;

    invoke-virtual {v0}, Lcom/biznessapps/social/SocialFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/social/SocialFragment$1$1$1;->this$2:Lcom/biznessapps/social/SocialFragment$1$1;

    iget-object v1, v1, Lcom/biznessapps/social/SocialFragment$1$1;->this$1:Lcom/biznessapps/social/SocialFragment$1;

    iget-object v1, v1, Lcom/biznessapps/social/SocialFragment$1;->this$0:Lcom/biznessapps/social/SocialFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->something_went_wrong:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/social/SocialFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onPublishCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/biznessapps/social/SocialFragment$1$1$1;->this$2:Lcom/biznessapps/social/SocialFragment$1$1;

    iget-object v0, v0, Lcom/biznessapps/social/SocialFragment$1$1;->this$1:Lcom/biznessapps/social/SocialFragment$1;

    iget-object v0, v0, Lcom/biznessapps/social/SocialFragment$1;->this$0:Lcom/biznessapps/social/SocialFragment;

    invoke-virtual {v0}, Lcom/biznessapps/social/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->updateNumberOfShares()V

    .line 166
    return-void
.end method
