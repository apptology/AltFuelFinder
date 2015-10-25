.class Lcom/biznessapps/events/EventPhotosTabUtils$1$1;
.super Ljava/lang/Object;
.source "EventPhotosTabUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventPhotosTabUtils$1;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/events/EventPhotosTabUtils$1;

.field final synthetic val$item:Lcom/biznessapps/gallery/GalleryData$Item;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/biznessapps/events/EventPhotosTabUtils$1;Ljava/util/List;Lcom/biznessapps/gallery/GalleryData$Item;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1$1;->this$0:Lcom/biznessapps/events/EventPhotosTabUtils$1;

    iput-object p2, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1$1;->val$items:Ljava/util/List;

    iput-object p3, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1$1;->val$item:Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1$1;->this$0:Lcom/biznessapps/events/EventPhotosTabUtils$1;

    iget-object v1, v1, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$appContext:Landroid/content/Context;

    const-class v2, Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "previewIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager;->getInstance()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1$1;->val$items:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/biznessapps/gallery/GalleryManager;->setGalleryItems(Ljava/util/List;)V

    .line 93
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "GALLERY_PREVIEW_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "gallery_preview_extra"

    iget-object v2, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1$1;->val$item:Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 95
    const-string v1, "gallery_current_position_extra"

    iget-object v2, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1$1;->val$items:Ljava/util/List;

    iget-object v3, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1$1;->val$item:Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1$1;->this$0:Lcom/biznessapps/events/EventPhotosTabUtils$1;

    iget-object v1, v1, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method
