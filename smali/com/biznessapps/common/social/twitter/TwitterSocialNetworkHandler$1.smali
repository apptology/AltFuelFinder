.class Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$1;
.super Ljava/lang/Object;
.source "TwitterSocialNetworkHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

.field final synthetic val$twitterLoginDialog:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iput-object p2, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$1;->val$twitterLoginDialog:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$1;->val$twitterLoginDialog:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->isLoginCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    const/4 v1, 0x1

    # setter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$002(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Z)Z

    .line 143
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$100(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    invoke-interface {v0, v1}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$002(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Z)Z

    .line 146
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    const-string v2, ""

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$1;->val$twitterLoginDialog:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v3}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->getLoginError()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
