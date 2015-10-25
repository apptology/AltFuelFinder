.class public Lcom/biznessapps/widgets/SmartWebView;
.super Landroid/webkit/WebView;
.source "SmartWebView.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# static fields
.field public static final INTERNAL_CONTENTS_URL:Ljava/lang/String; = "about:blank"


# instance fields
.field private mInitialEncoding:Ljava/lang/String;

.field private mInitialLoadData:Ljava/lang/String;

.field private mInitialMimeType:Ljava/lang/String;

.field private mWebViewClient:Lcom/biznessapps/widgets/SmartWebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/biznessapps/widgets/SmartWebView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/biznessapps/widgets/SmartWebView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/biznessapps/widgets/SmartWebView;->init()V

    .line 36
    return-void
.end method

.method private init()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/biznessapps/widgets/SmartWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/biznessapps/widgets/SmartWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/biznessapps/widgets/SmartWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/biznessapps/widgets/SmartWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/biznessapps/widgets/SmartWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/biznessapps/widgets/SmartWebViewClient;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/SmartWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, p0}, Lcom/biznessapps/widgets/SmartWebViewClient;-><init>(Landroid/app/Activity;Lcom/biznessapps/widgets/SmartWebView;)V

    iput-object v1, p0, Lcom/biznessapps/widgets/SmartWebView;->mWebViewClient:Lcom/biznessapps/widgets/SmartWebViewClient;

    .line 47
    iget-object v0, p0, Lcom/biznessapps/widgets/SmartWebView;->mWebViewClient:Lcom/biznessapps/widgets/SmartWebViewClient;

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/SmartWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 48
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/widgets/SmartWebView;->mWebViewClient:Lcom/biznessapps/widgets/SmartWebViewClient;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/SmartWebViewClient;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/widgets/SmartWebView;->mWebViewClient:Lcom/biznessapps/widgets/SmartWebViewClient;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/SmartWebViewClient;->goBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    .line 60
    :cond_0
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v1, 0x0

    const-string v5, "about:blank"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/biznessapps/widgets/SmartWebView;->mInitialLoadData:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/biznessapps/widgets/SmartWebView;->mInitialMimeType:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/biznessapps/widgets/SmartWebView;->mInitialEncoding:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 64
    if-nez p5, :cond_0

    .line 65
    const-string p5, "about:blank"

    .line 68
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object p2, p0, Lcom/biznessapps/widgets/SmartWebView;->mInitialLoadData:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/biznessapps/widgets/SmartWebView;->mInitialMimeType:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/biznessapps/widgets/SmartWebView;->mInitialEncoding:Ljava/lang/String;

    .line 73
    return-void
.end method

.method loadInitialData()V
    .locals 6

    .prologue
    .line 85
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/biznessapps/widgets/SmartWebView;->mInitialLoadData:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/widgets/SmartWebView;->mInitialMimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/widgets/SmartWebView;->mInitialEncoding:Ljava/lang/String;

    const-string v5, "about:blank"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/biznessapps/widgets/SmartWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
