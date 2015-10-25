.class public Lcom/biznessapps/images/BitmapDownloader;
.super Ljava/lang/Object;
.source "BitmapDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;,
        Lcom/biznessapps/images/BitmapDownloader$TintContainer;,
        Lcom/biznessapps/images/BitmapDownloader$UsingParams;,
        Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;,
        Lcom/biznessapps/images/BitmapDownloader$FlushedInputStream;
    }
.end annotation


# static fields
.field private static final FIRST_INDEX:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "Downloader"

.field private static final MAX_ASYNC_TASKS_COUNT:I = 0x8

.field private static final SPACE:Ljava/lang/String; = " "

.field private static final SPACE_CODE:Ljava/lang/String; = "%20"


# instance fields
.field private activeTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;",
            ">;"
        }
    .end annotation
.end field

.field private waitingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;",
            ">;"
        }
    .end annotation
.end field

.field private waitingTasksUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/images/BitmapDownloader;->activeTasks:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/images/BitmapDownloader;->waitingTasks:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/images/BitmapDownloader;->waitingTasksUrls:Ljava/util/List;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/images/BitmapDownloader;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/images/BitmapDownloader;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/biznessapps/images/BitmapDownloader;->activeTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/biznessapps/images/BitmapDownloader;->decodeSampledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/images/BitmapDownloader;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/images/BitmapDownloader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/images/BitmapDownloader;->downloadBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/images/BitmapDownloader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/images/BitmapDownloader;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/biznessapps/images/BitmapDownloader;->createReflectedImages(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lcom/biznessapps/utils/google/caching/ImageCache;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/biznessapps/images/BitmapDownloader;->getBitmapCacher()Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/images/BitmapDownloader;Landroid/view/View;)Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/images/BitmapDownloader;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/biznessapps/images/BitmapDownloader;->getBitmapDownloaderTask(Landroid/view/View;)Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/images/BitmapDownloader;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/images/BitmapDownloader;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/biznessapps/images/BitmapDownloader;->launchNewTaskIfAllowed()V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 5
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 537
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 538
    .local v0, "height":I
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 539
    .local v2, "width":I
    const/4 v1, 0x1

    .line 540
    .local v1, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v2, p1, :cond_1

    .line 541
    :cond_0
    if-le v2, v0, :cond_2

    .line 542
    int-to-float v3, v0

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 547
    :cond_1
    :goto_0
    return v1

    .line 544
    :cond_2
    int-to-float v3, v2

    int-to-float v4, p1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0
.end method

.method public static calculateInSampleSize2(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 9
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 553
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 554
    .local v0, "height":I
    iget v5, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 555
    .local v5, "width":I
    const/4 v2, 0x1

    .line 557
    .local v2, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v5, p1, :cond_2

    .line 560
    :cond_0
    int-to-float v7, v0

    int-to-float v8, p2

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 561
    .local v1, "heightRatio":I
    int-to-float v7, v5

    int-to-float v8, p1

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 565
    .local v6, "widthRatio":I
    if-ge v1, v6, :cond_1

    move v2, v1

    .line 573
    :goto_0
    mul-int v7, v5, v0

    int-to-float v3, v7

    .line 576
    .local v3, "totalPixels":F
    mul-int v7, p1, p2

    mul-int/lit8 v7, v7, 0x2

    int-to-float v4, v7

    .line 578
    .local v4, "totalReqPixelsCap":F
    :goto_1
    mul-int v7, v2, v2

    int-to-float v7, v7

    div-float v7, v3, v7

    cmpl-float v7, v7, v4

    if-lez v7, :cond_2

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "totalPixels":F
    .end local v4    # "totalReqPixelsCap":F
    :cond_1
    move v2, v6

    .line 565
    goto :goto_0

    .line 582
    .end local v1    # "heightRatio":I
    .end local v6    # "widthRatio":I
    :cond_2
    return v2
.end method

.method private cancelPotentialDownload(Ljava/lang/String;Landroid/view/View;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 147
    invoke-direct {p0, p2}, Lcom/biznessapps/images/BitmapDownloader;->getBitmapDownloaderTask(Landroid/view/View;)Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;

    move-result-object v0

    .line 149
    .local v0, "bitmapDownloaderTask":Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;
    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "bitmapUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader;->waitingTasks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader;->waitingTasksUrls:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v0, v2}, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->cancel(Z)Z

    .line 155
    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader;->activeTasks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    invoke-direct {p0}, Lcom/biznessapps/images/BitmapDownloader;->launchNewTaskIfAllowed()V

    .line 162
    .end local v1    # "bitmapUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 159
    .restart local v1    # "bitmapUrl":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static checkAndCorrectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 389
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 393
    :cond_0
    return-object p0
.end method

.method private createReflectedImages(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 23
    .param p1, "originalImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 425
    const/16 v16, 0x0

    .line 456
    :goto_0
    return-object v16

    .line 427
    :cond_0
    const/16 v21, 0x4

    .line 428
    .local v21, "reflectionGap":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 429
    .local v5, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 430
    .local v19, "height":I
    move/from16 v0, v19

    int-to-double v2, v0

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v9

    double-to-int v4, v2

    .line 432
    .local v4, "reflectionHeight":I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 433
    .local v7, "matrix":Landroid/graphics/Matrix;
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 435
    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move v6, v4

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 439
    .local v22, "reflectionImage":Landroid/graphics/Bitmap;
    add-int v2, v19, v4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 442
    .local v16, "bitmapWithReflection":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 443
    .local v17, "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 445
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 446
    .local v18, "deafaultPaint":Landroid/graphics/Paint;
    const v2, 0x106000d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    const/4 v2, 0x0

    add-int v3, v19, v21

    int-to-float v3, v3

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 448
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 449
    .local v20, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v10, v2

    const/4 v11, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, v21

    int-to-float v12, v2

    const v13, 0x70ffffff

    const v14, 0xffffff

    sget-object v15, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 451
    .local v8, "shader":Landroid/graphics/LinearGradient;
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 452
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 453
    const/4 v10, 0x0

    move/from16 v0, v19

    int-to-float v11, v0

    int-to-float v12, v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, v21

    int-to-float v13, v2

    move-object/from16 v9, v17

    move-object/from16 v14, v20

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 455
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private static decodeSampledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 461
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    .line 462
    .local v4, "client":Landroid/net/http/AndroidHttpClient;
    const/4 v7, 0x0

    .line 464
    .local v7, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .local v8, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-virtual {v4, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 466
    .local v15, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v17

    .line 467
    .local v17, "statusCode":I
    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 468
    const/16 v16, 0x0

    .line 519
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v7, v8

    .line 521
    .end local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "statusCode":I
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    return-object v16

    .line 471
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    .restart local v17    # "statusCode":I
    :cond_0
    :try_start_2
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 472
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_3

    .line 473
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 476
    .local v9, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 477
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x400

    move/from16 v0, v18

    new-array v3, v0, [B

    .line 479
    .local v3, "buffer":[B
    :goto_1
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "len":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v12, v0, :cond_2

    .line 480
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 498
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buffer":[B
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "len":I
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "statusCode":I
    :catch_0
    move-exception v5

    move-object v7, v8

    .line 499
    .end local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :goto_2
    if-eqz v7, :cond_1

    .line 500
    :try_start_3
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 502
    :cond_1
    const-string v18, "Downloader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Incorrect passed url "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 521
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    const/16 v16, 0x0

    goto :goto_0

    .line 482
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "len":I
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    .restart local v17    # "statusCode":I
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 483
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 484
    .local v10, "is1":Ljava/io/InputStream;
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 486
    .local v11, "is2":Ljava/io/InputStream;
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 487
    .local v13, "o":Landroid/graphics/BitmapFactory$Options;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 488
    new-instance v18, Lcom/biznessapps/images/BitmapDownloader$FlushedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Lcom/biznessapps/images/BitmapDownloader$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 489
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 490
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 491
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v13, v0, v1}, Lcom/biznessapps/images/BitmapDownloader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 492
    new-instance v18, Lcom/biznessapps/images/BitmapDownloader$FlushedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Lcom/biznessapps/images/BitmapDownloader$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 494
    .local v16, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 495
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 519
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v7, v8

    .end local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_0

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buffer":[B
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "is1":Ljava/io/InputStream;
    .end local v11    # "is2":Ljava/io/InputStream;
    .end local v12    # "len":I
    .end local v13    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v16    # "resultBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :cond_3
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v7, v8

    .line 520
    .end local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 503
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "statusCode":I
    :catch_1
    move-exception v5

    .line 504
    .local v5, "e":Ljava/io/IOException;
    :goto_4
    if-eqz v7, :cond_4

    .line 505
    :try_start_5
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 507
    :cond_4
    const-string v18, "Downloader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "I/O error while retrieving bitmap from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 519
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_3

    .line 508
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 509
    .local v5, "e":Ljava/lang/IllegalStateException;
    :goto_5
    if-eqz v7, :cond_5

    .line 510
    :try_start_6
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 512
    :cond_5
    const-string v18, "Downloader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Incorrect URL: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 519
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_3

    .line 513
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v5

    .line 514
    .local v5, "e":Ljava/lang/Exception;
    :goto_6
    if-eqz v7, :cond_6

    .line 515
    :try_start_7
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 517
    :cond_6
    const-string v18, "Downloader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error while retrieving bitmap from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 519
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_3

    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    :goto_7
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v18

    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catchall_1
    move-exception v18

    move-object v7, v8

    .end local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_7

    .line 513
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_4
    move-exception v5

    move-object v7, v8

    .end local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_6

    .line 508
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_5
    move-exception v5

    move-object v7, v8

    .end local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_5

    .line 503
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_6
    move-exception v5

    move-object v7, v8

    .end local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_4

    .line 498
    :catch_7
    move-exception v5

    goto/16 :goto_2
.end method

.method public static downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-static {p0}, Lcom/biznessapps/images/BitmapDownloader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 250
    .local v11, "storedBitmap":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-nez v12, :cond_0

    .line 298
    .end local v11    # "storedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v11

    .line 253
    .restart local v11    # "storedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 255
    .local v1, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    invoke-static {p0}, Lcom/biznessapps/images/BitmapDownloader;->checkAndCorrectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 256
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .local v4, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-virtual {v1, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 259
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 260
    .local v10, "statusCode":I
    const/16 v12, 0xc8

    if-eq v10, v12, :cond_2

    .line 261
    const-string v12, "Location"

    invoke-interface {v9, v12}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v5

    .line 263
    .local v5, "headers":[Lorg/apache/http/Header;
    if-eqz v5, :cond_1

    array-length v12, v5

    if-eqz v12, :cond_1

    .line 264
    array-length v12, v5

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v5, v12

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "newUrl":Ljava/lang/String;
    invoke-static {v7}, Lcom/biznessapps/images/BitmapDownloader;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 296
    .end local v11    # "storedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 268
    .end local v7    # "newUrl":Ljava/lang/String;
    .restart local v11    # "storedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    const-string v12, "ImageDownloader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " while retrieving bitmap from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v11, v0

    goto :goto_0

    .line 273
    .end local v5    # "headers":[Lorg/apache/http/Header;
    :cond_2
    :try_start_3
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 274
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 275
    .local v6, "inputStream":Ljava/io/InputStream;
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 278
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x0

    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 279
    new-instance v12, Lcom/biznessapps/images/BitmapDownloader$FlushedInputStream;

    invoke-direct {v12, v6}, Lcom/biznessapps/images/BitmapDownloader$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v13, 0x0

    invoke-static {v12, v13, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 296
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v11, v0

    goto :goto_0

    .line 281
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "statusCode":I
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 283
    const-string v12, "Downloader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "I/O error while retrieving bitmap from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :goto_2
    move-object v11, v0

    .line 298
    goto/16 :goto_0

    .line 284
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 286
    const-string v12, "Downloader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incorrect URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 291
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_2
    move-exception v2

    .line 292
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 296
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_2

    .line 287
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_3
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 289
    const-string v12, "Downloader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error while retrieving bitmap from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 293
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_4
    move-exception v2

    .line 294
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 296
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v12
.end method

.method private downloadBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sampleSize"    # I

    .prologue
    const/4 v9, 0x0

    .line 175
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 176
    .local v0, "client":Landroid/net/http/AndroidHttpClient;
    const/4 v3, 0x0

    .line 178
    .local v3, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1}, Lcom/biznessapps/images/BitmapDownloader;->checkAndCorrectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .local v4, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 180
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v8

    .line 181
    .local v8, "statusCode":I
    const/16 v10, 0xc8

    if-eq v8, v10, :cond_0

    .line 228
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v3, v4

    .line 230
    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "statusCode":I
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    return-object v9

    .line 185
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "statusCode":I
    :cond_0
    :try_start_2
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 186
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_4

    .line 187
    const/4 v5, 0x0

    .line 189
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 191
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 193
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    const v10, 0x8000

    new-array v10, v10, [B

    iput-object v10, v6, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 194
    const/4 v10, 0x0

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 195
    iput p2, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 196
    const/4 v10, 0x1

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 197
    const/4 v10, 0x1

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 198
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v10, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 199
    new-instance v10, Lcom/biznessapps/images/BitmapDownloader$FlushedInputStream;

    invoke-direct {v10, v5}, Lcom/biznessapps/images/BitmapDownloader$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 201
    if-eqz v5, :cond_1

    .line 202
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 204
    :cond_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 228
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v3, v4

    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    move-object v9, v10

    goto :goto_0

    .line 201
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catchall_0
    move-exception v10

    if-eqz v5, :cond_2

    .line 202
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 204
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v10
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 207
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "statusCode":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 208
    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :goto_1
    if-eqz v3, :cond_3

    .line 209
    :try_start_6
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 211
    :cond_3
    const-string v10, "Downloader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Incorrect passed url "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 228
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "statusCode":I
    :cond_4
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v3, v4

    .line 229
    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_0

    .line 212
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "statusCode":I
    :catch_1
    move-exception v1

    .line 213
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v3, :cond_5

    .line 214
    :try_start_7
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 216
    :cond_5
    const-string v10, "Downloader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "I/O error while retrieving bitmap from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 228
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 217
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/IllegalStateException;
    :goto_3
    if-eqz v3, :cond_6

    .line 219
    :try_start_8
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 221
    :cond_6
    const-string v10, "Downloader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Incorrect URL: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 228
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 222
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v3, :cond_7

    .line 224
    :try_start_9
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 226
    :cond_7
    const-string v10, "Downloader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while retrieving bitmap from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 228
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    :goto_5
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v9

    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_5

    .line 222
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4

    .line 217
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 212
    .end local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2

    .line 207
    :catch_7
    move-exception v1

    goto/16 :goto_1
.end method

.method public static downloadBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 303
    invoke-static/range {p0 .. p0}, Lcom/biznessapps/images/BitmapDownloader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 304
    .local v14, "storedBitmap":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v15

    if-nez v15, :cond_0

    .line 384
    .end local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v14

    .line 308
    .restart local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Lcom/biznessapps/api/HttpUtils;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    .line 310
    .local v4, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/biznessapps/images/BitmapDownloader;->checkAndCorrectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 311
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 313
    .local v7, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-virtual {v4, v7}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 314
    .local v12, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 315
    .local v13, "statusCode":I
    const/16 v15, 0xc8

    if-eq v13, v15, :cond_2

    .line 316
    const-string v15, "Location"

    invoke-interface {v12, v15}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v9

    .line 318
    .local v9, "headers":[Lorg/apache/http/Header;
    if-eqz v9, :cond_1

    array-length v15, v9

    if-eqz v15, :cond_1

    .line 319
    array-length v15, v9

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v9, v15

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 321
    .local v11, "newUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v11, v0, v1, v2}, Lcom/biznessapps/images/BitmapDownloader;->downloadBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    .line 382
    .end local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 323
    .end local v11    # "newUrl":Ljava/lang/String;
    .restart local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    const-string v15, "ImageDownloader"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " while retrieving bitmap from "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 324
    const/4 v14, 0x0

    .line 382
    .end local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 328
    .end local v9    # "headers":[Lorg/apache/http/Header;
    .restart local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_3
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 329
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_7

    .line 330
    const/4 v10, 0x0

    .line 332
    .local v10, "inputStream":Ljava/io/InputStream;
    :try_start_4
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 333
    const/4 v15, 0x1

    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 334
    new-instance v15, Lcom/biznessapps/images/BitmapDownloader$FlushedInputStream;

    invoke-direct {v15, v10}, Lcom/biznessapps/images/BitmapDownloader$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v15, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 336
    invoke-static/range {p1 .. p3}, Lcom/biznessapps/images/BitmapDownloader;->calculateInSampleSize2(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 339
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 343
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 344
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 346
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 347
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .local v8, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :try_start_5
    invoke-virtual {v4, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 348
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 349
    const/16 v15, 0xc8

    if-eq v13, v15, :cond_4

    .line 350
    const-string v15, "ImageDownloader"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " while retrieving bitmap from "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 351
    const/4 v14, 0x0

    .line 361
    .end local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_3

    .line 362
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 364
    :cond_3
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 382
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 353
    .restart local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    :cond_4
    :try_start_7
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 354
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 357
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 358
    new-instance v15, Lcom/biznessapps/images/BitmapDownloader$FlushedInputStream;

    invoke-direct {v15, v10}, Lcom/biznessapps/images/BitmapDownloader$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v15, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v3

    .line 361
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_5

    .line 362
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 364
    :cond_5
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 382
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v14, v3

    goto/16 :goto_0

    .line 361
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catchall_0
    move-exception v15

    :goto_1
    if-eqz v10, :cond_6

    .line 362
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 364
    :cond_6
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v15
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 367
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v13    # "statusCode":I
    :catch_0
    move-exception v5

    .line 368
    .end local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    .local v5, "e":Ljava/io/IOException;
    :goto_2
    :try_start_a
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 369
    const-string v15, "Downloader"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "I/O error while retrieving bitmap from "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 382
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_3
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 384
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :goto_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 370
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v5

    .line 371
    .end local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    .local v5, "e":Ljava/lang/IllegalStateException;
    :goto_5
    :try_start_b
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 372
    const-string v15, "Downloader"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Incorrect URL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 377
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_2
    move-exception v5

    .line 378
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_c
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 382
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_4

    .line 373
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v5

    .line 374
    .end local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    .local v5, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_d
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 375
    const-string v15, "Downloader"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error while retrieving bitmap from "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_3

    .line 379
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_4
    move-exception v5

    .line 380
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 382
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_4

    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v15

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v15

    .line 373
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    .restart local v13    # "statusCode":I
    :catch_5
    move-exception v5

    move-object v7, v8

    .end local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_6

    .line 370
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_6
    move-exception v5

    move-object v7, v8

    .end local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_5

    .line 367
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :catch_7
    move-exception v5

    move-object v7, v8

    .end local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_2

    .line 361
    .end local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v14    # "storedBitmap":Landroid/graphics/Bitmap;
    :catchall_2
    move-exception v15

    move-object v7, v8

    .end local v8    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_1
.end method

.method private forceDownload(Lcom/biznessapps/images/BitmapDownloader$UsingParams;)V
    .locals 5
    .param p1, "usingParams"    # Lcom/biznessapps/images/BitmapDownloader$UsingParams;

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-virtual {p1}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getView()Landroid/view/View;

    move-result-object v2

    .line 104
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v1, v2}, Lcom/biznessapps/images/BitmapDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    new-instance v0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;

    invoke-direct {v0, p0, p1}, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;-><init>(Lcom/biznessapps/images/BitmapDownloader;Lcom/biznessapps/images/BitmapDownloader$UsingParams;)V

    .line 106
    .local v0, "task":Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;
    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 109
    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader;->activeTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_3

    .line 116
    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader;->waitingTasks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader;->waitingTasksUrls:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v0    # "task":Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;
    :cond_1
    :goto_1
    return-void

    .line 111
    .restart local v0    # "task":Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 119
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 241
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getCache()Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/biznessapps/utils/google/caching/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getCache()Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/biznessapps/utils/google/caching/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 245
    :cond_0
    return-object v1
.end method

.method private static getBitmapCacher()Lcom/biznessapps/utils/google/caching/ImageCache;
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 93
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getCache()Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v1

    return-object v1
.end method

.method private getBitmapDownloaderTask(Landroid/view/View;)Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFileBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 525
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 526
    .local v1, "bmpFactoryOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 527
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 528
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 529
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1, p1, p2}, Lcom/biznessapps/images/BitmapDownloader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 530
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 531
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 532
    return-object v0
.end method

.method private launchNewTaskIfAllowed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader;->activeTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 126
    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader;->waitingTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader;->waitingTasksUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader;->waitingTasks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;

    .line 128
    .local v0, "taskToLaunch":Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;
    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader;->waitingTasksUrls:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    .line 131
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader;->waitingTasks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader;->waitingTasksUrls:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    .end local v0    # "taskToLaunch":Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public download(Lcom/biznessapps/images/BitmapDownloader$UsingParams;)V
    .locals 6
    .param p1, "usingParams"    # Lcom/biznessapps/images/BitmapDownloader$UsingParams;

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getView()Landroid/view/View;

    move-result-object v4

    .line 72
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getCallback()Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

    move-result-object v2

    .line 73
    .local v2, "callback":Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;
    invoke-static {}, Lcom/biznessapps/images/BitmapDownloader;->getBitmapCacher()Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/biznessapps/utils/google/caching/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 74
    .local v1, "cachedBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 75
    invoke-static {}, Lcom/biznessapps/images/BitmapDownloader;->getBitmapCacher()Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/biznessapps/utils/google/caching/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 78
    :cond_0
    if-eqz v1, :cond_2

    .line 79
    invoke-direct {p0, v3, v4}, Lcom/biznessapps/images/BitmapDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/view/View;)Z

    .line 80
    if-eqz v2, :cond_1

    .line 81
    new-instance v0, Lcom/biznessapps/images/BitmapWrapper;

    invoke-direct {v0, v1, v3}, Lcom/biznessapps/images/BitmapWrapper;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 82
    .local v0, "bitmapWrapper":Lcom/biznessapps/images/BitmapWrapper;
    invoke-virtual {v2, v0, v4}, Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;->onPostImageLoading(Lcom/biznessapps/images/BitmapWrapper;Landroid/view/View;)V

    .line 89
    .end local v0    # "bitmapWrapper":Lcom/biznessapps/images/BitmapWrapper;
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->isAnyConnectionAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    invoke-direct {p0, p1}, Lcom/biznessapps/images/BitmapDownloader;->forceDownload(Lcom/biznessapps/images/BitmapDownloader$UsingParams;)V

    goto :goto_0
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 235
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getCache()Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/biznessapps/utils/google/caching/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 236
    return-void
.end method
