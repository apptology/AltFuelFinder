.class Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;
.super Ljava/lang/Object;
.source "FacebookSocialNetworkHandler.java"

# interfaces
.implements Lcom/biznessapps/common/social/OnSocialLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    iput-object p2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 6
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 182
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v3, "postParams":Landroid/os/Bundle;
    const-string v1, "message"

    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;->val$text:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v5, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1$1;-><init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;)V

    .line 197
    .local v5, "callback":Lcom/facebook/Request$Callback;
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;
    invoke-static {v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$300(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 198
    new-instance v0, Lcom/facebook/Request;

    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;
    invoke-static {v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$300(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "me/feed"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 199
    .local v0, "request":Lcom/facebook/Request;
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 200
    return-void

    .line 197
    .end local v0    # "request":Lcom/facebook/Request;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
