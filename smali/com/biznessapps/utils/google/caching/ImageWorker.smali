.class public abstract Lcom/biznessapps/utils/google/caching/ImageWorker;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;,
        Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;,
        Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;,
        Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;,
        Lcom/biznessapps/utils/google/caching/ImageWorker$AsyncDrawable;,
        Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;
    }
.end annotation


# static fields
.field private static final MESSAGE_CLEAR:I = 0x0

.field private static final MESSAGE_CLOSE:I = 0x3

.field private static final MESSAGE_FLUSH:I = 0x2

.field private static final MESSAGE_INIT_DISK_CACHE:I = 0x1


# instance fields
.field private mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

.field private mImageCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

.field private mLoadingBitmap:Landroid/graphics/Bitmap;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mResources:Landroid/content/res/Resources;

    .line 58
    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/utils/google/caching/ImageWorker;)Lcom/biznessapps/utils/google/caching/ImageCache;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/utils/google/caching/ImageWorker;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker;->getCacheKey(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/utils/google/caching/ImageWorker;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/utils/google/caching/ImageWorker;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/utils/google/caching/ImageWorker;->setImageBitmap(Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/View;)Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->getBitmapWorkerTask(Landroid/view/View;)Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method public static cancelPotentialWork(Ljava/lang/Object;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)Z
    .locals 4
    .param p0, "data"    # Ljava/lang/Object;
    .param p1, "params"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    .prologue
    const/4 v2, 0x1

    .line 324
    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker;->getBitmapWorkerTask(Landroid/view/View;)Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;

    move-result-object v1

    .line 326
    .local v1, "bitmapWorkerTask":Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;
    if-eqz v1, :cond_1

    .line 327
    # getter for: Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->dataString:Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->access$100(Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "bitmapData":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 329
    :cond_0
    invoke-virtual {v1, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 335
    .end local v0    # "bitmapData":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 332
    .restart local v0    # "bitmapData":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cancelWork(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 311
    invoke-static {p0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->getBitmapWorkerTask(Landroid/view/View;)Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 312
    .local v0, "bitmapWorkerTask":Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;
    if-eqz v0, :cond_0

    .line 313
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 315
    :cond_0
    return-void
.end method

.method private static composeDrawable(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "level1"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    .prologue
    const/4 v4, 0x1

    .line 589
    const/4 v2, 0x2

    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    .line 590
    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 591
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->getTintColor()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v1, v4

    .line 592
    aget-object v2, v1, v4

    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->getTintOpacity()F

    move-result v3

    invoke-static {v3}, Lcom/biznessapps/utils/ViewUtils;->getOpacity(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 593
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 594
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private static composeDrawable(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "tint"    # Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    .prologue
    const/4 v4, 0x0

    .line 598
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    .line 599
    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->getTintColor()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v1, v4

    .line 600
    aget-object v2, v1, v4

    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->getTintOpacity()F

    move-result v3

    invoke-static {v3}, Lcom/biznessapps/utils/ViewUtils;->getOpacity(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 601
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 602
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private static getBitmapWorkerTask(Landroid/view/View;)Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 344
    if-eqz p0, :cond_1

    .line 346
    const/4 v1, 0x0

    .line 347
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 348
    check-cast p0, Landroid/widget/ImageView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 352
    :goto_0
    instance-of v2, v1, Lcom/biznessapps/utils/google/caching/ImageWorker$AsyncDrawable;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 353
    check-cast v0, Lcom/biznessapps/utils/google/caching/ImageWorker$AsyncDrawable;

    .line 354
    .local v0, "asyncDrawable":Lcom/biznessapps/utils/google/caching/ImageWorker$AsyncDrawable;
    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$AsyncDrawable;->getBitmapWorkerTask()Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;

    move-result-object v2

    .line 357
    :goto_1
    return-object v2

    .line 350
    .end local v0    # "asyncDrawable":Lcom/biznessapps/utils/google/caching/ImageWorker$AsyncDrawable;
    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 357
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p0    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getCacheKey(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "cacheKey":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getImageType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getSettings()Lcom/biznessapps/api/UiSettings;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getSettings()Lcom/biznessapps/api/UiSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->useBlurEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 454
    .local v1, "useBlur":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BLUR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    :cond_0
    return-object v0

    .line 453
    .end local v1    # "useBlur":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadCallback"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;
    .param p4, "tint"    # Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    .param p5, "imageType"    # I

    .prologue
    .line 101
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 102
    .local v0, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0, p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 103
    invoke-virtual {v0, p3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 104
    invoke-virtual {v0, p4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 105
    invoke-virtual {v0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 107
    invoke-virtual {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 108
    return-void
.end method

.method private setImageBitmap(Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 487
    invoke-virtual {p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getLoadCallback()Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 488
    invoke-virtual {p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getLoadCallback()Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    move-result-object v2

    # getter for: Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->url:Ljava/lang/String;
    invoke-static {p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->access$600(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p3, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 523
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-virtual {p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getTint()Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    move-result-object v1

    .line 493
    .local v1, "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    move-object v0, p1

    .line 494
    check-cast v0, Landroid/widget/ImageView;

    .line 496
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->isImageSrc()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 497
    if-nez p3, :cond_1

    .line 498
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 504
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 499
    :cond_1
    if-eqz v1, :cond_2

    .line 500
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker;->composeDrawable(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 502
    :cond_2
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 506
    :cond_3
    if-nez p3, :cond_4

    .line 507
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 508
    :cond_4
    if-eqz v1, :cond_5

    .line 509
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker;->composeDrawable(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 511
    :cond_5
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 515
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_6
    if-nez p3, :cond_7

    .line 516
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 517
    :cond_7
    if-eqz v1, :cond_8

    .line 518
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker;->composeDrawable(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 520
    :cond_8
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public addImageCache(Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;)V
    .locals 4
    .param p1, "cacheParams"    # Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    .prologue
    const/4 v3, 0x1

    .line 259
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    .line 260
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    iget-object v0, v0, Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;->cacheName:Ljava/lang/String;

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCacheParams:Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageCache;->findOrCreateCache(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;)Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->setImageCache(Lcom/biznessapps/utils/google/caching/ImageCache;)V

    .line 261
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;-><init>(Lcom/biznessapps/utils/google/caching/ImageWorker;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/biznessapps/utils/google/caching/AsyncTask;

    .line 262
    return-void
.end method

.method public clearCache()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 577
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;-><init>(Lcom/biznessapps/utils/google/caching/ImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/biznessapps/utils/google/caching/AsyncTask;

    .line 578
    return-void
.end method

.method protected clearCacheInternal()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageCache;->clearCache()V

    .line 557
    :cond_0
    return-void
.end method

.method public closeCache()V
    .locals 4

    .prologue
    .line 585
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;-><init>(Lcom/biznessapps/utils/google/caching/ImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/biznessapps/utils/google/caching/AsyncTask;

    .line 586
    return-void
.end method

.method protected closeCacheInternal()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageCache;->close()V

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    .line 570
    :cond_0
    return-void
.end method

.method public flushCache()V
    .locals 4

    .prologue
    .line 581
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;-><init>(Lcom/biznessapps/utils/google/caching/ImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lcom/biznessapps/utils/google/caching/AsyncTask;

    .line 582
    return-void
.end method

.method protected flushCacheInternal()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageCache;->flush()V

    .line 563
    :cond_0
    return-void
.end method

.method public getCache()Lcom/biznessapps/utils/google/caching/ImageCache;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    return-object v0
.end method

.method public getImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "cachedBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    invoke-virtual {v1, p1}, Lcom/biznessapps/utils/google/caching/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    if-nez v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    invoke-virtual {v1, p1}, Lcom/biznessapps/utils/google/caching/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    :cond_0
    return-object v0
.end method

.method public getImageFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "cachedBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    invoke-virtual {v1, p1}, Lcom/biznessapps/utils/google/caching/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    :cond_0
    return-object v0
.end method

.method protected initDiskCacheInternal()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    invoke-virtual {v0}, Lcom/biznessapps/utils/google/caching/ImageCache;->initDiskCache()V

    .line 551
    :cond_0
    return-void
.end method

.method public loadAppImage(Ljava/lang/String;Landroid/view/View;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 93
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;I)V

    .line 94
    return-void
.end method

.method public loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 61
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 62
    .local v0, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0, p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 63
    invoke-virtual {v0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 65
    invoke-virtual {v0, p3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setSettings(Lcom/biznessapps/api/UiSettings;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 67
    return-void
.end method

.method public loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;ILcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadCallback"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;
    .param p4, "tint"    # Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    .param p5, "imageType"    # I
    .param p6, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 70
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 71
    .local v0, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0, p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 72
    invoke-virtual {v0, p3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 73
    invoke-virtual {v0, p4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 74
    invoke-virtual {v0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setSettings(Lcom/biznessapps/api/UiSettings;)V

    .line 76
    invoke-virtual {v0, p5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 78
    return-void
.end method

.method public loadBigImage(Ljava/lang/String;Landroid/view/View;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 81
    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;I)V

    .line 82
    return-void
.end method

.method public loadCircledBackground(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 145
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 146
    .local v0, "param":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 151
    return-void
.end method

.method public loadCircledBackground(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadCallback"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    .prologue
    const/4 v1, 0x1

    .line 135
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 136
    .local v0, "param":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 138
    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 140
    invoke-virtual {v0, p3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 142
    return-void
.end method

.method public loadCircledImage(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 154
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 155
    .local v0, "param":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 157
    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 158
    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 161
    return-void
.end method

.method public loadFileImage(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 173
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 174
    .local v0, "param":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 176
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 179
    return-void
.end method

.method public loadFilePreview(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 182
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 183
    .local v0, "param":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 185
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 188
    return-void
.end method

.method public loadGalleryImage(Ljava/lang/String;Landroid/view/View;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 85
    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;I)V

    .line 86
    return-void
.end method

.method public loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V
    .locals 9
    .param p1, "params"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getTint()Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    move-result-object v3

    .line 194
    .local v3, "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getView()Landroid/view/View;

    move-result-object v5

    .line 196
    .local v5, "view":Landroid/view/View;
    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 197
    if-eqz v3, :cond_0

    .line 198
    invoke-static {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker;->composeDrawable(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getLoadCallback()Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 202
    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getLoadCallback()Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    invoke-static {v4, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker;->getCacheKey(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker;->getImageFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 208
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 210
    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getLoadCallback()Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 211
    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getLoadCallback()Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    move-result-object v6

    invoke-interface {v6, v4, v1, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V

    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getView()Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker;->setImageBitmap(Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 215
    :cond_4
    invoke-static {v4, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 216
    new-instance v2, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;

    invoke-direct {v2, p0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;-><init>(Lcom/biznessapps/utils/google/caching/ImageWorker;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 217
    .local v2, "task":Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$AsyncDrawable;

    iget-object v6, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v6, v7, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;)V

    .line 219
    .local v0, "asyncDrawable":Lcom/biznessapps/utils/google/caching/ImageWorker$AsyncDrawable;
    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getView()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_5

    .line 220
    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :goto_1
    sget-object v6, Lcom/biznessapps/utils/google/caching/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v2, v6, v7}, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/biznessapps/utils/google/caching/AsyncTask;

    goto :goto_0

    .line 222
    :cond_5
    invoke-virtual {p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public loadImage(Ljava/lang/String;Landroid/view/View;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 89
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;I)V

    .line 90
    return-void
.end method

.method public loadImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "tint"    # Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    .prologue
    .line 97
    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;I)V

    .line 98
    return-void
.end method

.method public loadRoundedBackground(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadRoundedBackground(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 112
    return-void
.end method

.method public loadRoundedBackground(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadCallback"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    .prologue
    .line 115
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 116
    .local v0, "param":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 118
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 120
    # setter for: Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->loadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;
    invoke-static {v0, p3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->access$002(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    .line 121
    invoke-virtual {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 122
    return-void
.end method

.method public loadRoundedImage(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 125
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 126
    .local v0, "param":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 128
    invoke-virtual {v0, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 129
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 130
    invoke-virtual {v0, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 131
    invoke-virtual {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 132
    return-void
.end method

.method public loadYoutubeImage(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 164
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 165
    .local v0, "param":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 167
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 168
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 170
    return-void
.end method

.method protected abstract processBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;
.end method

.method public setImageCache(Lcom/biznessapps/utils/google/caching/ImageCache;)V
    .locals 0
    .param p1, "imageCache"    # Lcom/biznessapps/utils/google/caching/ImageCache;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;

    .line 274
    return-void
.end method

.method public setLoadingImage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 250
    return-void
.end method

.method public setLoadingImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 240
    return-void
.end method
