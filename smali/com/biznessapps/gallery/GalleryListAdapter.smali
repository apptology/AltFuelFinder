.class public Lcom/biznessapps/gallery/GalleryListAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "GalleryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/flickr/GalleryAlbum;",
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
            "Lcom/biznessapps/flickr/GalleryAlbum;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/GalleryAlbum;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->gallery_album_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 34
    if-nez p2, :cond_3

    .line 35
    iget-object v5, p0, Lcom/biznessapps/gallery/GalleryListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/biznessapps/gallery/GalleryListAdapter;->layoutItemResourceId:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 36
    new-instance v0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;

    invoke-direct {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;-><init>()V

    .line 38
    .local v0, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;
    sget v5, Lcom/biznessapps/layout/R$id;->album_item_title:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 39
    sget v5, Lcom/biznessapps/layout/R$id;->album_item_comment:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->setTextViewComments(Landroid/widget/TextView;)V

    .line 40
    sget v5, Lcom/biznessapps/layout/R$id;->album_item_image:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v0, v5}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->setImageView(Lcom/biznessapps/widgets/LoaderImageView;)V

    .line 41
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->getTextViewComments()Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/gallery/GalleryListAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v6}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/gallery/GalleryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/flickr/GalleryAlbum;

    .line 49
    .local v1, "item":Lcom/biznessapps/flickr/GalleryAlbum;
    if-eqz v1, :cond_2

    .line 50
    const/4 v2, 0x0

    .line 52
    .local v2, "numberOfImages":I
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->getImageView()Lcom/biznessapps/widgets/LoaderImageView;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Lcom/biznessapps/widgets/LoaderImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 53
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->getImageView()Lcom/biznessapps/widgets/LoaderImageView;

    move-result-object v5

    const v6, 0x40ffffff    # 7.9999995f

    invoke-virtual {v5, v6}, Lcom/biznessapps/widgets/LoaderImageView;->setBackgroundColor(I)V

    .line 54
    invoke-virtual {v1}, Lcom/biznessapps/flickr/GalleryAlbum;->getUrls()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/biznessapps/flickr/GalleryAlbum;->getUrls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 55
    invoke-virtual {v1}, Lcom/biznessapps/flickr/GalleryAlbum;->getUrls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 57
    invoke-virtual {v1}, Lcom/biznessapps/flickr/GalleryAlbum;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    invoke-virtual {v1}, Lcom/biznessapps/flickr/GalleryAlbum;->getUrls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "url":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 63
    .restart local v4    # "url":Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 64
    .local v3, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->getImageView()Lcom/biznessapps/widgets/LoaderImageView;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 65
    invoke-virtual {v3, v7}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 66
    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v3, v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 68
    invoke-virtual {v3, v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 70
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->getImageView()Lcom/biznessapps/widgets/LoaderImageView;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/biznessapps/widgets/LoaderImageView;->setImageDrawable(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 73
    .end local v3    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->getTextViewComments()Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/biznessapps/flickr/GalleryAlbum;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v1}, Lcom/biznessapps/flickr/GalleryAlbum;->hasColor()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    invoke-virtual {v1}, Lcom/biznessapps/flickr/GalleryAlbum;->getItemColor()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/biznessapps/gallery/GalleryListAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {v1}, Lcom/biznessapps/flickr/GalleryAlbum;->getItemTextColor()I

    move-result v5

    new-array v6, v8, [Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/gallery/GalleryListAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 80
    .end local v2    # "numberOfImages":I
    :cond_2
    return-object p2

    .line 44
    .end local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;
    .end local v1    # "item":Lcom/biznessapps/flickr/GalleryAlbum;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;

    .restart local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryAdapterItem;
    goto/16 :goto_0
.end method
