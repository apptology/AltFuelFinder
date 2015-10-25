.class public Lcom/biznessapps/gallery/GalleryAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "GalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/gallery/GalleryData$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmapDownloader:Lcom/biznessapps/images/BitmapDownloader;

.field private progressBar:Landroid/widget/ProgressBar;

.field private useImageReflection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V
    .locals 1
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
    .line 39
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 36
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getNewImageManager()Lcom/biznessapps/images/NewImageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/images/NewImageManager;->getBitmapDownloader()Lcom/biznessapps/images/BitmapDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryAdapter;->bitmapDownloader:Lcom/biznessapps/images/BitmapDownloader;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZLcom/biznessapps/api/UiSettings;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutItemResourceId"    # I
    .param p4, "useImageReflection"    # Z
    .param p5, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;IZ",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/biznessapps/gallery/GalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 52
    iput-boolean p4, p0, Lcom/biznessapps/gallery/GalleryAdapter;->useImageReflection:Z

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/gallery/GalleryAdapter;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryAdapter;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 58
    if-nez p2, :cond_2

    .line 59
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/biznessapps/gallery/GalleryAdapter;->layoutItemResourceId:I

    const/4 v10, 0x0

    invoke-virtual {v1, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v6, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;

    invoke-direct {v6}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;-><init>()V

    .line 62
    .local v6, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;
    sget v1, Lcom/biznessapps/layout/R$id;->image_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->setImage(Landroid/widget/ImageView;)V

    .line 63
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    sget v1, Lcom/biznessapps/layout/R$id;->progressBar:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/biznessapps/gallery/GalleryAdapter;->progressBar:Landroid/widget/ProgressBar;

    .line 70
    invoke-virtual {p0, p1}, Lcom/biznessapps/gallery/GalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/gallery/GalleryData$Item;

    .line 71
    .local v7, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    if-eqz v7, :cond_1

    .line 73
    invoke-virtual {v7}, Lcom/biznessapps/gallery/GalleryData$Item;->getFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/UrlWrapper;->getGalleryThumbplayUrlFormat()Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "urlFormat":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/biznessapps/gallery/GalleryData$Item;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v5, 0x1

    invoke-virtual {v7}, Lcom/biznessapps/gallery/GalleryData$Item;->getExt()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v5

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "url":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/biznessapps/gallery/GalleryAdapter;->useImageReflection:Z

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&width=460"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .end local v8    # "urlFormat":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryAdapter;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 86
    new-instance v3, Lcom/biznessapps/gallery/GalleryAdapter$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/gallery/GalleryAdapter$1;-><init>(Lcom/biznessapps/gallery/GalleryAdapter;)V

    .line 93
    .local v3, "callback":Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;
    new-instance v0, Lcom/biznessapps/images/BitmapDownloader$UsingParams;

    invoke-virtual {v6}, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->getImage()Landroid/widget/ImageView;

    move-result-object v1

    iget-boolean v5, p0, Lcom/biznessapps/gallery/GalleryAdapter;->useImageReflection:Z

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/images/BitmapDownloader$UsingParams;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;ZZ)V

    .line 94
    .local v0, "params":Lcom/biznessapps/images/BitmapDownloader$UsingParams;
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryAdapter;->bitmapDownloader:Lcom/biznessapps/images/BitmapDownloader;

    invoke-virtual {v1, v0}, Lcom/biznessapps/images/BitmapDownloader;->download(Lcom/biznessapps/images/BitmapDownloader$UsingParams;)V

    .line 96
    .end local v0    # "params":Lcom/biznessapps/images/BitmapDownloader$UsingParams;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "callback":Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;
    :cond_1
    return-object p2

    .line 65
    .end local v6    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;
    .end local v7    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;

    .restart local v6    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;
    goto :goto_0

    .line 80
    .restart local v7    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    :cond_3
    invoke-virtual {v7}, Lcom/biznessapps/gallery/GalleryData$Item;->getFullUrl()Ljava/lang/String;

    move-result-object v2

    .line 81
    .restart local v2    # "url":Ljava/lang/String;
    const/16 v9, 0x64

    .line 82
    .local v9, "width":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "?width="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
