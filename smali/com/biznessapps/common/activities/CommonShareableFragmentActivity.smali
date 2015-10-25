.class public Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;
.super Lcom/biznessapps/common/activities/CommonFragmentActivity;
.source "CommonShareableFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 26
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/biznessapps/common/social/SocialNetworkManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 27
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->onPause()V

    .line 19
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->onPause(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 10
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->onResume(Landroid/content/Context;)V

    .line 12
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->onResume()V

    .line 13
    return-void
.end method
