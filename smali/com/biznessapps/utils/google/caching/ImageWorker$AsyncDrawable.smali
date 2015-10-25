.class Lcom/biznessapps/utils/google/caching/ImageWorker$AsyncDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/google/caching/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncDrawable"
.end annotation


# instance fields
.field private final bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "bitmapWorkerTask"    # Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 471
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    .line 472
    return-void
.end method


# virtual methods
.method public getBitmapWorkerTask()Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageWorker$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/utils/google/caching/ImageWorker$BitmapWorkerTask;

    return-object v0
.end method
