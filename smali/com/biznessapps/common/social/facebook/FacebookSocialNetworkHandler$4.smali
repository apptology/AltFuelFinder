.class Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;
.super Ljava/lang/Object;
.source "FacebookSocialNetworkHandler.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->fetchMe(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

.field final synthetic val$listener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    iput-object p2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;->val$listener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 3
    .param p1, "me"    # Lcom/facebook/model/GraphUser;
    .param p2, "response"    # Lcom/facebook/Response;

    .prologue
    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mIsLogging:Z
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$902(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Z)Z

    .line 414
    if-eqz p2, :cond_1

    .line 415
    invoke-virtual {p2}, Lcom/facebook/Response;->getRequest()Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->getSession()Lcom/facebook/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;
    invoke-static {v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$300(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/facebook/Session;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # invokes: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->update(Lcom/facebook/model/GraphUser;)V
    invoke-static {v0, p1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$1000(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Lcom/facebook/model/GraphUser;)V

    .line 419
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;->val$listener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;->val$listener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    invoke-interface {v0, v1}, Lcom/biznessapps/common/social/OnSocialActionCompletedListener;->onActionCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;->val$listener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;->val$listener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    invoke-interface {v0, v1, v2, v2}, Lcom/biznessapps/common/social/OnSocialActionCompletedListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
