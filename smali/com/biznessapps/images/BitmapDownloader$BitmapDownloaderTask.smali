.class Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;
.super Landroid/os/AsyncTask;
.source "BitmapDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/images/BitmapDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapDownloaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

.field private sampleSize:I

.field final synthetic this$0:Lcom/biznessapps/images/BitmapDownloader;

.field private url:Ljava/lang/String;

.field private useImageReflection:Z

.field private usingParams:Lcom/biznessapps/images/BitmapDownloader$UsingParams;

.field private final viewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/biznessapps/images/BitmapDownloader;Lcom/biznessapps/images/BitmapDownloader$UsingParams;)V
    .locals 2
    .param p2, "usingParams"    # Lcom/biznessapps/images/BitmapDownloader$UsingParams;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->this$0:Lcom/biznessapps/images/BitmapDownloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 602
    iput-object p2, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->usingParams:Lcom/biznessapps/images/BitmapDownloader$UsingParams;

    .line 603
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->viewReference:Ljava/lang/ref/WeakReference;

    .line 604
    invoke-virtual {p2}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->isUseReflection()Z

    move-result v0

    iput-boolean v0, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->useImageReflection:Z

    .line 605
    invoke-virtual {p2}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getCallback()Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->callback:Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

    .line 606
    invoke-virtual {p2}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    .line 607
    invoke-virtual {p2}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getSampleSize()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->sampleSize:I

    .line 608
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 627
    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->this$0:Lcom/biznessapps/images/BitmapDownloader;

    # getter for: Lcom/biznessapps/images/BitmapDownloader;->activeTasks:Ljava/util/List;
    invoke-static {v2}, Lcom/biznessapps/images/BitmapDownloader;->access$000(Lcom/biznessapps/images/BitmapDownloader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->usingParams:Lcom/biznessapps/images/BitmapDownloader$UsingParams;

    invoke-virtual {v2}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getReqHeight()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->usingParams:Lcom/biznessapps/images/BitmapDownloader$UsingParams;

    invoke-virtual {v2}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getReqWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 630
    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->usingParams:Lcom/biznessapps/images/BitmapDownloader$UsingParams;

    invoke-virtual {v2}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->usingParams:Lcom/biznessapps/images/BitmapDownloader$UsingParams;

    invoke-virtual {v3}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getReqWidth()I

    move-result v3

    iget-object v4, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->usingParams:Lcom/biznessapps/images/BitmapDownloader$UsingParams;

    invoke-virtual {v4}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;->getReqHeight()I

    move-result v4

    # invokes: Lcom/biznessapps/images/BitmapDownloader;->decodeSampledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    invoke-static {v2, v3, v4}, Lcom/biznessapps/images/BitmapDownloader;->access$100(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 636
    :goto_0
    iget-boolean v2, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->useImageReflection:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 637
    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->this$0:Lcom/biznessapps/images/BitmapDownloader;

    # invokes: Lcom/biznessapps/images/BitmapDownloader;->createReflectedImages(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v2, v0}, Lcom/biznessapps/images/BitmapDownloader;->access$300(Lcom/biznessapps/images/BitmapDownloader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 641
    .local v1, "resultBitmap":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->this$0:Lcom/biznessapps/images/BitmapDownloader;

    # getter for: Lcom/biznessapps/images/BitmapDownloader;->activeTasks:Ljava/util/List;
    invoke-static {v2}, Lcom/biznessapps/images/BitmapDownloader;->access$000(Lcom/biznessapps/images/BitmapDownloader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 642
    return-object v1

    .line 633
    .end local v1    # "resultBitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->this$0:Lcom/biznessapps/images/BitmapDownloader;

    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    iget v4, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->sampleSize:I

    # invokes: Lcom/biznessapps/images/BitmapDownloader;->downloadBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    invoke-static {v2, v3, v4}, Lcom/biznessapps/images/BitmapDownloader;->access$200(Lcom/biznessapps/images/BitmapDownloader;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 639
    :cond_1
    move-object v1, v0

    .restart local v1    # "resultBitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 588
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    const/4 p1, 0x0

    .line 654
    :cond_0
    if-eqz p1, :cond_2

    .line 655
    new-instance v1, Lcom/biznessapps/images/BitmapWrapper;

    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    invoke-direct {v1, p1, v3}, Lcom/biznessapps/images/BitmapWrapper;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 657
    .local v1, "bitmapWrapper":Lcom/biznessapps/images/BitmapWrapper;
    # invokes: Lcom/biznessapps/images/BitmapDownloader;->getBitmapCacher()Lcom/biznessapps/utils/google/caching/ImageCache;
    invoke-static {}, Lcom/biznessapps/images/BitmapDownloader;->access$400()Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/biznessapps/utils/google/caching/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 659
    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->viewReference:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 660
    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 661
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->this$0:Lcom/biznessapps/images/BitmapDownloader;

    # invokes: Lcom/biznessapps/images/BitmapDownloader;->getBitmapDownloaderTask(Landroid/view/View;)Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;
    invoke-static {v3, v2}, Lcom/biznessapps/images/BitmapDownloader;->access$500(Lcom/biznessapps/images/BitmapDownloader;Landroid/view/View;)Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;

    move-result-object v0

    .line 662
    .local v0, "bitmapDownloaderTask":Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;
    if-eqz v2, :cond_1

    .line 663
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 665
    :cond_1
    if-ne p0, v0, :cond_2

    .line 666
    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->callback:Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

    if-eqz v3, :cond_2

    .line 667
    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->callback:Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

    invoke-virtual {v3, v1, v2}, Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;->onPostImageLoading(Lcom/biznessapps/images/BitmapWrapper;Landroid/view/View;)V

    .line 672
    .end local v0    # "bitmapDownloaderTask":Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;
    .end local v1    # "bitmapWrapper":Lcom/biznessapps/images/BitmapWrapper;
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->this$0:Lcom/biznessapps/images/BitmapDownloader;

    # invokes: Lcom/biznessapps/images/BitmapDownloader;->launchNewTaskIfAllowed()V
    invoke-static {v3}, Lcom/biznessapps/images/BitmapDownloader;->access$600(Lcom/biznessapps/images/BitmapDownloader;)V

    .line 673
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 588
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 616
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 617
    iget-object v0, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->callback:Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/biznessapps/images/BitmapDownloader$BitmapDownloaderTask;->callback:Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;

    invoke-virtual {v0}, Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;->onPreImageLoading()V

    .line 620
    :cond_0
    return-void
.end method
