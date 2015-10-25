.class Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;
.super Lcom/biznessapps/api/AsyncCallback;
.source "GalleryPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/AsyncCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

.field final synthetic val$currentBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/biznessapps/gallery/GalleryPreviewActivity$1;Landroid/app/ProgressDialog;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iput-object p2, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->val$currentBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 136
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->shareButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$100(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-virtual {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 104
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->galleryItems:Ljava/util/List;
    invoke-static {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$300(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v1, v1, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;
    invoke-static {v1}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$200(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Lcom/biznessapps/widgets/ExtendedViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/widgets/ExtendedViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/gallery/GalleryData$Item;

    .line 105
    .local v6, "galleryItem":Lcom/biznessapps/gallery/GalleryData$Item;
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    const/16 v1, 0xef

    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->val$currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Lcom/biznessapps/gallery/GalleryData$Item;->getPreviewUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;-><init>(Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;)V

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;)V

    .line 131
    return-void
.end method
