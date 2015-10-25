.class Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TwitterOAuthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalWebViewClient"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;


# direct methods
.method private constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)V
    .locals 0

    .prologue
    .line 878
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;->this$1:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;Lcom/biznessapps/common/social/twitter/TwitterOAuthView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
    .param p2, "x1"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView$1;

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;-><init>(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 902
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 905
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 917
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 919
    .local v0, "stop":Z
    if-eqz v0, :cond_0

    .line 922
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;->this$1:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    iget-object v1, v1, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->stopLoading()V

    .line 925
    .end local v0    # "stop":Z
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 885
    const-string v0, "TwitterOAuthView"

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

    .line 888
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;->this$1:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    # invokes: Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->notifyAuthorization()V
    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->access$300(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)V

    .line 889
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 895
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 896
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 932
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;->this$1:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->callbackUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->access$400(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 935
    const/4 v1, 0x0

    .line 963
    :goto_0
    return v1

    .line 939
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;->this$1:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    iget-object v1, v1, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 941
    const-string v1, "TwitterOAuthView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected the callback URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 949
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;->this$1:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    const-string v2, "oauth_verifier"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->verifier:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->access$502(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;Ljava/lang/String;)Ljava/lang/String;

    .line 951
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;->this$1:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    iget-object v1, v1, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 953
    const-string v1, "TwitterOAuthView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oauth_verifier = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;->this$1:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->verifier:Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->access$500(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_2
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;->this$1:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    # invokes: Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->notifyAuthorization()V
    invoke-static {v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->access$300(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)V

    .line 963
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;->this$1:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->dummyCallbackUrl:Z
    invoke-static {v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->access$600(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)Z

    move-result v1

    goto :goto_0
.end method
