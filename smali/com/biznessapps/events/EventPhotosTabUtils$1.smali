.class final Lcom/biznessapps/events/EventPhotosTabUtils$1;
.super Landroid/os/AsyncTask;
.source "EventPhotosTabUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventPhotosTabUtils;->loadPhotosData(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/biznessapps/gallery/GalleryData$Item;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$cacher:Lcom/biznessapps/api/CachingManager;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$photosLabel:Landroid/widget/TextView;

.field final synthetic val$rootContainer:Landroid/view/ViewGroup;

.field final synthetic val$sharedPhotoTexView:Landroid/widget/TextView;

.field final synthetic val$tabId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/api/CachingManager;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$cacher:Lcom/biznessapps/api/CachingManager;

    iput-object p2, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$eventId:Ljava/lang/String;

    iput-object p3, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$tabId:Ljava/lang/String;

    iput-object p4, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$rootContainer:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$appContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$sharedPhotoTexView:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$photosLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/events/EventPhotosTabUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const-string v2, "photo_list.php?app_code=%s&id=%s&tab_id=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$cacher:Lcom/biznessapps/api/CachingManager;

    invoke-virtual {v5}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$eventId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$tabId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "photoListUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "photoListData":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/json/JsonParser;->parsePhotos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/events/EventPhotosTabUtils$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 61
    const/4 v4, 0x0

    .line 62
    .local v4, "numberOfPhotos":I
    if-eqz p1, :cond_2

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 64
    iget-object v9, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$rootContainer:Landroid/view/ViewGroup;

    sget v10, Lcom/biznessapps/layout/R$id;->gallery_view:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 65
    .local v0, "gallery":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/gallery/GalleryData$Item;

    .line 67
    .local v3, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    iget-object v9, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$appContext:Landroid/content/Context;

    sget v10, Lcom/biznessapps/layout/R$layout;->gallery_item_layout:I

    invoke-static {v9, v10}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 68
    .local v8, "view":Landroid/view/ViewGroup;
    sget v9, Lcom/biznessapps/layout/R$id;->image_view:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/widgets/LoaderImageView;

    .line 69
    .local v2, "imageView":Lcom/biznessapps/widgets/LoaderImageView;
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Lcom/biznessapps/widgets/LoaderImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 70
    invoke-virtual {v3}, Lcom/biznessapps/gallery/GalleryData$Item;->getFullUrl()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "url":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 72
    const-string v9, "?"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 73
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&width=256"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    :cond_0
    :goto_1
    new-instance v5, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 79
    .local v5, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 80
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 81
    invoke-virtual {v5, v7}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 82
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 83
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 84
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 86
    invoke-virtual {v2, v7, v5}, Lcom/biznessapps/widgets/LoaderImageView;->setImageDrawable(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 87
    new-instance v9, Lcom/biznessapps/events/EventPhotosTabUtils$1$1;

    invoke-direct {v9, p0, p1, v3}, Lcom/biznessapps/events/EventPhotosTabUtils$1$1;-><init>(Lcom/biznessapps/events/EventPhotosTabUtils$1;Ljava/util/List;Lcom/biznessapps/gallery/GalleryData$Item;)V

    invoke-virtual {v2, v9}, Lcom/biznessapps/widgets/LoaderImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 75
    .end local v5    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?width=256"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 118
    .end local v0    # "gallery":Landroid/widget/LinearLayout;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imageView":Lcom/biznessapps/widgets/LoaderImageView;
    .end local v3    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/ViewGroup;
    :cond_2
    const-string v6, "%d %s"

    .line 119
    .local v6, "textFormat":Ljava/lang/String;
    iget-object v9, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$sharedPhotoTexView:Landroid/widget/TextView;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$appContext:Landroid/content/Context;

    sget v13, Lcom/biznessapps/layout/R$string;->photos:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v9, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$photosLabel:Landroid/widget/TextView;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/biznessapps/events/EventPhotosTabUtils$1;->val$appContext:Landroid/content/Context;

    sget v13, Lcom/biznessapps/layout/R$string;->photos:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method
