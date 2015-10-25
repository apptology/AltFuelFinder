.class public Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/google/caching/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheParams"
.end annotation


# instance fields
.field public cacheName:Ljava/lang/String;

.field public clearDiskCacheOnStart:Z

.field public compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public compressQuality:I

.field public diskCacheDir:Ljava/io/File;

.field public diskCacheEnabled:Z

.field public diskCacheSize:I

.field public initDiskCacheOnCreate:Z

.field public memCacheSize:I

.field public memoryCacheEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const/16 v0, 0x2800

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 350
    const/high16 v0, 0x4600000

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->diskCacheSize:I

    .line 352
    # getter for: Lcom/biznessapps/utils/google/caching/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {}, Lcom/biznessapps/utils/google/caching/ImageCache;->access$000()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 353
    const/16 v0, 0x46

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->compressQuality:I

    .line 354
    iput-boolean v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 355
    iput-boolean v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 356
    iput-boolean v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    .line 357
    iput-boolean v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    .line 358
    const-string v0, "memCache"

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->cacheName:Ljava/lang/String;

    .line 361
    invoke-static {p1, p2}, Lcom/biznessapps/utils/google/caching/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 362
    iput-object p2, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->cacheName:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "diskCacheDir"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const/16 v0, 0x2800

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 350
    const/high16 v0, 0x4600000

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->diskCacheSize:I

    .line 352
    # getter for: Lcom/biznessapps/utils/google/caching/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {}, Lcom/biznessapps/utils/google/caching/ImageCache;->access$000()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 353
    const/16 v0, 0x46

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->compressQuality:I

    .line 354
    iput-boolean v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 355
    iput-boolean v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 356
    iput-boolean v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    .line 357
    iput-boolean v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    .line 358
    const-string v0, "memCache"

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->cacheName:Ljava/lang/String;

    .line 366
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 367
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->cacheName:Ljava/lang/String;

    .line 368
    return-void
.end method


# virtual methods
.method public setMemCacheSizePercent(F)V
    .locals 2
    .param p1, "percent"    # F

    .prologue
    .line 384
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 389
    return-void
.end method
