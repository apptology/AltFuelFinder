.class public Lcom/biznessapps/real_estate/RealEstateGallery;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "RealEstateGallery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/gallery/GalleryData$Item;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->gallery_item_layout:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 27
    if-nez p2, :cond_2

    .line 28
    iget-object v5, p0, Lcom/biznessapps/real_estate/RealEstateGallery;->inflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/biznessapps/real_estate/RealEstateGallery;->layoutItemResourceId:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 29
    new-instance v0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;

    invoke-direct {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;-><init>()V

    .line 31
    .local v0, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;
    sget v5, Lcom/biznessapps/layout/R$id;->image_view:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v0, v5}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->setLoaderImage(Lcom/biznessapps/widgets/LoaderImageView;)V

    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    :goto_0
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->getLoaderImage()Lcom/biznessapps/widgets/LoaderImageView;

    move-result-object v1

    .line 38
    .local v1, "imageView":Lcom/biznessapps/widgets/LoaderImageView;
    invoke-virtual {v1, v7, v8}, Lcom/biznessapps/widgets/LoaderImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/biznessapps/real_estate/RealEstateGallery;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/gallery/GalleryData$Item;

    .line 41
    .local v2, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v2}, Lcom/biznessapps/gallery/GalleryData$Item;->getFullUrl()Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "url":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 44
    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&width=256"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    :cond_0
    :goto_1
    new-instance v3, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 51
    .local v3, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v3, v7}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 52
    invoke-virtual {v3, v7}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 53
    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3, v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 55
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 56
    invoke-virtual {v3, v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 58
    invoke-virtual {v1, v4, v3}, Lcom/biznessapps/widgets/LoaderImageView;->setImageDrawable(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 60
    .end local v3    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    return-object p2

    .line 34
    .end local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;
    .end local v1    # "imageView":Lcom/biznessapps/widgets/LoaderImageView;
    .end local v2    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;

    .restart local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;
    goto :goto_0

    .line 47
    .restart local v1    # "imageView":Lcom/biznessapps/widgets/LoaderImageView;
    .restart local v2    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?width=256"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
