.class Lcom/biznessapps/email_photo/EmailPhotoFragment$1;
.super Ljava/lang/Object;
.source "EmailPhotoFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/email_photo/EmailPhotoFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/email_photo/EmailPhotoFragment;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$1;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 147
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$1;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    invoke-virtual {v5}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v4, "previewIntent":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageKeeper;->getEmailedPhotos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    .local v0, "fileUrl":Ljava/lang/String;
    new-instance v2, Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-direct {v2}, Lcom/biznessapps/gallery/GalleryData$Item;-><init>()V

    .line 151
    .local v2, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    invoke-virtual {v2, v0}, Lcom/biznessapps/gallery/GalleryData$Item;->setFullUrl(Ljava/lang/String;)V

    .line 152
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/biznessapps/gallery/GalleryData$Item;->setIsFile(Z)V

    .line 153
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .end local v0    # "fileUrl":Ljava/lang/String;
    .end local v2    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    :cond_0
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager;->getInstance()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/biznessapps/gallery/GalleryManager;->setGalleryItems(Ljava/util/List;)V

    .line 156
    const-string v5, "TAB_FRAGMENT"

    const-string v6, "GALLERY_PREVIEW_FRAGMENT"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v6, "gallery_preview_extra"

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 158
    const-string v5, "gallery_current_position_extra"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    iget-object v5, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$1;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    invoke-virtual {v5, v4}, Lcom/biznessapps/email_photo/EmailPhotoFragment;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method
