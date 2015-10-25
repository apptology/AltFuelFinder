.class final Lcom/biznessapps/common/social/ui/ShareComponent$10;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "ShareComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/ShareComponent;->shareImageViaGooglePlus(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 375
    iput-object p2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$10;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

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
    .line 383
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$10;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$10;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p2, p3}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingError(ILjava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_0
    return-void
.end method

.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 4
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$10;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$10;->val$listener:Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;

    const/16 v1, 0x10

    const-string v2, "Error"

    const-string v3, "Not Implemented Yet!"

    invoke-interface {v0, v1, v2, v3}, Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;->onSharingError(ILjava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method
