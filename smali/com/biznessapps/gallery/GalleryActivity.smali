.class public Lcom/biznessapps/gallery/GalleryActivity;
.super Lcom/biznessapps/common/activities/CommonFragmentActivity;
.source "GalleryActivity.java"


# instance fields
.field private currentPosition:I

.field private galleryData:Lcom/biznessapps/gallery/GalleryData;

.field private imageAdapter:Lcom/biznessapps/common/adapters/AbstractAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/biznessapps/common/adapters/AbstractAdapter",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;"
        }
    .end annotation
.end field

.field private slideshowButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/gallery/GalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/biznessapps/gallery/GalleryActivity;->showPreviewItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/gallery/GalleryActivity;)Lcom/biznessapps/gallery/GalleryData;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryActivity;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/gallery/GalleryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryActivity;

    .prologue
    .line 32
    iget v0, p0, Lcom/biznessapps/gallery/GalleryActivity;->currentPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/biznessapps/gallery/GalleryActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/biznessapps/gallery/GalleryActivity;->currentPosition:I

    return p1
.end method

.method private defineSpecifiImageIndex()V
    .locals 8

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "GALLERY_PRELOAD_IMAGE_EXTRA"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 95
    .local v4, "usePreload":Z
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "ITEM_ID"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "itemId":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    iget-object v5, p0, Lcom/biznessapps/gallery/GalleryActivity;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v5}, Lcom/biznessapps/gallery/GalleryData;->getItems()Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/gallery/GalleryData$Item;

    .line 99
    .local v1, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/biznessapps/gallery/GalleryActivity;->currentPosition:I

    goto :goto_0

    .line 104
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    :cond_1
    return-void
.end method

.method private getCoverFlowAdapter(Landroid/content/Context;)Lcom/biznessapps/common/adapters/AbstractAdapter;
    .locals 6
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/biznessapps/common/adapters/AbstractAdapter",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/biznessapps/gallery/GalleryAdapter;

    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryActivity;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData;->getItems()Ljava/util/List;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$layout;->coverflow_item_layout:I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/biznessapps/gallery/GalleryActivity;->settings:Lcom/biznessapps/api/UiSettings;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/gallery/GalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZLcom/biznessapps/api/UiSettings;)V

    return-object v0
.end method

.method private getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/biznessapps/gallery/GalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/gallery/GalleryActivity$2;-><init>(Lcom/biznessapps/gallery/GalleryActivity;)V

    return-object v0
.end method

.method private showPreviewItems()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/gallery/GalleryPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, "previewIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager;->getInstance()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/gallery/GalleryActivity;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v2}, Lcom/biznessapps/gallery/GalleryData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/gallery/GalleryManager;->setGalleryItems(Ljava/util/List;)V

    .line 127
    const-string v1, "SLIDESHOW_MODE_EXTRA"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Lcom/biznessapps/gallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/biznessapps/layout/R$layout;->gallery_layout:I

    return v0
.end method

.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager;->getInstance()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/gallery/GalleryManager;->getGalleryData()Lcom/biznessapps/gallery/GalleryData;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/gallery/GalleryActivity;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    .line 46
    sget v4, Lcom/biznessapps/layout/R$id;->slideshow_button:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/gallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/biznessapps/gallery/GalleryActivity;->slideshowButton:Landroid/widget/ImageButton;

    .line 47
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryActivity;->slideshowButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 48
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryActivity;->slideshowButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/biznessapps/gallery/GalleryActivity$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/gallery/GalleryActivity$1;-><init>(Lcom/biznessapps/gallery/GalleryActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-direct {p0}, Lcom/biznessapps/gallery/GalleryActivity;->defineSpecifiImageIndex()V

    .line 56
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryActivity;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v4}, Lcom/biznessapps/gallery/GalleryData;->isUseCoverflow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    sget v4, Lcom/biznessapps/layout/R$id;->gallery_view_coverflow:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/gallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/TabGallery;

    .line 58
    .local v1, "coverGallery":Lcom/biznessapps/widgets/TabGallery;
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/biznessapps/gallery/GalleryActivity;->getCoverFlowAdapter(Landroid/content/Context;)Lcom/biznessapps/common/adapters/AbstractAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/gallery/GalleryActivity;->imageAdapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    .line 59
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryActivity;->imageAdapter:Lcom/biznessapps/common/adapters/AbstractAdapter;

    invoke-virtual {v1, v4}, Lcom/biznessapps/widgets/TabGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 60
    iget v4, p0, Lcom/biznessapps/gallery/GalleryActivity;->currentPosition:I

    invoke-virtual {v1, v4}, Lcom/biznessapps/widgets/TabGallery;->setSelection(I)V

    .line 61
    invoke-direct {p0}, Lcom/biznessapps/gallery/GalleryActivity;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/biznessapps/widgets/TabGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    invoke-virtual {v1, v8}, Lcom/biznessapps/widgets/TabGallery;->setVisibility(I)V

    .line 71
    .end local v1    # "coverGallery":Lcom/biznessapps/widgets/TabGallery;
    :goto_0
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryActivity;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v4}, Lcom/biznessapps/gallery/GalleryData;->getBackground()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v3

    .line 73
    .local v3, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryActivity;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v4}, Lcom/biznessapps/gallery/GalleryData;->getBackground()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$id;->gallery_root:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/gallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/gallery/GalleryActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3, v4, v5, v6}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 77
    .end local v3    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :goto_1
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryActivity;->tabId:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/biznessapps/utils/ViewUtils;->showEmailCollectPropmtIfNeeded(Landroid/app/Activity;Ljava/lang/String;)V

    .line 78
    return-void

    .line 64
    :cond_0
    sget v4, Lcom/biznessapps/layout/R$id;->gallery_view:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/gallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 65
    .local v2, "galleryView":Landroid/widget/GridView;
    new-instance v0, Lcom/biznessapps/common/adapters/ImageAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/gallery/GalleryActivity;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v5}, Lcom/biznessapps/gallery/GalleryData;->getItems()Ljava/util/List;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$layout;->gallery_item_layout:I

    iget-object v7, p0, Lcom/biznessapps/gallery/GalleryActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/biznessapps/common/adapters/ImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 66
    .local v0, "adapter":Lcom/biznessapps/common/adapters/ImageAdapter;
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    iget v4, p0, Lcom/biznessapps/gallery/GalleryActivity;->currentPosition:I

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setSelection(I)V

    .line 68
    invoke-direct {p0}, Lcom/biznessapps/gallery/GalleryActivity;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    invoke-virtual {v2, v8}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 75
    .end local v0    # "adapter":Lcom/biznessapps/common/adapters/ImageAdapter;
    .end local v2    # "galleryView":Landroid/widget/GridView;
    :cond_1
    sget v4, Lcom/biznessapps/layout/R$id;->gallery_root:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/gallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/gallery/GalleryActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v4, v5}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    goto :goto_1
.end method
