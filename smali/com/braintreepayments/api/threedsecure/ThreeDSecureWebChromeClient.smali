.class public Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "ThreeDSecureWebChromeClient.java"


# annotations
.annotation build Lcom/braintreepayments/api/annotations/Beta;
.end annotation


# instance fields
.field private mActivity:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebChromeClient;->mActivity:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    .line 16
    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebChromeClient;->mActivity:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    invoke-virtual {v0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->popCurrentWebView()V

    .line 34
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 21
    new-instance v0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;

    iget-object v1, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebChromeClient;->mActivity:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, "newWebView":Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;
    iget-object v1, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebChromeClient;->mActivity:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;->init(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;)V

    .line 23
    iget-object v1, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebChromeClient;->mActivity:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    invoke-virtual {v1, v0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->pushNewWebView(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;)V

    .line 24
    iget-object v1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 26
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 28
    const/4 v1, 0x1

    return v1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 39
    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebChromeClient;->mActivity:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    invoke-virtual {v0, p2}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->setProgress(I)V

    .line 41
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebChromeClient;->mActivity:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->setProgressBarVisibility(Z)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebChromeClient;->mActivity:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->setProgressBarVisibility(Z)V

    goto :goto_0
.end method
