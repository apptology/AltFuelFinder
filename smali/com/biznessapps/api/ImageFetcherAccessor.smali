.class public Lcom/biznessapps/api/ImageFetcherAccessor;
.super Ljava/lang/Object;
.source "ImageFetcherAccessor.java"


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "app_images3"


# instance fields
.field private context:Landroid/content/Context;

.field private imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

.field private listThumbSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/biznessapps/api/ImageFetcherAccessor;->context:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .line 38
    return-void
.end method

.method private createImageFetcher(Landroid/content/Context;IILjava/lang/String;F)Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "imageSize"    # I
    .param p4, "cacheName"    # Ljava/lang/String;
    .param p5, "cacheSize"    # F

    .prologue
    .line 62
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    invoke-direct {v0, p1, p4}, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    .local v0, "cacheParams":Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;
    invoke-virtual {v0, p5}, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->setMemCacheSizePercent(F)V

    .line 66
    new-instance v1, Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-direct {v1, p1, p3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;-><init>(Landroid/content/Context;I)V

    .line 67
    .local v1, "mImageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    invoke-virtual {v1, p2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->setLoadingImage(I)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->addImageCache(Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;)V

    .line 69
    return-object v1
.end method


# virtual methods
.method public cleanCache()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/api/ImageFetcherAccessor;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/biznessapps/api/ImageFetcherAccessor;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->clearCache()V

    .line 51
    iget-object v0, p0, Lcom/biznessapps/api/ImageFetcherAccessor;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->closeCache()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/api/ImageFetcherAccessor;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .line 54
    :cond_0
    return-void
.end method

.method public createImageGridAdapter(Landroid/content/Context;Lcom/biznessapps/utils/google/caching/ImageFetcher;Ljava/util/List;)Lcom/biznessapps/utils/google/caching/ImageGridAdapter;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fetcher"    # Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/biznessapps/utils/google/caching/ImageFetcher;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/biznessapps/utils/google/caching/ImageGridAdapter;"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;-><init>(Landroid/content/Context;Lcom/biznessapps/utils/google/caching/ImageFetcher;Ljava/util/List;)V

    return-object v0
.end method

.method public getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .locals 6

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/api/ImageFetcherAccessor;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    if-nez v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/biznessapps/api/ImageFetcherAccessor;->context:Landroid/content/Context;

    sget v2, Lcom/biznessapps/layout/R$drawable;->product_default:I

    iget v3, p0, Lcom/biznessapps/api/ImageFetcherAccessor;->listThumbSize:I

    const-string v4, "app_images3"

    const/high16 v5, 0x3e800000    # 0.25f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/api/ImageFetcherAccessor;->createImageFetcher(Landroid/content/Context;IILjava/lang/String;F)Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/api/ImageFetcherAccessor;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/api/ImageFetcherAccessor;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    return-object v0
.end method
