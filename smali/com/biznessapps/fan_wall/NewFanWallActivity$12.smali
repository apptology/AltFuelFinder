.class Lcom/biznessapps/fan_wall/NewFanWallActivity$12;
.super Ljava/lang/Object;
.source "NewFanWallActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/NewFanWallActivity;->openPhotosContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

.field final synthetic val$galleryData:Lcom/biznessapps/gallery/GalleryData;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;Lcom/biznessapps/gallery/GalleryData;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$12;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    iput-object p2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$12;->val$galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$12;->val$galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v2}, Lcom/biznessapps/gallery/GalleryData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$12;->val$galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v2}, Lcom/biznessapps/gallery/GalleryData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/gallery/GalleryData$Item;

    .line 473
    .local v0, "currentItem":Lcom/biznessapps/gallery/GalleryData$Item;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$12;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 474
    .local v1, "previewIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager;->getInstance()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$12;->val$galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v3}, Lcom/biznessapps/gallery/GalleryData;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/gallery/GalleryManager;->setGalleryItems(Ljava/util/List;)V

    .line 475
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "GALLERY_PREVIEW_FRAGMENT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v2, "gallery_preview_extra"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 477
    const-string v2, "gallery_current_position_extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    iget-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$12;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-virtual {v2, v1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->startActivity(Landroid/content/Intent;)V

    .line 480
    .end local v0    # "currentItem":Lcom/biznessapps/gallery/GalleryData$Item;
    .end local v1    # "previewIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
