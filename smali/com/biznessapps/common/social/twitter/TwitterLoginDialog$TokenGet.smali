.class Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;
.super Landroid/os/AsyncTask;
.source "TwitterLoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenGet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;


# direct methods
.method private constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;
    .param p2, "x1"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$1;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;-><init>(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mRequestToken:Ltwitter4j/auth/RequestToken;
    invoke-static {v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$200(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/auth/RequestToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mTwitter:Ltwitter4j/Twitter;
    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$300(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/Twitter;

    move-result-object v2

    invoke-interface {v2}, Ltwitter4j/Twitter;->getOAuthRequestToken()Ltwitter4j/auth/RequestToken;

    move-result-object v2

    # setter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mRequestToken:Ltwitter4j/auth/RequestToken;
    invoke-static {v1, v2}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$202(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/RequestToken;

    .line 117
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mRequestToken:Ltwitter4j/auth/RequestToken;
    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$200(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/auth/RequestToken;

    move-result-object v2

    iput-object v2, v1, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->requestToken:Ltwitter4j/auth/RequestToken;

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthURL:Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$400(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mRequestToken:Ltwitter4j/auth/RequestToken;
    invoke-static {v3}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$200(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/auth/RequestToken;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/auth/RequestToken;->getAuthorizationURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&force_login=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthURL:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$402(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthURL:Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$400(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->oauthURL:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthURL:Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$400(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 126
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginError:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginCompleted:Z

    .line 128
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "oAuthURL"    # Ljava/lang/String;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    const-string v0, "URL"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$500(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$500(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 141
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$500(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet$1;-><init>(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    const-string v1, "Sorry !, Network Error or Invalid Credentials"

    iput-object v1, v0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginError:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginCompleted:Z

    .line 194
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->dismiss()V

    goto :goto_0
.end method
