.class Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$3;
.super Ljava/lang/Object;
.source "FacebookSocialNetworkHandler.java"

# interfaces
.implements Lcom/biznessapps/common/social/OnSocialActionCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->_login(Lcom/facebook/SessionLoginBehavior;[Ljava/lang/String;)Z
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
    .line 357
    iput-object p1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$800(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 366
    return-void
.end method

.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$3;->this$0:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->access$700(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method
