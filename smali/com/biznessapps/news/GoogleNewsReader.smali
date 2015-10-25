.class public Lcom/biznessapps/news/GoogleNewsReader;
.super Ljava/lang/Object;
.source "GoogleNewsReader.java"


# static fields
.field private static final SEARCH_URL_PATTERN:Ljava/lang/String; = "https://news.google.com/news/feeds?q=%s&output=rss&num=50"


# instance fields
.field private is:Ljava/io/InputStream;

.field private parser:Lcom/biznessapps/news/RssPullParser;

.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/biznessapps/news/GoogleNewsReader;->query:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/news/GoogleNewsReader;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GoogleNewsReader"

    const-string v2, "InputStream.close() exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public next()Lcom/biznessapps/news/SearchEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/news/GoogleNewsReader;->parser:Lcom/biznessapps/news/RssPullParser;

    invoke-virtual {v0}, Lcom/biznessapps/news/RssPullParser;->next()Lcom/biznessapps/news/SearchEntity;

    move-result-object v0

    return-object v0
.end method

.method public prepare()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v1, "https://news.google.com/news/feeds?q=%s&output=rss&num=50"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/biznessapps/news/GoogleNewsReader;->query:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "feedUrl":Ljava/lang/String;
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/news/GoogleNewsReader;->is:Ljava/io/InputStream;

    .line 38
    new-instance v1, Lcom/biznessapps/news/RssPullParser;

    iget-object v2, p0, Lcom/biznessapps/news/GoogleNewsReader;->is:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lcom/biznessapps/news/RssPullParser;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/biznessapps/news/GoogleNewsReader;->parser:Lcom/biznessapps/news/RssPullParser;

    .line 39
    iget-object v1, p0, Lcom/biznessapps/news/GoogleNewsReader;->parser:Lcom/biznessapps/news/RssPullParser;

    invoke-virtual {v1}, Lcom/biznessapps/news/RssPullParser;->prepare()V

    .line 40
    return-void
.end method
