.class Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter$1;
.super Ljava/lang/Object;
.source "GalleryPreviewActivity.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;

.field final synthetic val$item:Lcom/biznessapps/gallery/GalleryData$Item;


# direct methods
.method constructor <init>(Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;Lcom/biznessapps/gallery/GalleryData$Item;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter$1;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;

    iput-object p2, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter$1;->val$item:Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter$1;->val$item:Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-virtual {v0}, Lcom/biznessapps/gallery/GalleryData$Item;->getBGBlueEffectRadius()I

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter$1;->val$item:Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-virtual {v0}, Lcom/biznessapps/gallery/GalleryData$Item;->getBGBlueEffectRadius()I

    move-result v0

    invoke-static {p2, v0}, Lcom/biznessapps/utils/BlurEffectUtils;->addBlurEffect(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter$1;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->ivBackground:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$1100(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    return-void
.end method
