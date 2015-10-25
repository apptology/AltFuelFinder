.class Lcom/biznessapps/gallery/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/gallery/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/gallery/GalleryActivity;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryActivity$1;->this$0:Lcom/biznessapps/gallery/GalleryActivity;

    # invokes: Lcom/biznessapps/gallery/GalleryActivity;->showPreviewItems()V
    invoke-static {v0}, Lcom/biznessapps/gallery/GalleryActivity;->access$000(Lcom/biznessapps/gallery/GalleryActivity;)V

    .line 52
    return-void
.end method
