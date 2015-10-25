.class Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;
.super Landroid/webkit/WebViewClient;
.source "TwitterLoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field authComplete:Z

.field final synthetic this$1:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;)V
    .locals 1

    .prologue
    .line 141
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->authComplete:Z

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 161
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v0, "TwitterLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 155
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 156
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 165
    const-string v3, "http://www.google.com/callback"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    :goto_0
    return v1

    .line 170
    :cond_0
    const-string v3, "oauth_verifier"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->authComplete:Z

    if-nez v3, :cond_2

    .line 171
    iput-boolean v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->authComplete:Z

    .line 173
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 174
    .local v0, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;

    iget-object v3, v3, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    const-string v4, "oauth_verifier"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthVerifier:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$602(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;

    iget-object v3, v3, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v3}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;

    iget-object v4, v4, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthVerifier:Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$600(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->oauthVerifier:Ljava/lang/String;

    .line 177
    new-instance v3, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;

    iget-object v4, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;

    iget-object v4, v4, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;-><init>(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$1;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    move v1, v2

    .line 188
    goto :goto_0

    .line 178
    :cond_2
    const-string v3, "denied"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;

    iget-object v3, v3, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    iput-boolean v1, v3, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginCompleted:Z

    .line 180
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;

    iget-object v1, v1, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    const-string v3, "Sorry !, Permission Denied"

    iput-object v3, v1, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginError:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;

    iget-object v1, v1, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->dismiss()V

    goto :goto_1

    .line 182
    :cond_3
    const-string v3, "error"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;

    iget-object v3, v3, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    iput-boolean v1, v3, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginCompleted:Z

    .line 184
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;

    iget-object v1, v1, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    const-string v3, "Login Error"

    iput-object v3, v1, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginError:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;

    iget-object v1, v1, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->dismiss()V

    goto :goto_1
.end method
