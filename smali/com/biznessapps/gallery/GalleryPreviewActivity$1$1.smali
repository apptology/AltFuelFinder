.class Lcom/biznessapps/gallery/GalleryPreviewActivity$1$1;
.super Ljava/lang/Object;
.source "GalleryPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/gallery/GalleryPreviewActivity$1;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$1;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1$1;->this$1:Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->shareButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$100(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 96
    return-void
.end method
