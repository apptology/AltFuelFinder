.class Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1$1;
.super Ljava/lang/Object;
.source "FacebookSocialNetworkHandler.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1$1;->this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 189
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    if-nez v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1$1;->this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;

    iget-object v1, v1, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$100(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1$1;->this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;

    iget-object v2, v2, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    invoke-interface {v1, v2}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onPublishCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1$1;->this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;

    iget-object v1, v1, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1$1;->this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;

    iget-object v2, v2, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
