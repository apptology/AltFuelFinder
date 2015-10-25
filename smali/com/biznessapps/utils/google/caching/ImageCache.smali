.class public Lcom/biznessapps/utils/google/caching/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/utils/google/caching/ImageCache$RetainFragment;,
        Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHE_NAME:Ljava/lang/String; = "memCache"

.field private static final DEFAULT_CLEAR_DISK_CACHE_ON_START:Z = false

.field private static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x46

.field private static final DEFAULT_DISK_CACHE_ENABLED:Z = true

.field private static final DEFAULT_DISK_CACHE_SIZE:I = 0x4600000

.field private static final DEFAULT_INIT_DISK_CACHE_ON_CREATE:Z = false

.field private static final DEFAULT_MEM_CACHE_ENABLED:Z = true

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x2800

.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageCache"

.field private static instances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/biznessapps/utils/google/caching/ImageCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskCacheStarting:Z

.field private mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

.field private mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/biznessapps/utils/google/caching/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/biznessapps/utils/google/caching/ImageCache;->instances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheStarting:Z

    .line 88
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    invoke-direct {v0, p1, p2}, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageCache;->init(Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;)V

    .line 89
    return-void
.end method

.method private constructor <init>(Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;)V
    .locals 1
    .param p1, "cacheParams"    # Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheStarting:Z

    .line 78
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/google/caching/ImageCache;->init(Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;)V

    .line 79
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/biznessapps/utils/google/caching/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 430
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 432
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    .end local v0    # "hex":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static findOrCreateCache(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;)Lcom/biznessapps/utils/google/caching/ImageCache;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "cacheParams"    # Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    .prologue
    .line 101
    sget-object v1, Lcom/biznessapps/utils/google/caching/ImageCache;->instances:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    sget-object v1, Lcom/biznessapps/utils/google/caching/ImageCache;->instances:Ljava/util/HashMap;

    new-instance v2, Lcom/biznessapps/utils/google/caching/ImageCache;

    invoke-direct {v2, p1}, Lcom/biznessapps/utils/google/caching/ImageCache;-><init>(Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    sget-object v1, Lcom/biznessapps/utils/google/caching/ImageCache;->instances:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/utils/google/caching/ImageCache;

    .line 106
    .local v0, "imageCache":Lcom/biznessapps/utils/google/caching/ImageCache;
    return-object v0
.end method

.method public static findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/biznessapps/utils/google/caching/ImageCache$RetainFragment;
    .locals 3
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 505
    const-string v1, "ImageCache"

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/utils/google/caching/ImageCache$RetainFragment;

    .line 508
    .local v0, "mRetainFragment":Lcom/biznessapps/utils/google/caching/ImageCache$RetainFragment;
    if-nez v0, :cond_0

    .line 509
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageCache$RetainFragment;

    .end local v0    # "mRetainFragment":Lcom/biznessapps/utils/google/caching/ImageCache$RetainFragment;
    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageCache$RetainFragment;-><init>()V

    .line 510
    .restart local v0    # "mRetainFragment":Lcom/biznessapps/utils/google/caching/ImageCache$RetainFragment;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "ImageCache"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 513
    :cond_0
    return-object v0
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 449
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 402
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/biznessapps/utils/google/caching/ImageCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/biznessapps/utils/google/caching/ImageCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "cachePath":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 402
    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    invoke-static {}, Lcom/biznessapps/utils/google/caching/Utils;->hasFroyo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 478
    :goto_0
    return-object v1

    .line 477
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUsableSpace(Ljava/io/File;)J
    .locals 5
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 491
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, "stats":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 417
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 418
    .local v2, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 419
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/google/caching/ImageCache;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 423
    .end local v2    # "mDigest":Ljava/security/MessageDigest;
    .local v0, "cacheKey":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 420
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cacheKey":Ljava/lang/String;
    goto :goto_0
.end method

.method private init(Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;)V
    .locals 2
    .param p1, "cacheParams"    # Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    .line 118
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    iget-boolean v0, v0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageCache$1;

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    iget v1, v1, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/utils/google/caching/ImageCache$1;-><init>(Lcom/biznessapps/utils/google/caching/ImageCache;I)V

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    .line 134
    :cond_0
    iget-boolean v0, p1, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageCache;->initDiskCache()V

    .line 138
    :cond_1
    return-void
.end method

.method public static isExternalStorageRemovable()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 177
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 183
    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_2
    iget-object v6, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 188
    :try_start_0
    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    if-eqz v5, :cond_4

    .line 189
    invoke-static {p1}, Lcom/biznessapps/utils/google/caching/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 190
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 192
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/biznessapps/utils/google/caching/DiskLruCache;->get(Ljava/lang/String;)Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;

    move-result-object v4

    .line 193
    .local v4, "snapshot":Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;
    if-nez v4, :cond_5

    .line 194
    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/biznessapps/utils/google/caching/DiskLruCache;->edit(Ljava/lang/String;)Lcom/biznessapps/utils/google/caching/DiskLruCache$Editor;

    move-result-object v1

    .line 195
    .local v1, "editor":Lcom/biznessapps/utils/google/caching/DiskLruCache$Editor;
    if-eqz v1, :cond_3

    .line 196
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/biznessapps/utils/google/caching/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 197
    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    iget-object v5, v5, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v7, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    iget v7, v7, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->compressQuality:I

    invoke-virtual {p2, v5, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 201
    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/DiskLruCache$Editor;->commit()V

    .line 202
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    .end local v1    # "editor":Lcom/biznessapps/utils/google/caching/DiskLruCache$Editor;
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 214
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "snapshot":Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;
    :cond_4
    :goto_2
    :try_start_3
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 205
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "snapshot":Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;
    :cond_5
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {v4, v5}, Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 207
    .end local v4    # "snapshot":Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string v5, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addBitmapToCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 213
    if-eqz v3, :cond_4

    .line 214
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 216
    :catch_1
    move-exception v0

    .line 217
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snapshot":Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;
    :catch_2
    move-exception v0

    .line 217
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 209
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "snapshot":Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;
    :catch_3
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v5, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addBitmapToCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 213
    if-eqz v3, :cond_4

    .line 214
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 216
    :catch_4
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 213
    if-eqz v3, :cond_6

    .line 214
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 218
    :cond_6
    :goto_3
    :try_start_c
    throw v5

    .line 216
    :catch_5
    move-exception v0

    .line 217
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3
.end method

.method public clearCache()V
    .locals 5

    .prologue
    .line 292
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 297
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheStarting:Z

    .line 298
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/DiskLruCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 300
    :try_start_1
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/DiskLruCache;->delete()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    .line 305
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageCache;->initDiskCache()V

    .line 307
    :cond_1
    monitor-exit v2

    .line 308
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCache - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 5

    .prologue
    .line 331
    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 334
    :try_start_1
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/DiskLruCache;->close()V

    .line 336
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 343
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 5

    .prologue
    .line 315
    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 318
    :try_start_1
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/DiskLruCache;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 324
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flush - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p1}, Lcom/biznessapps/utils/google/caching/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 253
    :goto_0
    :try_start_0
    iget-boolean v5, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 255
    :try_start_1
    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 284
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 260
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_3

    .line 261
    const/4 v2, 0x0

    .line 263
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_4
    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    invoke-virtual {v5, v3}, Lcom/biznessapps/utils/google/caching/DiskLruCache;->get(Ljava/lang/String;)Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;

    move-result-object v4

    .line 264
    .local v4, "snapshot":Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;
    if-eqz v4, :cond_2

    .line 265
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v2

    .line 266
    if-eqz v2, :cond_2

    .line 267
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 275
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 276
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 280
    :cond_1
    :goto_1
    :try_start_6
    monitor-exit v6

    .line 283
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "snapshot":Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;
    :goto_2
    return-object v0

    .line 278
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "snapshot":Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;
    :catch_1
    move-exception v1

    .line 279
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 275
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v2, :cond_3

    .line 276
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 283
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "snapshot":Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;
    :cond_3
    :goto_3
    const/4 v0, 0x0

    :try_start_8
    monitor-exit v6

    goto :goto_2

    .line 278
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "snapshot":Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;
    :catch_2
    move-exception v1

    .line 279
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 271
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "snapshot":Lcom/biznessapps/utils/google/caching/DiskLruCache$Snapshot;
    :catch_3
    move-exception v1

    .line 272
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v5, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBitmapFromDiskCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 275
    if-eqz v2, :cond_3

    .line 276
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 278
    :catch_4
    move-exception v1

    .line 279
    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 274
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 275
    if-eqz v2, :cond_4

    .line 276
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 280
    :cond_4
    :goto_4
    :try_start_d
    throw v5

    .line 278
    :catch_5
    move-exception v1

    .line 279
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "memBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "memBitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 234
    .restart local v0    # "memBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const/4 v0, 0x0

    .line 241
    :cond_0
    return-object v0
.end method

.method public initDiskCache()V
    .locals 8

    .prologue
    .line 148
    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;

    invoke-virtual {v2}, Lcom/biznessapps/utils/google/caching/DiskLruCache;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    iget-object v0, v2, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 151
    .local v0, "diskCacheDir":Ljava/io/File;
    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    iget-boolean v2, v2, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 155
    :cond_1
    invoke-static {v0}, Lcom/biznessapps/utils/google/caching/ImageCache;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    iget v2, v2, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->diskCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 157
    const/4 v2, 0x1

    const/4 v4, 0x1

    :try_start_1
    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    iget v5, v5, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->diskCacheSize:I

    int-to-long v5, v5

    invoke-static {v0, v2, v4, v5, v6}, Lcom/biznessapps/utils/google/caching/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/biznessapps/utils/google/caching/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskLruCache:Lcom/biznessapps/utils/google/caching/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .end local v0    # "diskCacheDir":Ljava/io/File;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheStarting:Z

    .line 167
    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 168
    monitor-exit v3

    .line 169
    return-void

    .line 159
    .restart local v0    # "diskCacheDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageCache;->mCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 161
    const-string v2, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initDiskCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    .end local v0    # "diskCacheDir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
