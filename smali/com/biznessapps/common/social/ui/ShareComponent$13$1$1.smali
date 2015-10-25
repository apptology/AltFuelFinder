.class Lcom/biznessapps/common/social/ui/ShareComponent$13$1$1;
.super Ljava/lang/Object;
.source "ShareComponent.java"

# interfaces
.implements Lcom/biznessapps/common/social/OnSocialPublishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/ShareComponent$13$1;->onCommentEntered(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/common/social/ui/ShareComponent$13$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/ui/ShareComponent$13$1;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1$1;->this$1:Lcom/biznessapps/common/social/ui/ShareComponent$13$1;

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
    .line 501
    if-eqz p3, :cond_0

    .line 502
    const-string v0, "ShareComponent"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1$1;->this$1:Lcom/biznessapps/common/social/ui/ShareComponent$13$1;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1;->this$0:Lcom/biznessapps/common/social/ui/ShareComponent$13;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1$1;->this$1:Lcom/biznessapps/common/social/ui/ShareComponent$13$1;

    iget-object v1, v1, Lcom/biznessapps/common/social/ui/ShareComponent$13$1;->this$0:Lcom/biznessapps/common/social/ui/ShareComponent$13;

    iget-object v1, v1, Lcom/biznessapps/common/social/ui/ShareComponent$13;->val$activity:Landroid/app/Activity;

    sget v2, Lcom/biznessapps/layout/R$string;->something_went_wrong:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1$1;->this$1:Lcom/biznessapps/common/social/ui/ShareComponent$13$1;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1;->this$0:Lcom/biznessapps/common/social/ui/ShareComponent$13;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1$1;->this$1:Lcom/biznessapps/common/social/ui/ShareComponent$13$1;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1;->this$0:Lcom/biznessapps/common/social/ui/ShareComponent$13;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p2, p3}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingError(ILjava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_1
    return-void
.end method

.method public onPublishCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 3
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1$1;->this$1:Lcom/biznessapps/common/social/ui/ShareComponent$13$1;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1;->this$0:Lcom/biznessapps/common/social/ui/ShareComponent$13;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1$1;->this$1:Lcom/biznessapps/common/social/ui/ShareComponent$13$1;

    iget-object v1, v1, Lcom/biznessapps/common/social/ui/ShareComponent$13$1;->this$0:Lcom/biznessapps/common/social/ui/ShareComponent$13;

    iget-object v1, v1, Lcom/biznessapps/common/social/ui/ShareComponent$13;->val$activity:Landroid/app/Activity;

    sget v2, Lcom/biznessapps/layout/R$string;->successfully_posted:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1$1;->this$1:Lcom/biznessapps/common/social/ui/ShareComponent$13$1;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1;->this$0:Lcom/biznessapps/common/social/ui/ShareComponent$13;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->updateNumberOfShares()V

    .line 512
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1$1;->this$1:Lcom/biznessapps/common/social/ui/ShareComponent$13$1;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1;->this$0:Lcom/biznessapps/common/social/ui/ShareComponent$13;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1$1;->this$1:Lcom/biznessapps/common/social/ui/ShareComponent$13$1;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13$1;->this$0:Lcom/biznessapps/common/social/ui/ShareComponent$13;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$13;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingCompleted(I)V

    .line 513
    :cond_0
    return-void
.end method
