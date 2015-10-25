.class Lcom/biznessapps/golfcourse/HoleDetailFragment$6;
.super Ljava/lang/Object;
.source "HoleDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/HoleDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$6;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 695
    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$6;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHole:Lcom/biznessapps/golfcourse/model/Hole;
    invoke-static {v5}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$500(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v5

    iget-object v5, v5, Lcom/biznessapps/golfcourse/model/Hole;->mapThumbnailUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 696
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$6;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 697
    .local v4, "previewIntent":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$6;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCourse:Lcom/biznessapps/golfcourse/model/Course;
    invoke-static {v5}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$600(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/model/Course;->getHoleList()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 700
    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$6;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCourse:Lcom/biznessapps/golfcourse/model/Course;
    invoke-static {v5}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$600(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/model/Course;->getHoleList()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    .line 702
    .local v0, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    new-instance v2, Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-direct {v2}, Lcom/biznessapps/gallery/GalleryData$Item;-><init>()V

    .line 703
    .local v2, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    iget-object v5, v0, Lcom/biznessapps/golfcourse/model/Hole;->mapThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/biznessapps/gallery/GalleryData$Item;->setFullUrl(Ljava/lang/String;)V

    .line 704
    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$6;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->bgUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$1100(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/biznessapps/gallery/GalleryData$Item;->setBGUrl(Ljava/lang/String;)V

    .line 705
    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$6;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;->getInstance(Landroid/content/Context;)Lcom/biznessapps/golfcourse/model/GolfCourseConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;->useBlurOverlay()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 706
    const/16 v5, 0x5a

    invoke-virtual {v2, v5}, Lcom/biznessapps/gallery/GalleryData$Item;->setBGBlueEffectRadius(I)V

    .line 707
    const v5, -0x50000001

    invoke-virtual {v2, v5}, Lcom/biznessapps/gallery/GalleryData$Item;->setBGOverlayColor(I)V

    .line 709
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/biznessapps/gallery/GalleryData$Item;->setIsFile(Z)V

    .line 710
    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$6;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/biznessapps/golfcourse/model/Hole;->getHoleName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/biznessapps/gallery/GalleryData$Item;->setInfo(Ljava/lang/String;)V

    .line 711
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    .end local v0    # "hole":Lcom/biznessapps/golfcourse/model/Hole;
    .end local v2    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    :cond_1
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager;->getInstance()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/biznessapps/gallery/GalleryManager;->setGalleryItems(Ljava/util/List;)V

    .line 715
    const-string v5, "TAB_FRAGMENT"

    const-string v6, "GALLERY_PREVIEW_FRAGMENT"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const-string v6, "gallery_preview_extra"

    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$6;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I
    invoke-static {v5}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$400(Lcom/biznessapps/golfcourse/HoleDetailFragment;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 717
    const-string v5, "gallery_current_position_extra"

    iget-object v6, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$6;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mHoleNumber:I
    invoke-static {v6}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$400(Lcom/biznessapps/golfcourse/HoleDetailFragment;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    iget-object v5, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$6;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-virtual {v5, v4}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 720
    .end local v1    # "i":I
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    .end local v4    # "previewIntent":Landroid/content/Intent;
    :cond_2
    return-void
.end method
