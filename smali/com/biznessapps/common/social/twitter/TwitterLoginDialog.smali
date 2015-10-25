.class public Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;
.super Landroid/app/Dialog;
.source "TwitterLoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$1;,
        Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;,
        Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwitterLogin"


# instance fields
.field private mAccessToken:Ltwitter4j/auth/AccessToken;

.field public mLoginCompleted:Z

.field public mLoginError:Ljava/lang/String;

.field private mOAuthURL:Ljava/lang/String;

.field private mOAuthVerifier:Ljava/lang/String;

.field private mRequestToken:Ltwitter4j/auth/RequestToken;

.field private mTwitter:Ltwitter4j/Twitter;

.field private mUserInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mRequestToken:Ltwitter4j/auth/RequestToken;

    .line 60
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mRequestToken:Ltwitter4j/auth/RequestToken;

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mRequestToken:Ltwitter4j/auth/RequestToken;

    .line 69
    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/auth/RequestToken;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mRequestToken:Ltwitter4j/auth/RequestToken;

    return-object v0
.end method

.method static synthetic access$202(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/RequestToken;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;
    .param p1, "x1"    # Ltwitter4j/auth/RequestToken;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mRequestToken:Ltwitter4j/auth/RequestToken;

    return-object p1
.end method

.method static synthetic access$300(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/Twitter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mTwitter:Ltwitter4j/Twitter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthVerifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthVerifier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mAccessToken:Ltwitter4j/auth/AccessToken;

    return-object v0
.end method

.method static synthetic access$702(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;Ltwitter4j/auth/AccessToken;)Ltwitter4j/auth/AccessToken;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;
    .param p1, "x1"    # Ltwitter4j/auth/AccessToken;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mAccessToken:Ltwitter4j/auth/AccessToken;

    return-object p1
.end method

.method static synthetic access$800(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Lcom/biznessapps/common/social/twitter/TwitterUserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mUserInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    return-object v0
.end method

.method private initTwitter()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->twitter:Ltwitter4j/Twitter;

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mTwitter:Ltwitter4j/Twitter;

    .line 89
    invoke-virtual {p0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->requestToken:Ltwitter4j/auth/RequestToken;

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mRequestToken:Ltwitter4j/auth/RequestToken;

    .line 90
    invoke-virtual {p0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->oauthURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthURL:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->oauthVerifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthVerifier:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->accessToken:Ltwitter4j/auth/AccessToken;

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mAccessToken:Ltwitter4j/auth/AccessToken;

    .line 93
    invoke-virtual {p0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mUserInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    .line 94
    return-void
.end method

.method private initUI()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    sget v0, Lcom/biznessapps/layout/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mWebView:Landroid/webkit/WebView;

    .line 99
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 101
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 103
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthVerifier:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;

    invoke-direct {v0, p0, v4}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;-><init>(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$1;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$TokenGet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;

    invoke-direct {v0, p0, v4}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;-><init>(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$1;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    sget v1, Lcom/biznessapps/layout/R$style;->FullScreenDialogTheme:I

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;-><init>(Landroid/content/Context;I)V

    .line 51
    .local v0, "loginDialog":Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;
    sget v1, Lcom/biznessapps/layout/R$layout;->twitter_login_view_v2:I

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->setContentView(I)V

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->setCancelable(Z)V

    .line 53
    invoke-virtual {v0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->show()V

    .line 55
    return-object v0
.end method


# virtual methods
.method public getLoginError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginError:Ljava/lang/String;

    return-object v0
.end method

.method public isLoginCompleted()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginCompleted:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->initTwitter()V

    .line 84
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->initUI()V

    .line 85
    return-void
.end method
