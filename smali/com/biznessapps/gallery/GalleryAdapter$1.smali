.class Lcom/biznessapps/gallery/GalleryAdapter$1;
.super Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;
.source "GalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/gallery/GalleryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/gallery/GalleryAdapter;


# direct methods
.method constructor <init>(Lcom/biznessapps/gallery/GalleryAdapter;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryAdapter$1;->this$0:Lcom/biznessapps/gallery/GalleryAdapter;

    invoke-direct {p0}, Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostImageLoading(Lcom/biznessapps/images/BitmapWrapper;Landroid/view/View;)V
    .locals 2
    .param p1, "bitmapWrapper"    # Lcom/biznessapps/images/BitmapWrapper;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 89
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/biznessapps/images/BitmapWrapper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryAdapter$1;->this$0:Lcom/biznessapps/gallery/GalleryAdapter;

    # getter for: Lcom/biznessapps/gallery/GalleryAdapter;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/biznessapps/gallery/GalleryAdapter;->access$000(Lcom/biznessapps/gallery/GalleryAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 91
    return-void
.end method
