.class Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2$1;
.super Ljava/lang/Object;
.source "FacebookSocialNetworkHandler.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2$1;->this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 237
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    if-nez v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2$1;->this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;

    iget-object v1, v1, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$500(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2$1;->this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;

    iget-object v2, v2, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    invoke-interface {v1, v2}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onPublishCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2$1;->this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;

    iget-object v1, v1, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$600(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2$1;->this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;

    iget-object v2, v2, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
