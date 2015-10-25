.class public abstract Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;
.super Lcom/biznessapps/common/activities/CommonTabFragmentActivity;
.source "CommonShareableTabFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 27
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/biznessapps/common/social/SocialNetworkManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 28
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->onPause()V

    .line 20
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->onPause(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 11
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->onResume(Landroid/content/Context;)V

    .line 13
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->onResume()V

    .line 14
    return-void
.end method
