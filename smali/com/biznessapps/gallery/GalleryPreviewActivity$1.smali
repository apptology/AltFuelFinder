.class Lcom/biznessapps/gallery/GalleryPreviewActivity$1;
.super Ljava/lang/Object;
.source "GalleryPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/gallery/GalleryPreviewActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 77
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->pagerAdapter:Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;
    invoke-static {v4}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$000(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 82
    .local v3, "itemContainer":Landroid/view/ViewGroup;
    sget v4, Lcom/biznessapps/layout/R$id;->preview_image_view:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 83
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 86
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    .local v0, "currentBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->shareButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$100(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 89
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-static {v4}, Lcom/biznessapps/utils/ViewUtils;->getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 90
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 92
    new-instance v4, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$1;

    invoke-direct {v4, p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$1;-><init>(Lcom/biznessapps/gallery/GalleryPreviewActivity$1;)V

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    new-instance v6, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;

    invoke-direct {v6, p0, v1, v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;-><init>(Lcom/biznessapps/gallery/GalleryPreviewActivity$1;Landroid/app/ProgressDialog;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5, v6}, Lcom/biznessapps/api/AppCore;->getAppSharingText(Landroid/content/Context;Lcom/biznessapps/api/AsyncCallback;)V

    .line 141
    .end local v0    # "currentBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "dialog":Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method
