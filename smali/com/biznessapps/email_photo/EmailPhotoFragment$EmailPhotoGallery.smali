.class public Lcom/biznessapps/email_photo/EmailPhotoFragment$EmailPhotoGallery;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "EmailPhotoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/email_photo/EmailPhotoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmailPhotoGallery"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/email_photo/EmailPhotoFragment;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$EmailPhotoGallery;->this$0:Lcom/biznessapps/email_photo/EmailPhotoFragment;

    .line 245
    sget v0, Lcom/biznessapps/layout/R$layout;->gallery_item_layout:I

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 246
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 251
    if-nez p2, :cond_0

    .line 252
    iget-object v4, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$EmailPhotoGallery;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/biznessapps/email_photo/EmailPhotoFragment$EmailPhotoGallery;->layoutItemResourceId:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 253
    new-instance v2, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;

    invoke-direct {v2}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;-><init>()V

    .line 255
    .local v2, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;
    sget v4, Lcom/biznessapps/layout/R$id;->image_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v2, v4}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->setLoaderImage(Lcom/biznessapps/widgets/LoaderImageView;)V

    .line 256
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 262
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/email_photo/EmailPhotoFragment$EmailPhotoGallery;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    .local v1, "filePath":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 268
    new-instance v3, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 269
    .local v3, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v2}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->getLoaderImage()Lcom/biznessapps/widgets/LoaderImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 270
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 271
    invoke-virtual {v3, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 272
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 273
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 274
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 275
    invoke-virtual {v2}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->getLoaderImage()Lcom/biznessapps/widgets/LoaderImageView;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/biznessapps/widgets/LoaderImageView;->setImageDrawable(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v3    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :goto_1
    return-object p2

    .line 258
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;

    .restart local v2    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;
    goto :goto_0

    .line 276
    .restart local v1    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/biznessapps/storage/StorageKeeper;->removePhotos(Ljava/lang/String;)V

    goto :goto_1
.end method
