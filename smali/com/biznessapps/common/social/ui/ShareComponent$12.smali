.class final Lcom/biznessapps/common/social/ui/ShareComponent$12;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "ShareComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/ShareComponent;->shareTextViaFacebook(Landroid/app/Activity;Ljava/lang/String;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 453
    iput-object p2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$12;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    iput-object p3, p0, Lcom/biznessapps/common/social/ui/ShareComponent$12;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/biznessapps/common/social/ui/ShareComponent$12;->val$text:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 456
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$12;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$12;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p2, p3}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingError(ILjava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_0
    return-void
.end method

.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 3
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$12;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/biznessapps/common/social/ui/ShareComponent$12$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/common/social/ui/ShareComponent$12$1;-><init>(Lcom/biznessapps/common/social/ui/ShareComponent$12;)V

    iget-object v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$12;->val$text:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/biznessapps/common/social/ui/ShareComponent;->showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;Ljava/lang/String;)V

    .line 486
    return-void
.end method
