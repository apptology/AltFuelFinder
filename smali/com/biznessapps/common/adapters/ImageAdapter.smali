.class public Lcom/biznessapps/common/adapters/ImageAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "ImageAdapter.java"


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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutItemResourceId"    # I
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;I",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 31
    if-nez p2, :cond_1

    .line 32
    iget-object v6, p0, Lcom/biznessapps/common/adapters/ImageAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/biznessapps/common/adapters/ImageAdapter;->layoutItemResourceId:I

    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 33
    new-instance v0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;

    invoke-direct {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;-><init>()V

    .line 35
    .local v0, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;
    sget v6, Lcom/biznessapps/layout/R$id;->image_view:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v0, v6}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->setLoaderImage(Lcom/biznessapps/widgets/LoaderImageView;)V

    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/adapters/ImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/gallery/GalleryData$Item;

    .line 43
    .local v1, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getFullUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 46
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/UrlWrapper;->getGalleryThumbplayUrlFormat()Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "urlFormat":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getExt()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .end local v4    # "urlFormat":Ljava/lang/String;
    .local v3, "url":Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 55
    .local v2, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->getLoaderImage()Lcom/biznessapps/widgets/LoaderImageView;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 56
    invoke-virtual {v2, v10}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 57
    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 59
    invoke-virtual {v2, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 60
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->getLoaderImage()Lcom/biznessapps/widgets/LoaderImageView;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Lcom/biznessapps/widgets/LoaderImageView;->setImageDrawable(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 62
    .end local v2    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    return-object p2

    .line 38
    .end local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;
    .end local v1    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;

    .restart local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;
    goto :goto_0

    .line 49
    .restart local v1    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    :cond_2
    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getFullUrl()Ljava/lang/String;

    move-result-object v3

    .line 50
    .restart local v3    # "url":Ljava/lang/String;
    const/16 v5, 0x64

    .line 51
    .local v5, "width":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
