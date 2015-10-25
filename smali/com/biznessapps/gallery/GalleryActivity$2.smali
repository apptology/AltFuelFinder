.class Lcom/biznessapps/gallery/GalleryActivity$2;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/gallery/GalleryActivity;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
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
    .line 107
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryActivity$2;->this$0:Lcom/biznessapps/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "position"    # J
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
    .line 110
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/biznessapps/gallery/GalleryActivity$2;->this$0:Lcom/biznessapps/gallery/GalleryActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryActivity;->galleryData:Lcom/biznessapps/gallery/GalleryData;
    invoke-static {v2}, Lcom/biznessapps/gallery/GalleryActivity;->access$100(Lcom/biznessapps/gallery/GalleryActivity;)Lcom/biznessapps/gallery/GalleryData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/gallery/GalleryData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/biznessapps/gallery/GalleryActivity$2;->this$0:Lcom/biznessapps/gallery/GalleryActivity;

    long-to-int v3, p4

    # setter for: Lcom/biznessapps/gallery/GalleryActivity;->currentPosition:I
    invoke-static {v2, v3}, Lcom/biznessapps/gallery/GalleryActivity;->access$202(Lcom/biznessapps/gallery/GalleryActivity;I)I

    .line 112
    iget-object v2, p0, Lcom/biznessapps/gallery/GalleryActivity$2;->this$0:Lcom/biznessapps/gallery/GalleryActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryActivity;->galleryData:Lcom/biznessapps/gallery/GalleryData;
    invoke-static {v2}, Lcom/biznessapps/gallery/GalleryActivity;->access$100(Lcom/biznessapps/gallery/GalleryActivity;)Lcom/biznessapps/gallery/GalleryData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/gallery/GalleryData;->getItems()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryActivity$2;->this$0:Lcom/biznessapps/gallery/GalleryActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryActivity;->currentPosition:I
    invoke-static {v3}, Lcom/biznessapps/gallery/GalleryActivity;->access$200(Lcom/biznessapps/gallery/GalleryActivity;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/gallery/GalleryData$Item;

    .line 113
    .local v0, "currentItem":Lcom/biznessapps/gallery/GalleryData$Item;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/biznessapps/gallery/GalleryActivity$2;->this$0:Lcom/biznessapps/gallery/GalleryActivity;

    invoke-virtual {v2}, Lcom/biznessapps/gallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v1, "previewIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager;->getInstance()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryActivity$2;->this$0:Lcom/biznessapps/gallery/GalleryActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryActivity;->galleryData:Lcom/biznessapps/gallery/GalleryData;
    invoke-static {v3}, Lcom/biznessapps/gallery/GalleryActivity;->access$100(Lcom/biznessapps/gallery/GalleryActivity;)Lcom/biznessapps/gallery/GalleryData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/gallery/GalleryData;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/gallery/GalleryManager;->setGalleryItems(Ljava/util/List;)V

    .line 115
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "GALLERY_PREVIEW_FRAGMENT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v2, "gallery_preview_extra"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 117
    const-string v2, "gallery_current_position_extra"

    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryActivity$2;->this$0:Lcom/biznessapps/gallery/GalleryActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryActivity;->currentPosition:I
    invoke-static {v3}, Lcom/biznessapps/gallery/GalleryActivity;->access$200(Lcom/biznessapps/gallery/GalleryActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    iget-object v2, p0, Lcom/biznessapps/gallery/GalleryActivity$2;->this$0:Lcom/biznessapps/gallery/GalleryActivity;

    invoke-virtual {v2, v1}, Lcom/biznessapps/gallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    .end local v0    # "currentItem":Lcom/biznessapps/gallery/GalleryData$Item;
    .end local v1    # "previewIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
