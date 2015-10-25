.class public abstract Lcom/biznessapps/common/social/OnCommonSocialLogoutListener;
.super Ljava/lang/Object;
.source "OnCommonSocialLogoutListener.java"

# interfaces
.implements Lcom/biznessapps/common/social/OnSocialLogoutListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/biznessapps/common/social/OnCommonSocialLogoutListener;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 22
    if-eqz p3, :cond_0

    .line 23
    iget-object v0, p0, Lcom/biznessapps/common/social/OnCommonSocialLogoutListener;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method

.method public abstract onLogoffCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
.end method
