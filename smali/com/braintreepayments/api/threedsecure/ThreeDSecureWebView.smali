.class public Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;
.super Landroid/webkit/WebView;
.source "ThreeDSecureWebView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation build Lcom/braintreepayments/api/annotations/Beta;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "privateBrowsing"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 35
    return-void
.end method

.method private disableOnScreenZoomControls(Landroid/webkit/WebSettings;)V
    .locals 2
    .param p1, "settings"    # Landroid/webkit/WebSettings;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method protected init(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    .prologue
    const/4 v2, 0x1

    .line 44
    const v1, 0x1020018

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;->setId(I)V

    .line 46
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 47
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-static {}, Lcom/braintreepayments/api/internal/HttpRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 50
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 51
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 52
    invoke-direct {p0, v0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;->disableOnScreenZoomControls(Landroid/webkit/WebSettings;)V

    .line 54
    new-instance v1, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebChromeClient;

    invoke-direct {v1, p1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebChromeClient;-><init>(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;)V

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 55
    new-instance v1, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewClient;

    invoke-direct {v1, p1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewClient;-><init>(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;)V

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    return-void
.end method
