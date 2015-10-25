.class Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;
.super Ljava/lang/Object;
.source "FacebookSocialNetworkHandler.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;
    invoke-static {v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$300(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/facebook/Session;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # setter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mIsLogging:Z
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$902(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Z)Z

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mPendingPermissions:[Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$1100(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)[Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->applyPermission([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$1200(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;[Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    new-instance v1, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5$1;-><init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;)V

    # invokes: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->fetchMe(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)V
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$1500(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)V

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # invokes: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->clear()V
    invoke-static {v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$1600(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)V

    .line 465
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # setter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mIsLogging:Z
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$902(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Z)Z

    .line 472
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$1700(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/facebook/SessionState;->name()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/facebook/SessionState;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v2, v3, v1, v0}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$1800(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLogoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    invoke-interface {v0, v1}, Lcom/biznessapps/common/social/OnSocialLogoutListener;->onLogoffCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    goto :goto_0

    .line 472
    :cond_3
    const-string v0, ""

    move-object v1, v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_2
.end method
