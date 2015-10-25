.class Lcom/biznessapps/fan_wall/FanWallFragment$4;
.super Ljava/lang/Object;
.source "FanWallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/FanWallFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

.field final synthetic val$fanWallItem:Lcom/biznessapps/fan_wall/CommentEntity;

.field final synthetic val$uploadImageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/FanWallFragment;Ljava/lang/String;Lcom/biznessapps/fan_wall/CommentEntity;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanWallFragment$4;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    iput-object p2, p0, Lcom/biznessapps/fan_wall/FanWallFragment$4;->val$uploadImageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/biznessapps/fan_wall/FanWallFragment$4;->val$fanWallItem:Lcom/biznessapps/fan_wall/CommentEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 198
    new-instance v0, Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-direct {v0}, Lcom/biznessapps/gallery/GalleryData$Item;-><init>()V

    .line 199
    .local v0, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    iget-object v3, p0, Lcom/biznessapps/fan_wall/FanWallFragment$4;->val$uploadImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/biznessapps/gallery/GalleryData$Item;->setFullUrl(Ljava/lang/String;)V

    .line 200
    iget-object v3, p0, Lcom/biznessapps/fan_wall/FanWallFragment$4;->val$fanWallItem:Lcom/biznessapps/fan_wall/CommentEntity;

    invoke-virtual {v3}, Lcom/biznessapps/fan_wall/CommentEntity;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/biznessapps/gallery/GalleryData$Item;->setInfo(Ljava/lang/String;)V

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager;->getInstance()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/biznessapps/gallery/GalleryManager;->setGalleryItems(Ljava/util/List;)V

    .line 204
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/biznessapps/fan_wall/FanWallFragment$4;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    invoke-virtual {v3}, Lcom/biznessapps/fan_wall/FanWallFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v2, "previewIntent":Landroid/content/Intent;
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "GALLERY_PREVIEW_FRAGMENT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v3, "gallery_preview_extra"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 207
    iget-object v3, p0, Lcom/biznessapps/fan_wall/FanWallFragment$4;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    invoke-virtual {v3, v2}, Lcom/biznessapps/fan_wall/FanWallFragment;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void
.end method
