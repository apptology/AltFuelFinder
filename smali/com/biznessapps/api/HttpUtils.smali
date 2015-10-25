.class public Lcom/biznessapps/api/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field private static final BASIC:Ljava/lang/String; = "Basic "

.field private static final BEARER:Ljava/lang/String; = "Bearer "

.field private static final CLIENT_CREDENTIALS:Ljava/lang/String; = "client_credentials"

.field private static final CONNECTON_TIMEOUT_SECONDS:I = 0x3c

.field private static final CREDENTIALS_FORMAT:Ljava/lang/String; = "%s:%s"

.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final GRANT_TYPE:Ljava/lang/String; = "grant_type"

.field private static final POST:Ljava/lang/String; = "POST"

.field private static final TAG:Ljava/lang/String; = "HttpUtils"

.field private static final THREAD_POOL_SIZE:I = 0x5


# instance fields
.field private executors:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/biznessapps/api/HttpUtils;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "executors"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    .line 79
    iput-object p1, p0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/api/HttpUtils;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/api/HttpUtils;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Lcom/biznessapps/api/AsyncCallback;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/biznessapps/api/HttpUtils;->sendPhoto([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/api/HttpUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/api/HttpUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Ljava/lang/String;
    .param p10, "x10"    # Ljava/lang/String;
    .param p11, "x11"    # D
    .param p13, "x12"    # D
    .param p15, "x13"    # [B
    .param p16, "x14"    # Lcom/biznessapps/api/AsyncCallback;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p16}, Lcom/biznessapps/api/HttpUtils;->postComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/api/HttpUtils;Lcom/biznessapps/api/AsyncCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/api/HttpUtils;
    .param p1, "x1"    # Lcom/biznessapps/api/AsyncCallback;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Ljava/lang/String;
    .param p10, "x10"    # Z

    .prologue
    .line 47
    invoke-direct/range {p0 .. p10}, Lcom/biznessapps/api/HttpUtils;->postFanComment(Lcom/biznessapps/api/AsyncCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/api/HttpUtils;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/api/HttpUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # Lcom/biznessapps/api/AsyncCallback;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/api/HttpUtils;->executeRequest(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "c"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 645
    .local v0, "is":Ljava/util/zip/GZIPInputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 646
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 655
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 659
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    throw v4

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 661
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static executeGetHttpRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 494
    .local v0, "client":Landroid/net/http/AndroidHttpClient;
    const/4 v3, 0x0

    .line 496
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 497
    .local v1, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-interface {v1, v4, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 499
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v2}, Lcom/biznessapps/api/HttpUtils;->responseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 501
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 503
    return-object v3

    .line 501
    .end local v1    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v4
.end method

.method private static executeGetHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "userPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 508
    .local v0, "client":Landroid/net/http/AndroidHttpClient;
    const/4 v3, 0x0

    .line 510
    .local v3, "resultData":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 511
    .local v1, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v4, "Authorization"

    invoke-static {p1, p2}, Lcom/biznessapps/api/HttpUtils;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-interface {v1, v4, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 514
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v2}, Lcom/biznessapps/api/HttpUtils;->responseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 516
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 518
    return-object v3

    .line 516
    .end local v1    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v4
.end method

.method public static executePostHttpRequest(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 534
    .local v0, "client":Landroid/net/http/AndroidHttpClient;
    const/4 v7, 0x0

    .line 536
    .local v7, "result":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 538
    .local v5, "request":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 541
    .local v2, "haveData":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 543
    new-instance v4, Ljava/util/ArrayList;

    array-length v8, p2

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
    .local v4, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, p2

    if-ge v3, v8, :cond_1

    .line 546
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v9, p1, v3

    aget-object v10, p2, v3

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 538
    .end local v2    # "haveData":Z
    .end local v3    # "i":I
    .end local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 550
    .restart local v2    # "haveData":Z
    .restart local v3    # "i":I
    .restart local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    :try_start_1
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "utf-8"

    invoke-direct {v8, v4, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    .end local v3    # "i":I
    .end local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    :goto_2
    :try_start_2
    const-string v8, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v5, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0, v5}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 559
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v6}, Lcom/biznessapps/api/HttpUtils;->responseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 561
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 563
    return-object v7

    .line 551
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v3    # "i":I
    .restart local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v1

    .line 552
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v8, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 561
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "haveData":Z
    .end local v3    # "i":I
    .end local v4    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    :catchall_0
    move-exception v8

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v8
.end method

.method private executeRequest(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 10
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 461
    invoke-direct {p0, p1}, Lcom/biznessapps/api/HttpUtils;->replaceBadSymbols(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    array-length v7, p2

    if-lez v7, :cond_0

    array-length v7, p3

    if-lez v7, :cond_0

    move v2, v5

    .line 465
    .local v2, "executeAsPost":Z
    :goto_0
    const/4 v3, 0x0

    .line 466
    .local v3, "result":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 467
    invoke-static {v4, p2, p3}, Lcom/biznessapps/api/HttpUtils;->executePostHttpRequest(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 471
    :goto_1
    invoke-direct {p0, p4, v3}, Lcom/biznessapps/api/HttpUtils;->passResult(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V

    .line 479
    .end local v2    # "executeAsPost":Z
    .end local v3    # "result":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v2, v6

    .line 463
    goto :goto_0

    .line 469
    .restart local v2    # "executeAsPost":Z
    .restart local v3    # "result":Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Lcom/biznessapps/api/HttpUtils;->executeGetHttpRequest(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 473
    .end local v2    # "executeAsPost":Z
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Couldn\'t connect to server"

    .line 475
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v7, "HttpUtils"

    const-string v8, "Throwable: %s"

    new-array v9, v5, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0, p4, v1, v0}, Lcom/biznessapps/api/HttpUtils;->passError(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 475
    goto :goto_3
.end method

.method private executeRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 7
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p4, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v6, 0x1

    .line 285
    .local v6, "stopped":Z
    :goto_0
    if-nez v6, :cond_1

    .line 286
    new-instance v0, Lcom/biznessapps/api/HttpUtils$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/api/HttpUtils$6;-><init>(Lcom/biznessapps/api/HttpUtils;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 292
    .local v0, "asyncRequest":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 295
    .end local v0    # "asyncRequest":Ljava/lang/Runnable;
    :cond_1
    return-void

    .line 283
    .end local v6    # "stopped":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getAuthorizationHeader()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 240
    const-string v1, "%s:%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "android"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "TRvyrlIL"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "credentials":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "userPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 245
    const-string v1, "%s:%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "credentials":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getBearerAccessTokenData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "consumerKey"    # Ljava/lang/String;
    .param p1, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 613
    const/4 v10, 0x0

    .line 614
    .local v10, "result":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    .line 616
    .local v2, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    const-string v1, "https://api.twitter.com/oauth2/token"

    .line 617
    .local v1, "bearerUrl":Ljava/lang/String;
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 618
    .local v5, "encodedKey":Ljava/lang/String;
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 619
    .local v6, "encodedSecret":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "bearerTokenCred":Ljava/lang/String;
    const-string v11, "utf-8"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 623
    .local v4, "encodedBearerTokenCred":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 624
    .local v8, "request":Lorg/apache/http/client/methods/HttpPost;
    const-string v11, "Authorization"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Basic "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    new-instance v7, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 627
    .local v7, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "grant_type"

    const-string v13, "client_credentials"

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    :try_start_1
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v12, "utf-8"

    invoke-direct {v11, v7, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    :goto_0
    :try_start_2
    invoke-virtual {v2, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 634
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v9}, Lcom/biznessapps/api/HttpUtils;->responseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 638
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 640
    .end local v0    # "bearerTokenCred":Ljava/lang/String;
    .end local v1    # "bearerUrl":Ljava/lang/String;
    .end local v4    # "encodedBearerTokenCred":Ljava/lang/String;
    .end local v5    # "encodedKey":Ljava/lang/String;
    .end local v6    # "encodedSecret":Ljava/lang/String;
    .end local v7    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v8    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-object v10

    .line 630
    .restart local v0    # "bearerTokenCred":Ljava/lang/String;
    .restart local v1    # "bearerUrl":Ljava/lang/String;
    .restart local v4    # "encodedBearerTokenCred":Ljava/lang/String;
    .restart local v5    # "encodedKey":Ljava/lang/String;
    .restart local v6    # "encodedSecret":Ljava/lang/String;
    .restart local v7    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v8    # "request":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v3

    .line 631
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v11, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v8, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 635
    .end local v0    # "bearerTokenCred":Ljava/lang/String;
    .end local v1    # "bearerUrl":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "encodedBearerTokenCred":Ljava/lang/String;
    .end local v5    # "encodedKey":Ljava/lang/String;
    .end local v6    # "encodedSecret":Ljava/lang/String;
    .end local v7    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v8    # "request":Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v3

    .line 636
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 638
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v11
.end method

.method public static getFacebookData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 596
    const/4 v4, 0x0

    .line 597
    .local v4, "result":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 599
    .local v0, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 600
    .local v2, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v5, "Accept-Encoding"

    const-string v6, "gzip"

    invoke-interface {v2, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v5, "access_token"

    invoke-interface {v2, v5, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 603
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v3}, Lcom/biznessapps/api/HttpUtils;->responseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 607
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 609
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v4

    .line 604
    :catch_0
    move-exception v1

    .line 605
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v5
.end method

.method public static getNewHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 1

    .prologue
    .line 108
    const-string v0, "Android"

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getTwitterData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bearerAccessToken"    # Ljava/lang/String;

    .prologue
    .line 573
    const/4 v4, 0x0

    .line 574
    .local v4, "result":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 576
    .local v0, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 577
    .local v2, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v5, "Accept-Encoding"

    const-string v6, "gzip"

    invoke-interface {v2, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bearer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 580
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v3}, Lcom/biznessapps/api/HttpUtils;->responseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 584
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 586
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v4

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v5
.end method

.method public static makeConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .param p0, "toUrl"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 227
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 229
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 230
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 231
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 232
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 233
    const-string v2, "Authorization"

    invoke-static {p1, p2}, Lcom/biznessapps/api/HttpUtils;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 235
    return-object v0
.end method

.method private passError(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/AsyncCallback",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<*>;"
    invoke-static {}, Lcom/biznessapps/api/AppHandlers;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 267
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 268
    new-instance v1, Lcom/biznessapps/api/HttpUtils$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/biznessapps/api/HttpUtils$5;-><init>(Lcom/biznessapps/api/HttpUtils;Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    :cond_0
    return-void
.end method

.method private passResult(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V
    .locals 2
    .param p2, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-static {}, Lcom/biznessapps/api/AppHandlers;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 252
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 253
    new-instance v1, Lcom/biznessapps/api/HttpUtils$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/biznessapps/api/HttpUtils$4;-><init>(Lcom/biznessapps/api/HttpUtils;Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    :cond_0
    return-void
.end method

.method private postComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "appCode"    # Ljava/lang/String;
    .param p3, "tabId"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "userType"    # I
    .param p6, "userId"    # Ljava/lang/String;
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "comment"    # Ljava/lang/String;
    .param p9, "hash"    # Ljava/lang/String;
    .param p10, "parentId"    # Ljava/lang/String;
    .param p11, "longitude"    # D
    .param p13, "latitude"    # D
    .param p15, "imageData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DD[B",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p16, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 356
    .local v3, "avatarProfileImage":Ljava/lang/String;
    const/4 v15, 0x2

    move/from16 v0, p5

    if-ne v0, v15, :cond_0

    .line 358
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "https://api.twitter.com/1.1/users/show.json?screen_name="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p7

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 359
    .local v10, "getProfileUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v15

    invoke-virtual {v15}, Lcom/biznessapps/api/AppCore;->getBearerAccessToken()Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "bearerAccessToken":Ljava/lang/String;
    invoke-static {v10, v5}, Lcom/biznessapps/api/HttpUtils;->getTwitterData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 361
    .local v6, "data":Ljava/lang/String;
    invoke-static {v6}, Lcom/biznessapps/utils/json/JsonParser;->getTwitterIconUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 366
    .end local v5    # "bearerAccessToken":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    .end local v10    # "getProfileUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v11

    .line 368
    .local v11, "httpClient":Landroid/net/http/AndroidHttpClient;
    :try_start_1
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v15

    const-string v16, "comment_post.php"

    invoke-virtual/range {v15 .. v16}, Lcom/biznessapps/api/UrlWrapper;->getFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 370
    .local v12, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    new-instance v13, Lorg/apache/http/entity/mime/MultipartEntity;

    sget-object v15, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v13, v15}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 371
    .local v13, "reqEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    const-string v15, "app_code"

    new-instance v16, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 372
    const-string v15, "tab_id"

    new-instance v16, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 373
    const-string v15, "user_type"

    new-instance v16, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 374
    const-string v15, "user_id"

    new-instance v16, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 375
    const-string v15, "name"

    new-instance v16, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v16

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 376
    const-string v15, "hash"

    new-instance v16, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v16

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 377
    invoke-static/range {p8 .. p8}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 378
    const-string v15, "comment"

    new-instance v16, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v16

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 380
    :cond_1
    invoke-static/range {p10 .. p10}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 381
    const-string v15, "parent_id"

    new-instance v16, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v16

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 385
    :cond_2
    const-wide/16 v15, 0x0

    cmpl-double v15, p11, v15

    if-eqz v15, :cond_3

    const-wide/16 v15, 0x0

    cmpl-double v15, p13, v15

    if-eqz v15, :cond_3

    .line 386
    const-string v15, "longitude"

    new-instance v16, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 387
    const-string v15, "latitude"

    new-instance v16, Lorg/apache/http/entity/mime/content/StringBody;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p13

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 390
    :cond_3
    invoke-static/range {p4 .. p4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 391
    const-string v15, "id"

    new-instance v16, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 393
    :cond_4
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 394
    const-string v15, "avatar"

    new-instance v16, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 396
    :cond_5
    if-eqz p15, :cond_6

    .line 397
    const-string v7, "image.jpg"

    .line 399
    .local v7, "defaultImageName":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string v15, "image/jpeg"

    move-object/from16 v0, p15

    invoke-direct {v4, v0, v15, v7}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 400
    .local v4, "bab":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    const-string v15, "image"

    invoke-virtual {v13, v15, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 403
    .end local v4    # "bab":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    .end local v7    # "defaultImageName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v12, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 404
    invoke-virtual {v11, v12}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 405
    .local v14, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p16

    invoke-direct {v0, v1, v15}, Lcom/biznessapps/api/HttpUtils;->passResult(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 413
    .end local v12    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v13    # "reqEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 362
    .end local v11    # "httpClient":Landroid/net/http/AndroidHttpClient;
    :catch_0
    move-exception v8

    .line 363
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 406
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "httpClient":Landroid/net/http/AndroidHttpClient;
    :catch_1
    move-exception v8

    .line 408
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v9, "image upload failed"

    .line 409
    .local v9, "errorMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p16

    invoke-direct {v0, v1, v9, v8}, Lcom/biznessapps/api/HttpUtils;->passError(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 411
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Throwable;
    .end local v9    # "errorMessage":Ljava/lang/String;
    :catchall_0
    move-exception v15

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v15
.end method

.method private postFanComment(Lcom/biznessapps/api/AsyncCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p2, "socialType"    # I
    .param p3, "socialId"    # Ljava/lang/String;
    .param p4, "hash"    # Ljava/lang/String;
    .param p5, "tabId"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "comment"    # Ljava/lang/String;
    .param p8, "appCode"    # Ljava/lang/String;
    .param p9, "commentParentId"    # Ljava/lang/String;
    .param p10, "hasYoutubeFormat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 303
    .local v1, "avatarProfileImage":Ljava/lang/String;
    const/4 v8, 0x2

    if-ne p2, v8, :cond_0

    .line 305
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://api.twitter.com/1.1/users/show.json?screen_name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, "getProfileUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/AppCore;->getBearerAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "bearerAccessToken":Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/biznessapps/api/HttpUtils;->getTwitterData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "data":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/json/JsonParser;->getTwitterIconUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 314
    .end local v2    # "bearerAccessToken":Ljava/lang/String;
    .end local v3    # "data":Ljava/lang/String;
    .end local v5    # "getProfileUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v6, "requestString":Ljava/lang/StringBuilder;
    const-string v8, "?hash="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v8, "&tab_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v8, "&user_type="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    packed-switch p2, :pswitch_data_0

    .line 330
    :goto_1
    const-string v8, "&name="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v8, "&comment="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v8, "&app_code="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static/range {p9 .. p9}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 335
    if-eqz p10, :cond_3

    .line 336
    const-string v8, "&yt_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_1
    :goto_2
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 342
    const-string v8, "&avatar="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_2
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fan_wall_post.php"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/biznessapps/api/UrlWrapper;->getFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 346
    .local v7, "url":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9, p1}, Lcom/biznessapps/api/HttpUtils;->executeGetRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 348
    return-void

    .line 309
    .end local v6    # "requestString":Ljava/lang/StringBuilder;
    .end local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 310
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 320
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "requestString":Ljava/lang/StringBuilder;
    :pswitch_0
    const-string v8, "&fb_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 323
    :pswitch_1
    const-string v8, "&tw_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 326
    :pswitch_2
    const-string v8, "&gp_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 338
    :cond_3
    const-string v8, "&parent_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private replaceBadSymbols(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 483
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final responseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 8
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    const-string v5, "gzip"

    .line 672
    .local v5, "s":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 673
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 674
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "US-ASCII"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/api/HttpUtils;->convertStreamToString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 686
    :goto_0
    return-object v6

    .line 677
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 678
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 679
    .local v2, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "US-ASCII"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 680
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_1

    .line 684
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 686
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private sendPhoto([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 17
    .param p1, "data"    # [B
    .param p2, "appCode"    # Ljava/lang/String;
    .param p3, "tabId"    # Ljava/lang/String;
    .param p4, "eventId"    # Ljava/lang/String;
    .param p5, "caption"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p6, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v8

    .line 418
    .local v8, "httpClient":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v15

    const-string v16, "photo_post.php"

    invoke-virtual/range {v15 .. v16}, Lcom/biznessapps/api/UrlWrapper;->getFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 420
    .local v10, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    const-string v9, "bizphoto.jpg"

    .line 421
    .local v9, "imageName":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 422
    .local v2, "appCodeBody":Lorg/apache/http/entity/mime/content/StringBody;
    new-instance v14, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 423
    .local v14, "tabIdBody":Lorg/apache/http/entity/mime/content/StringBody;
    new-instance v7, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 427
    .local v7, "eventIdBody":Lorg/apache/http/entity/mime/content/StringBody;
    new-instance v3, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string v15, "image/jpeg"

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v15, v9}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 428
    .local v3, "bab":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    new-instance v11, Lorg/apache/http/entity/mime/MultipartEntity;

    sget-object v15, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v11, v15}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 429
    .local v11, "reqEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    const-string v15, "app_code"

    invoke-virtual {v11, v15, v2}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 430
    const-string v15, "tab_id"

    invoke-virtual {v11, v15, v14}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 431
    const-string v15, "image"

    invoke-virtual {v11, v15, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 432
    invoke-static/range {p5 .. p5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 433
    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p5

    invoke-direct {v4, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 434
    .local v4, "captionBody":Lorg/apache/http/entity/mime/content/StringBody;
    const-string v15, "caption"

    invoke-virtual {v11, v15, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 436
    .end local v4    # "captionBody":Lorg/apache/http/entity/mime/content/StringBody;
    :cond_0
    const-string v15, "id"

    invoke-virtual {v11, v15, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 438
    invoke-virtual {v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 439
    invoke-virtual {v8, v10}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 440
    .local v12, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v12}, Lcom/biznessapps/api/HttpUtils;->responseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v13

    .line 441
    .local v13, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v13}, Lcom/biznessapps/api/HttpUtils;->passResult(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 449
    .end local v2    # "appCodeBody":Lorg/apache/http/entity/mime/content/StringBody;
    .end local v3    # "bab":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    .end local v7    # "eventIdBody":Lorg/apache/http/entity/mime/content/StringBody;
    .end local v9    # "imageName":Ljava/lang/String;
    .end local v10    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v11    # "reqEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v13    # "result":Ljava/lang/String;
    .end local v14    # "tabIdBody":Lorg/apache/http/entity/mime/content/StringBody;
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v5

    .line 444
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v6, "image upload failed"

    .line 445
    .local v6, "errorMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v6, v5}, Lcom/biznessapps/api/HttpUtils;->passError(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v6    # "errorMessage":Ljava/lang/String;
    :catchall_0
    move-exception v15

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v15
.end method


# virtual methods
.method public executeGetRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, v0, v0, p4}, Lcom/biznessapps/api/HttpUtils;->executeRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 125
    return-void
.end method

.method public executePostRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p4, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/api/HttpUtils;->executeRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 141
    return-void
.end method

.method public executePostRequestSync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 146
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/biznessapps/api/HttpUtils;->executePostHttpRequest(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 149
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public executeRequestSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 201
    .local v1, "resultData":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/biznessapps/api/HttpUtils;->executeGetHttpRequest(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 207
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 209
    :goto_0
    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 204
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/System;->gc()V

    throw v2
.end method

.method public executeRequestSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, "resultData":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/biznessapps/api/HttpUtils;->executeGetHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 221
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 223
    :goto_0
    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 218
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/System;->gc()V

    throw v2
.end method

.method public postCommentAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "appCode"    # Ljava/lang/String;
    .param p3, "tabId"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "userType"    # I
    .param p6, "userId"    # Ljava/lang/String;
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "comment"    # Ljava/lang/String;
    .param p9, "hash"    # Ljava/lang/String;
    .param p10, "parentId"    # Ljava/lang/String;
    .param p11, "longitude"    # D
    .param p13, "latitude"    # D
    .param p15, "imageData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DD[B",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p16, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    new-instance v1, Lcom/biznessapps/api/HttpUtils$2;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    invoke-direct/range {v1 .. v18}, Lcom/biznessapps/api/HttpUtils$2;-><init>(Lcom/biznessapps/api/HttpUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V

    .line 176
    .local v1, "asyncRequest":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public postFanCommentAsync(Lcom/biznessapps/api/AsyncCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p2, "socialType"    # I
    .param p3, "socialId"    # Ljava/lang/String;
    .param p4, "hash"    # Ljava/lang/String;
    .param p5, "tabId"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "comment"    # Ljava/lang/String;
    .param p8, "appCode"    # Ljava/lang/String;
    .param p9, "commentParentId"    # Ljava/lang/String;
    .param p10, "hasYoutubeFormat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    new-instance v0, Lcom/biznessapps/api/HttpUtils$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/biznessapps/api/HttpUtils$3;-><init>(Lcom/biznessapps/api/HttpUtils;Lcom/biznessapps/api/AsyncCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 189
    .local v0, "asyncRequest":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method public sendPhotoAsync([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "appCode"    # Ljava/lang/String;
    .param p3, "tabId"    # Ljava/lang/String;
    .param p4, "eventId"    # Ljava/lang/String;
    .param p5, "caption"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p6, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    new-instance v0, Lcom/biznessapps/api/HttpUtils$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/biznessapps/api/HttpUtils$1;-><init>(Lcom/biznessapps/api/HttpUtils;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 162
    .local v0, "asyncRequest":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils;->executors:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method
