.class final Lcom/biznessapps/common/social/ui/ShareComponent$8;
.super Ljava/lang/Object;
.source "ShareComponent.java"

# interfaces
.implements Lcom/biznessapps/common/social/OnSocialPublishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/ShareComponent;->shareImageViaFacebook(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$8;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$8;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

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
    .line 337
    if-eqz p3, :cond_0

    .line 338
    const-string v0, "ShareComponent"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$8;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$8;->val$activity:Landroid/app/Activity;

    sget v2, Lcom/biznessapps/layout/R$string;->something_went_wrong:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$8;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$8;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p2, p3}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingError(ILjava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_1
    return-void
.end method

.method public onPublishCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 3
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$8;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$8;->val$activity:Landroid/app/Activity;

    sget v2, Lcom/biznessapps/layout/R$string;->successfully_posted:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$8;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->updateNumberOfShares()V

    .line 348
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$8;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$8;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingCompleted(I)V

    .line 349
    :cond_0
    return-void
.end method
