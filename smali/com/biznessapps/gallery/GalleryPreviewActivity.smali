.class public Lcom/biznessapps/gallery/GalleryPreviewActivity;
.super Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;
.source "GalleryPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x1388

.field private static final SWITCH_IMAGE_EVENT:I = 0x1


# instance fields
.field private currentPos:I

.field private eventHandler:Landroid/os/Handler;

.field private galleryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

.field private isImageLoaded:Z

.field private isSlideShowMode:Z

.field private ivBackground:Landroid/widget/ImageView;

.field private pagerAdapter:Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;

.field private shareButton:Landroid/widget/ImageView;

.field private vgOverlay:Landroid/view/ViewGroup;

.field private vgRoot:Landroid/view/ViewGroup;

.field private viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;

.field private webViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/widgets/SmartWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;-><init>()V

    .line 53
    iput v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->currentPos:I

    .line 55
    iput-boolean v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->isImageLoaded:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->webViewList:Ljava/util/List;

    .line 301
    new-instance v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$5;

    invoke-direct {v0, p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity$5;-><init>(Lcom/biznessapps/gallery/GalleryPreviewActivity;)V

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->imageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    .line 319
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->pagerAdapter:Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->shareButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->vgOverlay:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->ivBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->vgRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Lcom/biznessapps/widgets/ExtendedViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/gallery/GalleryPreviewActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->galleryItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/gallery/GalleryPreviewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->currentPos:I

    return v0
.end method

.method static synthetic access$502(Lcom/biznessapps/gallery/GalleryPreviewActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->currentPos:I

    return p1
.end method

.method static synthetic access$508(Lcom/biznessapps/gallery/GalleryPreviewActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->currentPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->currentPos:I

    return v0
.end method

.method static synthetic access$600(Lcom/biznessapps/gallery/GalleryPreviewActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->sendChangeImageMessage(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/biznessapps/gallery/GalleryPreviewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->isImageLoaded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/biznessapps/gallery/GalleryPreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$900(Lcom/biznessapps/gallery/GalleryPreviewActivity;Lcom/biznessapps/gallery/GalleryData$Item;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/gallery/GalleryPreviewActivity;
    .param p1, "x1"    # Lcom/biznessapps/gallery/GalleryData$Item;
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->setImage(Lcom/biznessapps/gallery/GalleryData$Item;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private initSlideShow()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$4;

    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/gallery/GalleryPreviewActivity$4;-><init>(Lcom/biznessapps/gallery/GalleryPreviewActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->eventHandler:Landroid/os/Handler;

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->currentPos:I

    .line 281
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->sendChangeImageMessage(I)V

    .line 282
    return-void
.end method

.method private sendChangeImageMessage(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    const/4 v2, 0x1

    .line 289
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->eventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 291
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->eventHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 294
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setImage(Lcom/biznessapps/gallery/GalleryData$Item;Landroid/view/ViewGroup;)V
    .locals 11
    .param p1, "item"    # Lcom/biznessapps/gallery/GalleryData$Item;
    .param p2, "itemContainer"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 192
    sget v3, Lcom/biznessapps/layout/R$id;->progressBar:I

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    .line 193
    .local v9, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual {v9, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 194
    if-eqz p1, :cond_1

    .line 195
    iput-boolean v4, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->isImageLoaded:Z

    .line 197
    sget v3, Lcom/biznessapps/layout/R$id;->preview_image_view:I

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 198
    .local v7, "imageView":Landroid/widget/ImageView;
    sget v3, Lcom/biznessapps/layout/R$id;->gallery_text_preview:I

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/SmartWebView;

    .line 199
    .local v0, "imageTextWebView":Lcom/biznessapps/widgets/SmartWebView;
    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->webViewList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p1}, Lcom/biznessapps/gallery/GalleryData$Item;->getPreviewUrl()Ljava/lang/String;

    move-result-object v10

    .line 202
    .local v10, "url":Ljava/lang/String;
    invoke-virtual {v9, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 203
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v6

    .line 204
    .local v6, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    new-instance v8, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 205
    .local v8, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 206
    invoke-virtual {v8, v10}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v8, v7}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 208
    const/4 v3, 0x3

    invoke-virtual {v8, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 209
    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->imageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    invoke-virtual {v8, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 210
    invoke-virtual {p1}, Lcom/biznessapps/gallery/GalleryData$Item;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v8, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 214
    :cond_0
    invoke-virtual {v0, p1}, Lcom/biznessapps/widgets/SmartWebView;->setTag(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 216
    invoke-virtual {v6, v8}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 217
    invoke-virtual {p1}, Lcom/biznessapps/gallery/GalleryData$Item;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    invoke-virtual {v0, v4}, Lcom/biznessapps/widgets/SmartWebView;->setVisibility(I)V

    .line 220
    invoke-virtual {p1}, Lcom/biznessapps/gallery/GalleryData$Item;->getInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<body>"

    const-string v5, "<body bgcolor=\"#000000\" text=\"#ffffff\">"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "itemInfo":Ljava/lang/String;
    const-string v3, "<p>"

    const-string v4, "<p align=\"center|justify\">"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 222
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/biznessapps/widgets/SmartWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v2    # "itemInfo":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/biznessapps/gallery/GalleryPreviewActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity$2;-><init>(Lcom/biznessapps/gallery/GalleryPreviewActivity;Lcom/biznessapps/widgets/SmartWebView;)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v1, Lcom/biznessapps/gallery/GalleryPreviewActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity$3;-><init>(Lcom/biznessapps/gallery/GalleryPreviewActivity;Lcom/biznessapps/widgets/SmartWebView;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/SmartWebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    .end local v0    # "imageTextWebView":Lcom/biznessapps/widgets/SmartWebView;
    .end local v6    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v7    # "imageView":Landroid/widget/ImageView;
    .end local v8    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v10    # "url":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->updateUI()V

    .line 256
    return-void

    .line 224
    .restart local v0    # "imageTextWebView":Lcom/biznessapps/widgets/SmartWebView;
    .restart local v6    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .restart local v7    # "imageView":Landroid/widget/ImageView;
    .restart local v8    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .restart local v10    # "url":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/SmartWebView;->setVisibility(I)V

    goto :goto_0
.end method

.method private stopSlideShow()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->eventHandler:Landroid/os/Handler;

    .line 286
    return-void
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->shareButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->isImageLoaded:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 298
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 183
    sget v0, Lcom/biznessapps/layout/R$layout;->gallery_preview_layout:I

    return v0
.end method

.method protected hasNavigationMenu()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->initAdsWithAlpha()V

    .line 172
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->webViewList:Ljava/util/List;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->canGoBack(Ljava/util/List;)V

    .line 165
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->webViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;->onBackPressed()V

    .line 167
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager;->getInstance()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/gallery/GalleryManager;->getGalleryItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->galleryItems:Ljava/util/List;

    .line 71
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->galleryItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->galleryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->finish()V

    .line 160
    :goto_0
    return-void

    .line 75
    :cond_1
    sget v0, Lcom/biznessapps/layout/R$id;->share_button:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->shareButton:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->shareButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity$1;-><init>(Lcom/biznessapps/gallery/GalleryPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget v0, Lcom/biznessapps/layout/R$id;->gallery_preview_root:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->vgRoot:Landroid/view/ViewGroup;

    .line 145
    sget v0, Lcom/biznessapps/layout/R$id;->ivBackground:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->ivBackground:Landroid/widget/ImageView;

    .line 146
    sget v0, Lcom/biznessapps/layout/R$id;->vgOverlay:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->vgOverlay:Landroid/view/ViewGroup;

    .line 148
    sget v0, Lcom/biznessapps/layout/R$id;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/ExtendedViewPager;

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;

    .line 149
    new-instance v0, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;-><init>(Lcom/biznessapps/gallery/GalleryPreviewActivity;Lcom/biznessapps/gallery/GalleryPreviewActivity$1;)V

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->pagerAdapter:Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;

    .line 150
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;

    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->pagerAdapter:Lcom/biznessapps/gallery/GalleryPreviewActivity$TouchImageAdapter;

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/ExtendedViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 151
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "gallery_current_position_extra"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->currentPos:I

    .line 152
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;

    iget v1, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->currentPos:I

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/ExtendedViewPager;->setCurrentItem(I)V

    .line 154
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SLIDESHOW_MODE_EXTRA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->isSlideShowMode:Z

    .line 155
    iget-boolean v0, p0, Lcom/biznessapps/gallery/GalleryPreviewActivity;->isSlideShowMode:Z

    if-eqz v0, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->initSlideShow()V

    .line 158
    :cond_2
    invoke-direct {p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->updateUI()V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;->onStop()V

    .line 178
    invoke-direct {p0}, Lcom/biznessapps/gallery/GalleryPreviewActivity;->stopSlideShow()V

    .line 179
    return-void
.end method
