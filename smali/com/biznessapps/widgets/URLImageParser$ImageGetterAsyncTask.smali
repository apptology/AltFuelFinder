.class public Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;
.super Landroid/os/AsyncTask;
.source "URLImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/URLImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageGetterAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field drawable:Lcom/biznessapps/widgets/URLDrawable;

.field final synthetic this$0:Lcom/biznessapps/widgets/URLImageParser;


# direct methods
.method public constructor <init>(Lcom/biznessapps/widgets/URLImageParser;Lcom/biznessapps/widgets/URLDrawable;)V
    .locals 0
    .param p2, "d"    # Lcom/biznessapps/widgets/URLDrawable;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;->this$0:Lcom/biznessapps/widgets/URLImageParser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;->drawable:Lcom/biznessapps/widgets/URLDrawable;

    .line 50
    return-void
.end method

.method private fetch(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 91
    .local v0, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 93
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 54
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 55
    .local v0, "source":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;->fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;->fetch(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 80
    .local v2, "is":Ljava/io/InputStream;
    const-string v3, "src"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "result"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;->drawable:Lcom/biznessapps/widgets/URLDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/biznessapps/widgets/URLDrawable;->setBounds(IIII)V

    .line 66
    iget-object v0, p0, Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;->drawable:Lcom/biznessapps/widgets/URLDrawable;

    iput-object p1, v0, Lcom/biznessapps/widgets/URLDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v0, p0, Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;->this$0:Lcom/biznessapps/widgets/URLImageParser;

    iget-object v0, v0, Lcom/biznessapps/widgets/URLImageParser;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 70
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/URLImageParser$ImageGetterAsyncTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
