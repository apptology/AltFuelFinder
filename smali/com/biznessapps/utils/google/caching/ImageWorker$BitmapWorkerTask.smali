.class Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;
.super Lcom/biznessapps/utils/google/caching/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/google/caching/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/utils/google/caching/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private dataString:Ljava/lang/String;

.field private final imageParams:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;


# direct methods
.method public constructor <init>(Lcom/biznessapps/utils/google/caching/ImageWorker;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V
    .locals 2
    .param p2, "imageParams"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;

    invoke-direct {p0}, Lcom/biznessapps/utils/google/caching/AsyncTask;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->imageParams:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    .line 370
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 371
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->dataString:Ljava/lang/String;

    return-object v0
.end method

.method private getAttachedImageView()Landroid/view/View;
    .locals 3

    .prologue
    .line 439
    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 440
    .local v1, "view":Landroid/view/View;
    # invokes: Lcom/biznessapps/utils/google/caching/ImageWorker;->getBitmapWorkerTask(Landroid/view/View;)Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;
    invoke-static {v1}, Lcom/biznessapps/utils/google/caching/ImageWorker;->access$500(Landroid/view/View;)Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 442
    .local v0, "bitmapWorkerTask":Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;
    if-ne p0, v0, :cond_0

    .line 446
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    return-object v1

    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 378
    aget-object v3, p1, v6

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->dataString:Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    .line 385
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;

    # getter for: Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;
    invoke-static {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker;->access$200(Lcom/biznessapps/utils/google/caching/ImageWorker;)Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;

    # getter for: Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;
    invoke-static {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker;->access$200(Lcom/biznessapps/utils/google/caching/ImageWorker;)Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->dataString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->imageParams:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-virtual {v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getImageType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 393
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 394
    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;

    aget-object v4, p1, v6

    iget-object v5, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->imageParams:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-virtual {v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getImageType()I

    move-result v5

    iget-object v6, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->imageParams:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-virtual {v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getImageFormType()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker;->processBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    :cond_1
    const/4 v2, 0x0

    .line 403
    .local v2, "resultBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->dataString:Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->imageParams:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    # invokes: Lcom/biznessapps/utils/google/caching/ImageWorker;->getCacheKey(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker;->access$300(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "cacheKey":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->imageParams:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-virtual {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getSettings()Lcom/biznessapps/api/UiSettings;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->imageParams:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-virtual {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getSettings()Lcom/biznessapps/api/UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->useBlurEffect()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    invoke-static {v0}, Lcom/biznessapps/utils/BlurEffectUtils;->applyBlurring(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 409
    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;

    # getter for: Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;
    invoke-static {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker;->access$200(Lcom/biznessapps/utils/google/caching/ImageWorker;)Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 410
    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;

    # getter for: Lcom/biznessapps/utils/google/caching/ImageWorker;->mImageCache:Lcom/biznessapps/utils/google/caching/ImageCache;
    invoke-static {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker;->access$200(Lcom/biznessapps/utils/google/caching/ImageWorker;)Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/biznessapps/utils/google/caching/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 413
    :cond_2
    return-object v2

    .line 407
    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    const/4 p1, 0x0

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/view/View;

    move-result-object v0

    .line 429
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 430
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->this$0:Lcom/biznessapps/utils/google/caching/ImageWorker;

    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->imageParams:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    # invokes: Lcom/biznessapps/utils/google/caching/ImageWorker;->setImageBitmap(Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0, v2, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker;->access$400(Lcom/biznessapps/utils/google/caching/ImageWorker;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;Landroid/graphics/Bitmap;)V

    .line 432
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 363
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
