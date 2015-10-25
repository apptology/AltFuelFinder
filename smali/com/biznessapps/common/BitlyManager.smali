.class public Lcom/biznessapps/common/BitlyManager;
.super Ljava/lang/Object;
.source "BitlyManager.java"


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "15d8c8042ffdb0b605657ad69578f1f86919c41d"

.field private static final WEB_API_URL:Ljava/lang/String; = "https://api-ssl.bitly.com/v3/shorten?access_token=%s&longUrl=%s"

.field private static sManager:Lcom/biznessapps/common/BitlyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWrapCallback:Lcom/biznessapps/api/AsyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/biznessapps/common/BitlyManager;->sManager:Lcom/biznessapps/common/BitlyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/biznessapps/common/BitlyManager$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/BitlyManager$1;-><init>(Lcom/biznessapps/common/BitlyManager;)V

    iput-object v0, p0, Lcom/biznessapps/common/BitlyManager;->mWrapCallback:Lcom/biznessapps/api/AsyncCallback;

    .line 38
    iput-object p1, p0, Lcom/biznessapps/common/BitlyManager;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/common/BitlyManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/BitlyManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/biznessapps/common/BitlyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/common/BitlyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/biznessapps/common/BitlyManager;->sManager:Lcom/biznessapps/common/BitlyManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/biznessapps/common/BitlyManager;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/BitlyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/common/BitlyManager;->sManager:Lcom/biznessapps/common/BitlyManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/biznessapps/common/BitlyManager;->sManager:Lcom/biznessapps/common/BitlyManager;

    return-object v0
.end method


# virtual methods
.method public getShortURL(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)Z
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 42
    if-nez p1, :cond_1

    .line 43
    if-eqz p2, :cond_0

    .line 44
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/biznessapps/api/AsyncCallback;->onResult(Ljava/lang/Object;)V

    :cond_0
    move v3, v4

    .line 62
    :goto_0
    return v3

    .line 50
    :cond_1
    iget-object v6, p0, Lcom/biznessapps/common/BitlyManager;->mWrapCallback:Lcom/biznessapps/api/AsyncCallback;

    invoke-virtual {v6, p2}, Lcom/biznessapps/api/AsyncCallback;->setMeta(Ljava/lang/Object;)V

    .line 53
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "urlObj":Ljava/net/URL;
    const-string v6, "https://api-ssl.bitly.com/v3/shorten?access_token=%s&longUrl=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "15d8c8042ffdb0b605657ad69578f1f86919c41d"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "webapiUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/biznessapps/common/BitlyManager;->mWrapCallback:Lcom/biznessapps/api/AsyncCallback;

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Lcom/biznessapps/api/AppHttpUtils;->executeGetRequest(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;Z)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 62
    goto :goto_0

    .line 57
    .end local v1    # "urlObj":Ljava/net/URL;
    .end local v2    # "webapiUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/net/MalformedURLException;
    iget-object v4, p0, Lcom/biznessapps/common/BitlyManager;->mWrapCallback:Lcom/biznessapps/api/AsyncCallback;

    invoke-virtual {v4, v3, v0}, Lcom/biznessapps/api/AsyncCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v5

    .line 59
    goto :goto_0
.end method
