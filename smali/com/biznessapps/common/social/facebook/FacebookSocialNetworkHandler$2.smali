.class Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;
.super Ljava/lang/Object;
.source "FacebookSocialNetworkHandler.java"

# interfaces
.implements Lcom/biznessapps/common/social/OnSocialLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->publishImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$description:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    iput-object p2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;->val$description:Ljava/lang/String;

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
    .line 228
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$400(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 7
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 233
    new-instance v0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2$1;-><init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;)V

    .line 245
    .local v0, "callback":Lcom/facebook/Request$Callback;
    iget-object v3, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;
    invoke-static {v3}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$300(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/facebook/Session;

    move-result-object v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 246
    iget-object v3, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;
    invoke-static {v3}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$300(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/facebook/Session;

    move-result-object v3

    iget-object v6, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v6, v0}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v2

    .line 248
    .local v2, "request":Lcom/facebook/Request;
    invoke-virtual {v2}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 250
    .local v1, "params":Landroid/os/Bundle;
    const-string v3, "name"

    iget-object v6, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;->val$description:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2, v1}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 254
    new-array v3, v4, [Lcom/facebook/Request;

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 255
    return-void

    .end local v1    # "params":Landroid/os/Bundle;
    .end local v2    # "request":Lcom/facebook/Request;
    :cond_0
    move v3, v5

    .line 245
    goto :goto_0
.end method
