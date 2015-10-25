.class Lcom/biznessapps/gallery/GalleryPreviewActivity$5;
.super Ljava/lang/Object;
.source "GalleryPreviewActivity.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/gallery/GalleryPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/gallery/GalleryPreviewActivity;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$5;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 304
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p3

    .line 305
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 306
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$5;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    const/4 v2, 0x1

    # setter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->isImageLoaded:Z
    invoke-static {v1, v2}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$702(Lcom/biznessapps/gallery/GalleryPreviewActivity;Z)Z

    .line 311
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->progressBar:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 312
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$5;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # invokes: Lcom/biznessapps/gallery/GalleryPreviewActivity;->updateUI()V
    invoke-static {v1}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$800(Lcom/biznessapps/gallery/GalleryPreviewActivity;)V

    .line 315
    return-void

    .line 308
    .end local v0    # "progressBar":Landroid/widget/ProgressBar;
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$5;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    const/4 v2, 0x0

    # setter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->isImageLoaded:Z
    invoke-static {v1, v2}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$702(Lcom/biznessapps/gallery/GalleryPreviewActivity;Z)Z

    goto :goto_0
.end method
