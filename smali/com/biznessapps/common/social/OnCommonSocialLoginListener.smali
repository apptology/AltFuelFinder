.class public abstract Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.super Ljava/lang/Object;
.source "OnCommonSocialLoginListener.java"

# interfaces
.implements Lcom/biznessapps/common/social/OnSocialLoginListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CommonSocialLogin"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 26
    if-eqz p3, :cond_0

    .line 27
    const-string v0, "CommonSocialLogin"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->something_went_wrong:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public abstract onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
.end method
