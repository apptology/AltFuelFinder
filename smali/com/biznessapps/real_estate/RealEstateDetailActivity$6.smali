.class Lcom/biznessapps/real_estate/RealEstateDetailActivity$6;
.super Ljava/lang/Object;
.source "RealEstateDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/real_estate/RealEstateDetailActivity;->initGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

.field final synthetic val$item:Lcom/biznessapps/gallery/GalleryData$Item;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;Ljava/util/List;Lcom/biznessapps/gallery/GalleryData$Item;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$6;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    iput-object p2, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$6;->val$items:Ljava/util/List;

    iput-object p3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$6;->val$item:Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$6;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v0, "previewIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager;->getInstance()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$6;->val$items:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/biznessapps/gallery/GalleryManager;->setGalleryItems(Ljava/util/List;)V

    .line 248
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "GALLERY_PREVIEW_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "gallery_preview_extra"

    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$6;->val$item:Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 250
    const-string v1, "gallery_current_position_extra"

    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$6;->val$items:Ljava/util/List;

    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$6;->val$item:Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$6;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-virtual {v1, v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method
