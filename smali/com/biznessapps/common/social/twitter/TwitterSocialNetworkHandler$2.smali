.class Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$2;
.super Ljava/lang/Object;
.source "TwitterSocialNetworkHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z
    invoke-static {v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$002(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Z)Z

    .line 154
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$300(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    const-string v2, "Cancel"

    const-string v3, "Login Canceled"

    invoke-interface {v0, v1, v2, v3}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method
