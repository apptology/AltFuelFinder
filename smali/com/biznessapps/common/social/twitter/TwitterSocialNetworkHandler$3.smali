.class Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$3;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "TwitterSocialNetworkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iput-object p3, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$3;->val$text:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$500(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 4
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z
    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 199
    new-instance v0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$400(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;-><init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialPublishListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$3;->val$text:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 200
    return-void
.end method
