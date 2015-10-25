.class public final Lcom/devicecollector/collectors/WebCollectorTask;
.super Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
.source "WebCollectorTask.java"


# static fields
.field private static final ERROR_BODY:Ljava/lang/String; = "<head></head><body></body>"

.field private static final MAGIC:Ljava/lang/String; = "\u25cf\uff5e*"


# instance fields
.field private loadedLogoHtm:Z

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/devicecollector/collectors/CollectorStatusListener;Lcom/devicecollector/DataCollection;J)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/devicecollector/collectors/CollectorStatusListener;
    .param p3, "data"    # Lcom/devicecollector/DataCollection;
    .param p4, "timeout"    # J

    .prologue
    .line 71
    sget-object v4, Lcom/devicecollector/collectors/CollectorEnum;->WEB:Lcom/devicecollector/collectors/CollectorEnum;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;-><init>(Landroid/app/Activity;Lcom/devicecollector/collectors/CollectorStatusListener;Lcom/devicecollector/DataCollection;Lcom/devicecollector/collectors/CollectorEnum;J)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/devicecollector/collectors/WebCollectorTask;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/devicecollector/collectors/WebCollectorTask;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/devicecollector/collectors/WebCollectorTask;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lcom/devicecollector/collectors/WebCollectorTask;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/devicecollector/collectors/WebCollectorTask;->webview:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/devicecollector/collectors/WebCollectorTask;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/devicecollector/collectors/WebCollectorTask;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/devicecollector/collectors/WebCollectorTask;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/devicecollector/collectors/WebCollectorTask;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/devicecollector/collectors/WebCollectorTask;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devicecollector/collectors/WebCollectorTask;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p0, "x0"    # Lcom/devicecollector/collectors/WebCollectorTask;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Landroid/webkit/SslErrorHandler;
    .param p3, "x3"    # Landroid/net/http/SslError;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/devicecollector/collectors/WebCollectorTask;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method static synthetic access$500(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/devicecollector/collectors/WebCollectorTask;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/devicecollector/collectors/WebCollectorTask;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/devicecollector/collectors/WebCollectorTask;
    .param p1, "x1"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/devicecollector/collectors/WebCollectorTask;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method private onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 7
    .param p1, "cmsg"    # Landroid/webkit/ConsoleMessage;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 292
    const-string v1, "onConsoleMessage(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/collectors/WebCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u25cf\uff5e*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u25cf\uff5e*"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "<head></head><body></body>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    sget-object v1, Lcom/devicecollector/collectors/SoftErrorCode;->SERVICE_UNAVAILABLE:Lcom/devicecollector/collectors/SoftErrorCode;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error response received from Device Collector."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/collectors/WebCollectorTask;->endProcess(Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V

    .line 317
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 305
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/devicecollector/collectors/WebCollectorTask;->loadedLogoHtm:Z

    if-nez v1, :cond_2

    .line 306
    sget-object v1, Lcom/devicecollector/collectors/SoftErrorCode;->SERVICE_UNAVAILABLE:Lcom/devicecollector/collectors/SoftErrorCode;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Never loaded logo.htm."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/collectors/WebCollectorTask;->endProcess(Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p0, v6, v6}, Lcom/devicecollector/collectors/WebCollectorTask;->endProcess(Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 186
    const-string v2, "onLoadResource(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/WebCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "netUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "logo.htm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "logo.php"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/devicecollector/collectors/WebCollectorTask;->loadedLogoHtm:Z

    .line 193
    iget-object v2, p0, Lcom/devicecollector/collectors/WebCollectorTask;->dc:Lcom/devicecollector/DataCollection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/devicecollector/DataCollection;->setServerUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v1    # "netUrl":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "mue":Ljava/net/MalformedURLException;
    const-string v2, "Unexpected URL problem [%s]"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/WebCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string v1, "onPageFinished(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/collectors/WebCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:console.log("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u25cf\uff5e*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "document.getElementsByTagName(\'html\')[0].innerHTML"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "jsLogURL":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "ec"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string v0, "onReceivedError(code:%d, desc:%s, url:%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/collectors/WebCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    sget-object v0, Lcom/devicecollector/collectors/SoftErrorCode;->SERVICE_UNAVAILABLE:Lcom/devicecollector/collectors/SoftErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/collectors/WebCollectorTask;->endProcess(Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V

    .line 242
    return-void
.end method

.method private onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    const/4 v3, 0x0

    .line 253
    const-string v1, "onReceivedSslError(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/collectors/WebCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    .line 258
    .local v0, "code":I
    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 259
    :cond_0
    const-string v1, "Ignoring trust chain validation error."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/collectors/WebCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 268
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v1, "Halting due to SSL error."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/collectors/WebCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    sget-object v1, Lcom/devicecollector/collectors/SoftErrorCode;->SERVICE_UNAVAILABLE:Lcom/devicecollector/collectors/SoftErrorCode;

    new-instance v2, Lorg/apache/http/HttpException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSL ERROR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/devicecollector/collectors/WebCollectorTask;->endProcess(Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V

    .line 266
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method

.method private shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 278
    const-string v0, "shouldOverrideUrlLoading(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/devicecollector/collectors/WebCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    return v2
.end method


# virtual methods
.method protected run()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/devicecollector/collectors/WebCollectorTask;->dc:Lcom/devicecollector/DataCollection;

    invoke-virtual {v3}, Lcom/devicecollector/DataCollection;->getCollectorUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?m="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/devicecollector/collectors/WebCollectorTask;->dc:Lcom/devicecollector/DataCollection;

    invoke-virtual {v3}, Lcom/devicecollector/DataCollection;->getMerchantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/devicecollector/collectors/WebCollectorTask;->dc:Lcom/devicecollector/DataCollection;

    invoke-virtual {v3}, Lcom/devicecollector/DataCollection;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "dcStartUrl":Ljava/lang/String;
    const-string v2, "Calling URL: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/WebCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v2, p0, Lcom/devicecollector/collectors/WebCollectorTask;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/devicecollector/collectors/WebCollectorTask$1;

    invoke-direct {v3, p0, v0}, Lcom/devicecollector/collectors/WebCollectorTask$1;-><init>(Lcom/devicecollector/collectors/WebCollectorTask;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 150
    monitor-enter p0

    .line 153
    :try_start_0
    const-string v2, "Waiting on Collector for %d ms"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/devicecollector/collectors/WebCollectorTask;->getTimeoutMs()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/WebCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p0}, Lcom/devicecollector/collectors/WebCollectorTask;->getTimeoutMs()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 156
    const-string v2, "Wait finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/WebCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0}, Lcom/devicecollector/collectors/WebCollectorTask;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/devicecollector/collectors/WebCollectorTask;->timeout()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    return-void

    .line 162
    :cond_0
    :try_start_2
    const-string v2, "Current Host: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/devicecollector/collectors/WebCollectorTask;->dc:Lcom/devicecollector/DataCollection;

    invoke-virtual {v5}, Lcom/devicecollector/DataCollection;->getServerUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/WebCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/WebCollectorTask;->endProcess(Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v2, Lcom/devicecollector/collectors/SoftErrorCode;->SERVICE_UNAVAILABLE:Lcom/devicecollector/collectors/SoftErrorCode;

    invoke-virtual {p0, v2, v1}, Lcom/devicecollector/collectors/WebCollectorTask;->endProcess(Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V

    goto :goto_0

    .line 171
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
