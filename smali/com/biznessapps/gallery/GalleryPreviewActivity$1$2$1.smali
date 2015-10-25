.class Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;
.super Ljava/lang/Object;
.source "GalleryPreviewActivity.java"

# interfaces
.implements Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->onResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;


# direct methods
.method constructor <init>(Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;->this$2:Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharingCanceled()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;->this$2:Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-virtual {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;->this$2:Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;

    iget-object v1, v1, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v1, v1, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    sget v2, Lcom/biznessapps/layout/R$string;->sharing_canceled:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;->this$2:Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->shareButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$100(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 129
    return-void
.end method

.method public onSharingCompleted(I)V
    .locals 3
    .param p1, "shareType"    # I

    .prologue
    .line 115
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;->this$2:Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-virtual {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;->this$2:Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;

    iget-object v1, v1, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v1, v1, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    sget v2, Lcom/biznessapps/layout/R$string;->photo_saved:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;->this$2:Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->shareButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$100(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 122
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;->this$2:Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-virtual {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;->this$2:Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;

    iget-object v1, v1, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v1, v1, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    sget v2, Lcom/biznessapps/layout/R$string;->sharing_completed:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSharingError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "shareType"    # I
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;->this$2:Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-virtual {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;->this$2:Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;

    iget-object v1, v1, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v1, v1, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    sget v2, Lcom/biznessapps/layout/R$string;->something_went_wrong:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2$1;->this$2:Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$2;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->shareButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$100(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 111
    return-void
.end method
