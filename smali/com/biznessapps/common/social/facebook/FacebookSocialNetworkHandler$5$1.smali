.class Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5$1;
.super Ljava/lang/Object;
.source "FacebookSocialNetworkHandler.java"

# interfaces
.implements Lcom/biznessapps/common/social/OnSocialActionCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5$1;->this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5$1;->this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;

    iget-object v0, v0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$1400(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 459
    return-void
.end method

.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5$1;->this$1:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;

    iget-object v0, v0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$1300(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method
