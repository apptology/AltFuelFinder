.class Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GalleryPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/gallery/GalleryPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchImageAdapter"
.end annotation


# instance fields
.field private mCurrentView:Landroid/view/View;

.field final synthetic this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/biznessapps/gallery/GalleryPreviewActivity;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/gallery/GalleryPreviewActivity;Lcom/biznessapps/gallery/GalleryPreviewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;
    .param p2, "x1"    # Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;-><init>(Lcom/biznessapps/gallery/GalleryPreviewActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 367
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 368
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->galleryItems:Ljava/util/List;
    invoke-static {v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$300(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v6, -0x1

    .line 329
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->galleryItems:Ljava/util/List;
    invoke-static {v4}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$300(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/gallery/GalleryData$Item;

    .line 331
    .local v1, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    sget v5, Lcom/biznessapps/layout/R$layout;->gallery_preview_item_layout:I

    invoke-static {v4, v5}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 333
    .local v2, "itemContainer":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # invokes: Lcom/biznessapps/gallery/GalleryPreviewActivity;->setImage(Lcom/biznessapps/gallery/GalleryData$Item;Landroid/view/ViewGroup;)V
    invoke-static {v4, v1, v2}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$900(Lcom/biznessapps/gallery/GalleryPreviewActivity;Lcom/biznessapps/gallery/GalleryData$Item;Landroid/view/ViewGroup;)V

    .line 334
    invoke-virtual {p1, v2, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 337
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->vgOverlay:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$1000(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getBGOverlayColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 341
    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getBGUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 342
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 343
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    new-instance v3, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 344
    .local v3, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 345
    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getBGUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 346
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->ivBackground:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$1100(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 347
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 348
    new-instance v4, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter$1;-><init>(Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;Lcom/biznessapps/gallery/GalleryData$Item;)V

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 357
    invoke-virtual {v0, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 362
    .end local v0    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v3    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :goto_0
    return-object v2

    .line 359
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->this$0:Lcom/biznessapps/gallery/GalleryPreviewActivity;

    # getter for: Lcom/biznessapps/gallery/GalleryPreviewActivity;->vgRoot:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->access$1200(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 372
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 377
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    iput-object p3, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;->mCurrentView:Landroid/view/View;

    .line 378
    return-void
.end method
