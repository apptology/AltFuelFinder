.class public Lcom/biznessapps/utils/google/caching/ImageFetcher;
.super Lcom/biznessapps/utils/google/caching/ImageResizer;
.source "ImageFetcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageSize"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/utils/google/caching/ImageResizer;-><init>(Landroid/content/Context;I)V

    .line 19
    return-void
.end method

.method private processBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "imageType"    # I
    .param p3, "imageFormType"    # I

    .prologue
    .line 29
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 30
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0, p2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getImageSize(I)I

    move-result v0

    .line 31
    .local v0, "imageSize":I
    const/4 v3, 0x0

    .line 32
    .local v3, "srcBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x4

    if-ne p3, v4, :cond_1

    .line 33
    invoke-static {p1, v0, v0}, Lcom/biznessapps/images/BitmapDownloader;->getFileBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 41
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 42
    const/4 v2, 0x0

    .line 72
    :goto_1
    return-object v2

    .line 35
    :cond_1
    invoke-static {p1, v1, v0, v0}, Lcom/biznessapps/images/BitmapDownloader;->downloadBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 36
    const/4 v4, 0x3

    if-ne p3, v4, :cond_0

    if-nez v3, :cond_0

    .line 37
    invoke-static {p1}, Lcom/biznessapps/images/BitmapDownloader;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 45
    :cond_2
    const/4 v2, 0x0

    .line 46
    .local v2, "result":Landroid/graphics/Bitmap;
    packed-switch p3, :pswitch_data_0

    .line 70
    move-object v2, v3

    goto :goto_1

    .line 53
    :pswitch_0
    invoke-static {v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 54
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 62
    :pswitch_1
    invoke-static {v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getCircledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 63
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 66
    :pswitch_2
    invoke-static {v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getCropped280Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 67
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected processBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "imageType"    # I
    .param p3, "imageFormType"    # I

    .prologue
    .line 77
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->processBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
